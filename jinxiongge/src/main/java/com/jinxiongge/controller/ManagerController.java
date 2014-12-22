package com.jinxiongge.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jinxiongge.common.util.Encryption;
import com.jinxiongge.exception.CommonException;
import com.jinxiongge.model.Manager;
import com.jinxiongge.model.User;
import com.jinxiongge.result.model.RtResult;
import com.jinxiongge.service.impl.ManagerServiceImpl;
import com.jinxiongge.service.inter.ManagerService;

@Controller
@RequestMapping("manager")
public class ManagerController
{
	private  Logger log = Logger.getLogger(ManagerController.class);
	private ManagerService managerService;
	
	@Autowired
	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}

	/**
	 * 登陆成功，用户存session返回首页，否则重新登入
	 * @param loginManager
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/login")
	public ModelAndView login(Manager manager,HttpSession session) {
		
		RtResult result = new RtResult();
		String message = "";
		try {
			result = managerService.login(manager.getPwd());
			if(result.getCode()==0){//存在manager
				Manager man=(Manager)result.getData();
				if(man.getPwd().equals(manager.getPwd())){//判断密码是否相等
					session.setAttribute("manager", man);
					return new ModelAndView("redirect:/orders/morderspage.do");//返回首页
				}else{
					result.setMessage("密码错误");
				}
			}
		} catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if (e.getCause() != null) {
				message = e.getCause().toString();
			} else {
				message = e.toString();
			}
		} catch (Exception e) {
			result.setCode(40);
			result.setMessage("网络错误,请重试!");
			message = e.toString();
		}
		log.info("message: " + message);
		return new ModelAndView("manager/managerlogin","result", result);//login again
	}
	
	
	/**
	 * 管理员注销，清空session
	 * 
	 * @param loginUser
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpSession session) {
		session.removeAttribute("manager");
		session = null;
		return new ModelAndView("manager/managerlogin");
	}



}
