package com.jinxiongge.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.github.miemiedev.mybatis.paginator.domain.Order;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.jinxiongge.common.util.JinXiongGeUtil;
import com.jinxiongge.exception.CommonException;
import com.jinxiongge.exception.ErrorCode;
import com.jinxiongge.model.Goods;
import com.jinxiongge.model.Manager;
import com.jinxiongge.model.User;
import com.jinxiongge.result.model.RtResult;
import com.jinxiongge.service.inter.GoodsService;

/**
 * 商品类
 * @author zll
 *
 */
@Controller
@RequestMapping("goods")
public class GoodsController
{
	private  Logger log = Logger.getLogger(GoodsController.class);
	private GoodsService goodsService;
	
	@Autowired
	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
	
	
	/**
	 * 添加商品
	 * *只有管理员才能操作
	 * @param goods
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/add")
	public ModelAndView add(Goods goods,MultipartFile file,HttpServletRequest request ) {
		
		RtResult result = new RtResult();
		//先判断用户是否登入
		Manager islogined=(Manager) request.getSession().getAttribute("manager");
		if(islogined==null){
			result.setCode(ErrorCode.MANAGER_CODE);
			result.setMessage("请先登入!");
			return new ModelAndView("manager/managerlogin", "result", result);
		}
		String message = "";
		try {
			String time=JinXiongGeUtil.StandardDate2String(new Date());
			goods.setUpdatetime(time);
			goods.setCreatetime(time);
			if(file!=null){
				goods.setPicture(file.getBytes());
			}
			result=goodsService.add(goods);
			if(result.getCode()==0){
				return new ModelAndView("redirect:/goods/mgoodspage.do");
			}
		} catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if (e.getCause() != null) {
				message = e.getCause().toString();
			} else {
				message = e.toString();
			}
		} catch (IOException e) {
			result.setCode(ErrorCode.GOOD_CODE);
			result.setMessage("上传图片失败，请重新尝试!");
			message = e.toString();
		} catch (Exception e) {
			result.setCode(ErrorCode.GOOD_CODE);
			result.setMessage("网络错误,请重试!");
			message = e.toString();
		}
		log.info("message: " + message);
		result.setData(goods);
		return new ModelAndView("manager/addgoods","result", result);//失败重新add
	}
	
	
	/**
	 * 添加商品,更新商品
	 * *只有管理员才能操作
	 * @param goods
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/update")
	public ModelAndView update(Goods goods,MultipartFile file,HttpServletRequest request ) {
		
		RtResult result = new RtResult();
		//先判断用户是否登入
		Manager islogined=(Manager) request.getSession().getAttribute("manager");
		if(islogined==null){
			result.setCode(ErrorCode.MANAGER_CODE);
			result.setMessage("请先登入!");
			return new ModelAndView("manager/managerlogin", "result", result);
		}
		String message = "";
		try {
			goods.setUpdatetime(JinXiongGeUtil.StandardDate2String(new Date()));//修改更新时间
			if(file!=null&&file.getSize()>0){
				goods.setPicture(file.getBytes());
			}
			result=goodsService.update(goods);
			if(result.getCode()==0){
				return new ModelAndView("redirect:/goods/mgoodspage.do");//成功返回首页
			}
		} catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if (e.getCause() != null) {
				message = e.getCause().toString();
			} else {
				message = e.toString();
			}
		} catch (IOException e) {
			result.setCode(ErrorCode.GOOD_CODE);
			result.setMessage("上传图片失败，请重新尝试!");
			message = e.toString();
		} catch (Exception e) {
			result.setCode(ErrorCode.GOOD_CODE);
			result.setMessage("网络错误,请重试!");
			message = e.toString();
		}
		log.info("message: " + message);
		result.setData(goods);
		return new ModelAndView("redirect:goods/goupdate.do?gid="+goods.getGid(),"result", result);//失败重新update
	}
	
	
	
	/**
	 * *只有管理员才能操作
	 * @param gid
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/delete")
	public ModelAndView deleteByGid(int gid,HttpSession session) {
		//先判断用户是否登入
		RtResult result = new RtResult();
		Manager islogined=(Manager) session.getAttribute("manager");
		if(islogined==null){
			result.setCode(ErrorCode.MANAGER_CODE);
			result.setMessage("请先登入!");
			return new ModelAndView("manager/managerlogin", "result", result);
		}
		
		String message = "";
		try {
			result=goodsService.deleteByGid(gid);
		} catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if (e.getCause() != null) {
				message = e.getCause().toString();
			} else {
				message = e.toString();
			}
		} catch (Exception e) {
			result.setCode(ErrorCode.GOOD_CODE);
			result.setMessage("网络错误,请重试!");
			message = e.toString();
		}
		log.info("message: " + message);
		return new ModelAndView("redirect:/goods/mgoodspage.do", "result", result);//返回主键重新删除
	}
	
	/**
	 * *只有管理员才能操作
	 * @param gid
	 * @param session
	 * @return
	 */
	@ResponseBody//该注解是把结果集转json
	@RequestMapping(value = "/dianzan")
	public RtResult dianzan(int gid,HttpSession session) {
		RtResult result = new RtResult();
		// 先判断用户是否登入
		User islogined = (User) session.getAttribute("user");
		if (islogined == null) {
			result.setCode(1);
			result.setMessage("请先登入!");
			return result;
		}
		
		String message = "点赞成功";
		try {
			result=goodsService.dianzan(gid);
		} catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if (e.getCause() != null) {
				message = e.getCause().toString();
			} else {
				message = e.toString();
			}
		} catch (Exception e) {
			result.setCode(ErrorCode.GOOD_CODE);
			result.setMessage("网络错误,请重试!");
			message = e.toString();
		}
		log.info("index: " + message);
		return result;
	}
	
	/**
	 *  分页查找商品
	 * @param page
	 * @param pageSize
	 * @param goodsname
	 * @param specialprice
	 * @param status
	 * 				1，全部商品展示 传status=1，按update desc排序
					2，人气美食(点赞排序) 传status=2，sql 按dianzan desc排序
					3，最新优惠商品展示 传status=3，sql specialprice=yes按update desc排序
					4，商品名搜索 传status=4，sql goodsname=“。。。” 按update desc排序
	 * @param containsTotalCount
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/goodspage")
	public ModelAndView goodspage(
            @RequestParam(required = false,defaultValue = "1") int page,
            @RequestParam(required = false,defaultValue = "16") int pageSize,
            @RequestParam(required = false)String goodsname,
            @RequestParam(required = false)String specialprice,
            @RequestParam(required = false)int status,
            @RequestParam(required = false,defaultValue = "true") Boolean containsTotalCount,HttpSession session) {
		session.setAttribute("status", status);//设置url类别
		if(pageSize>16){
			pageSize=16;
		}
		RtResult result = new RtResult();
		result.setStatus(status);
		String message="";
		try {
			//封装条件
			Map<String, Object> params=null;
			if(StringUtils.isNotBlank(goodsname)){
				params=new HashMap<String, Object>();
				params.put("goodsname", goodsname);
			}else if(StringUtils.isNotBlank(specialprice)){
				params=new HashMap<String, Object>();
				params.put("specialprice", specialprice);
			}
			
			//根据status 封装排序条件
			List<Order> orders = null;
			switch (status) {
			case 1:
				orders=Order.formString("updatetime.desc");//全部商品
				break;
			case 2:
				orders=Order.formString("dianzan.desc,updatetime.desc");//人气美食(点赞排序)
				break;
			case 3:
				orders=Order.formString("updatetime.desc");//最新优惠商品展示
				break;
			case 4:
				orders=Order.formString("updatetime.desc");//全部商品
				break;

			default:
				orders=Order.formString("updatetime.desc");
				break;
			}
			result=goodsService.commonPage(params, new PageBounds(page, pageSize, orders,containsTotalCount));
		    return new ModelAndView("goodsview","goodspage", result.getData());
		}catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if(e.getCause()!=null){
				message=e.getCause().toString();
			}else{
				message=e.toString();
			}
		}catch (Exception e) {
			result.setCode(ErrorCode.GOOD_CODE);
			result.setMessage("网络错误,请重试!");
			message=e.toString();
		}
		log.info("message: "+message);
		return new ModelAndView("goodsview","result",result);
	}
	

	
	@RequestMapping(value = "/picture")
	public void picture(int gid,HttpServletResponse response) {
		RtResult result=goodsService.getPicture(gid);
		if(result.getCode()==0){
			try {
				OutputStream out = response.getOutputStream();
				out.write((byte[])result.getData());
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			} 
		}
	}
	
	@RequestMapping(value = "/goadd")
	public ModelAndView goinsert(HttpServletRequest request ) {
		RtResult result = new RtResult();
		//先判断用户是否登入
		Manager islogined=(Manager) request.getSession().getAttribute("manager");
		if(islogined==null){
			result.setCode(ErrorCode.MANAGER_CODE);
			result.setMessage("请先登入!");
			return new ModelAndView("manager/managerlogin", "result", result);
		}
		return new ModelAndView("manager/addgoods");
	}
	
	@RequestMapping(value = "/goupdate")
	public ModelAndView goupdate(int gid,HttpServletRequest request ) {
		
		RtResult result = new RtResult();
		//先判断用户是否登入
		Manager islogined=(Manager) request.getSession().getAttribute("manager");
		if(islogined==null){
			result.setCode(ErrorCode.MANAGER_CODE);
			result.setMessage("请先登入!");
			return new ModelAndView("manager/managerlogin","result", result);
		}
		
		String message="";
		try {
			result=goodsService.getByID(gid);
			return new ModelAndView("manager/updategoods","goods", result.getData());
		}catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if(e.getCause()!=null){
				message=e.getCause().toString();
			}else{
				message=e.toString();
			}
		}catch (Exception e) {
			result.setCode(ErrorCode.GOOD_CODE);
			result.setMessage("网络错误,请重试!");
			message=e.toString();
		}
		log.info("message: "+message);
		
		return new ModelAndView("redirect:goods/mgoodspage.do","result", result);
	}
	
	
	@RequestMapping(value = "/detail")
	public ModelAndView goodsdetail(int gid,HttpServletRequest request ) {
		
		RtResult result = new RtResult();
		String message="";
		try {
			result=goodsService.getByID(gid);
			return new ModelAndView("goodsdetail","result", result);
		}catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if(e.getCause()!=null){
				message=e.getCause().toString();
			}else{
				message=e.toString();
			}
		}catch (Exception e) {
			result.setCode(ErrorCode.GOOD_CODE);
			result.setMessage("网络错误,请重试!");
			message=e.toString();
		}
		log.info("message: "+message);
		
		return new ModelAndView("redirect:goods/goodspage.do","result", result);
	}
	
	@RequestMapping(value = "/goindex")
	public ModelAndView goindex() {
		RtResult result = new RtResult();
		String message="";
		try {
			Map<String, Object> params=new HashMap<String, Object>();
			params.put("specialprice", "yes");
			result=goodsService.commonPageNoTotalCount(params, new PageBounds(1, 8, Order.formString("updatetime.desc"),true));
			return new ModelAndView("welcome","goodslist", result);
		}catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if(e.getCause()!=null){
				message=e.getCause().toString();
			}else{
				message=e.toString();
			}
		}catch (Exception e) {
			result.setCode(ErrorCode.GOOD_CODE);
			result.setMessage("网络错误,请重试!");
			message=e.toString();
		}
		log.info("message: "+message);
		return new ModelAndView("index","result",result);//重新注册
	}
	
	
	
	@RequestMapping(value = "/mgoodspage")
	public ModelAndView mgoodspage(
            @RequestParam(required = false,defaultValue = "1") int page,
            @RequestParam(required = false,defaultValue = "15") int pageSize,
            @RequestParam(required = false,defaultValue = "true") Boolean containsTotalCount,HttpSession session) {
		if(pageSize>16){
			pageSize=16;
		}
		RtResult result = new RtResult();
		String message="";
		try {
			//根据status 封装排序条件
			result=goodsService.commonPage(null, new PageBounds(page, pageSize, Order.formString("updatetime.desc"),containsTotalCount));
		    return new ModelAndView("manager/managergoodsview","goodspage", result.getData());
		}catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if(e.getCause()!=null){
				message=e.getCause().toString();
			}else{
				message=e.toString();
			}
		}catch (Exception e) {
			result.setCode(ErrorCode.GOOD_CODE);
			result.setMessage("网络错误,请重试!");
			message=e.toString();
		}
		log.info("message: "+message);
		return new ModelAndView("manager/managergoodsview","result",result);
	}
	
	
}
