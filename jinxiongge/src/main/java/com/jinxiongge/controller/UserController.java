package com.jinxiongge.controller;

import javax.servlet.http.HttpServletRequest;
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
import com.jinxiongge.exception.ErrorCode;
import com.jinxiongge.model.User;
import com.jinxiongge.result.model.RtResult;
import com.jinxiongge.service.inter.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	private  Logger log = Logger.getLogger(UserController.class);
	private UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	/**
	 * 密码加密，注册成功，用户存session，返回首页，否则重新注册
	 * 
	 * @param user
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/regist")
	public ModelAndView regist(User user, HttpSession session) {
		RtResult result = new RtResult();
		String message = "";
		try {
			user.setPwd(Encryption.generatePassword(user.getPwd()));// 加密
			result = userService.register(user);
			if (result.getCode() == 0) {
				session.setAttribute("user", user);// user存session
				return new ModelAndView("index");// 登入返回首页
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
			result.setCode(ErrorCode.USER_CODE);
			result.setMessage("网络错误,请重试!");
			message = e.toString();
		}
		log.info("message: " + message);
		return new ModelAndView("registuser", "result", result);// 重新注册
	}

	/**
	 * 登陆成功，用户存session返回首页，否则重新登入
	 * 
	 * @param loginUser
	 * @param session
	 * @return
	 */
//	@ResponseBody
	@RequestMapping(value = "/login")
	public ModelAndView login(User loginUser, HttpSession session) {
		RtResult result = new RtResult();
		String message = "";
		try {
			String telname = loginUser.getUsername();
			if (StringUtils.isBlank(telname)) {
				telname = loginUser.getTel();
			}
			result = userService.login(telname);
			if (result.getCode() == 0) {// 存在用户
				User user = (User) result.getData();
				if (Encryption.validatePassword(user.getPwd(), loginUser.getPwd())) {// 判断密码是否相等
					session.setAttribute("user", user);
					result.setMessage("登陆成功");
					return new ModelAndView("index");// 登入返回首页
				}else{
					result.setCode(ErrorCode.USER_CODE);
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
			result.setCode(ErrorCode.USER_CODE);
			result.setMessage("网络错误,请重试!");
			message = e.toString();
		}
		log.info("message: " + message);
		return new ModelAndView("index", "result", result);// 重新登入	
//		return result;
	}

	/**
	 * 注册用户时判断username或tel是否已注册
	 * 
	 * @param loginUser
	 * @param session
	 * @return
	 */
	@ResponseBody// 该注解是把结果集转json
	@RequestMapping(value = "/isexist")
	public RtResult checkNameAndTel(User loginUser, HttpServletRequest request) {
		RtResult result = new RtResult();
		String message = "";
		try {
			String telname = loginUser.getUsername();
			if (StringUtils.isBlank(telname)) {
				telname = loginUser.getTel();
			}
			if(StringUtils.isBlank(telname)){
				result.setCode(0);
				result.setMessage("对不起，请输入内容");
				return result;
			}
			
			result = userService.login(telname);
			if (result.getCode() == 0) {// 存在用户
				result.setMessage("已存在,请更换!");
				return result;
			} else {
				result.setMessage("恭喜您,可以使用");
				return result;
			}
		} catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage("网络错误,请稍后再试!");
			if (e.getCause() != null) {
				message = e.getCause().toString();
			} else {
				message = e.toString();
			}
		} catch (Exception e) {
			result.setCode(ErrorCode.USER_CODE);
			result.setMessage("网络错误,请稍后再试!");
			message = e.toString();
		}
		log.info("message: " + message);
		return result;
	}

	/**
	 * 用户注销，清空session
	 * 
	 * @param loginUser
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpSession session) {
		session.removeAttribute("user");
		session = null;
		return new ModelAndView("index");
	}

	/**
	 * 更新用户(uid)替换session，返回首页，否则重新修改
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/update")
	public ModelAndView update(User user, HttpSession session) {
		RtResult result = new RtResult();
		String message = "";
		try {
			// 先判断用户是否登入
			User islogined = (User) session.getAttribute("user");
			if (islogined == null) {
				result.setCode(ErrorCode.USER_CODE);
				message="请先登入！";
				result.setMessage(message);
				return new ModelAndView("edituser", "result", result);
			}
			// todo js校验必须传一个username或tel
			user.setPwd(Encryption.generatePassword(user.getPwd()));// 加密
			result = userService.update(user);
			if (result.getCode() == 0) {
				// 存session
				session.setAttribute("user", (User) result.getData());
				return new ModelAndView("edituser", "result", result);// 登入返回首页
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
			result.setCode(ErrorCode.USER_CODE);
			result.setMessage("网络错误,请重试!");
			message = e.toString();
		}
		log.info("message: " + message);
		return new ModelAndView("edituser", "result", result);// 重新注册
	}
	
	@RequestMapping(value = "/goregist")
	public ModelAndView goRegist() {
		return new ModelAndView("registuser","message","您不是管理员！");
	}

	/*
	 * 现在不需要
	 * 
	 * @RequestMapping(value = "/delete") public ModelAndView deleteByUid(int
	 * uid,HttpSession session) { //先判断用户是否登入 User islogined=(User)
	 * session.getAttribute("user"); if(islogined==null){ return new
	 * ModelAndView("login","message","请先登入！"); }else
	 * if("admin".equals(islogined.getUsername())){ return new
	 * ModelAndView("indmanage","message","您不是管理员！"); }
	 * 
	 * //todo js校验必须传一个username或tel RtResult
	 * result=userService.deleteByUid(uid); if(result.getCode()==0){
	 * //从session删除已删除的uid，所有用户存map return new ModelAndView("indmanage","users",
	 * result.getData());//登入返回首页 }else{ return new
	 * ModelAndView("regorup","users", result.getData());//重新注册 } }
	 */



}
