package com.jinxiongge.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.jinxiongge.common.util.JinXiongGeUtil;
import com.jinxiongge.exception.CommonException;
import com.jinxiongge.exception.ErrorCode;
import com.jinxiongge.model.Manager;
import com.jinxiongge.model.Orders;
import com.jinxiongge.model.ShoppingCartItem;
import com.jinxiongge.model.User;
import com.jinxiongge.result.model.RtResult;
import com.jinxiongge.service.inter.ShoppingOrdersService;

@Controller
@RequestMapping("orders")
public class OrdersController
{
	private  Logger log = Logger.getLogger(OrdersController.class);
	private ShoppingOrdersService shoppingOrdersService;
	
	@Autowired
	public void setShoppingOrdersService(ShoppingOrdersService shoppingOrdersService) {
		this.shoppingOrdersService = shoppingOrdersService;
	}
	
	/**
	 * 把购物车封装成订单orders
	 * @param orders
	 * @param session
	 * @return
	 */
	private Orders generateOrders(Orders orders,HttpSession session){
		Map<Integer,ShoppingCartItem> cartmap=ShoppingCartController.checkCart(session);
		if(cartmap.size()<=0){
			return orders;
		}
		List<ShoppingCartItem> shoppingCartItemlist=null;
		shoppingCartItemlist=new ArrayList<ShoppingCartItem>();
		for (Map.Entry<Integer,ShoppingCartItem> entry:cartmap.entrySet()) {
			shoppingCartItemlist.add(entry.getValue());
		}
		orders.setShoppingCartItemlist(shoppingCartItemlist);//添加购物项
		orders.setUid(((User)session.getAttribute("user")).getUid());//设置用户uid
		orders.setTotalprice(Double.parseDouble(session.getAttribute("totalprice")+""));//设置总价
		orders.setOrderdate(JinXiongGeUtil.StandardDate2String(new Date()));//设置订单时间
		return orders;
	}
	
	/**
	 * 新建订单
	 * @param orders
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/add.do")
	public ModelAndView add(Orders orders,HttpSession session) throws Exception {
		RtResult result = new RtResult();
		orders=generateOrders(orders,session);//从session获取购物车生成订单
		if(orders.getShoppingCartItemlist()==null||orders.getShoppingCartItemlist().size()<=0){
			result.setCode(ErrorCode.ORDER_CODE);
			result.setMessage("请先购买菜品!");
			return new ModelAndView("index","result",result);
		}
		
		String message="";
		try {
			result=shoppingOrdersService.add(orders);
			session.removeAttribute("cartmap");//清空购物车
			session.removeAttribute("totalprice");//清空购物车
//			new ModelAndView("goorders");//跳转到订单
			return new ModelAndView("redirect:/orders/orderspage.do");
		}catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if(e.getCause()!=null){
				message=e.getCause().toString();
			}else{
				message=e.toString();
			}
		}catch (Exception e) {
			result.setCode(ErrorCode.ORDER_CODE);
			result.setMessage("网络错误,请重试!");
			message=e.toString();
		}
		log.info("message: "+message);
		return new ModelAndView("cartitemview","result",result);
	}
	
	@RequestMapping(value = "/update.do")
	public ModelAndView update(Orders orders) throws Exception {
		RtResult result = new RtResult();
		String message="";
		try {
			result=shoppingOrdersService.update(orders);
		}catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if(e.getCause()!=null){
				message=e.getCause().toString();
			}else{
				message=e.toString();
			}
		}catch (Exception e) {
			result.setCode(ErrorCode.ORDER_CODE);
			result.setMessage("网络错误,请重试!");
			message=e.toString();
		}
		log.info("message: "+message);
		return new ModelAndView("managerindex","result",result);
	}
	
	@RequestMapping(value = "/cartitems.do")
	public ModelAndView selectShoppingCartItems(int oid) throws Exception {
		RtResult result = new RtResult();
		String message="";
		try {
			result=shoppingOrdersService.selectShoppingCartItems(oid);
			return new ModelAndView("cartitems","result",result);//跳转展示页面
		}catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if(e.getCause()!=null){
				message=e.getCause().toString();
			}else{
				message=e.toString();
			}
		}catch (Exception e) {
			result.setCode(ErrorCode.ORDER_CODE);
			result.setMessage("网络错误,请重试!");
			message=e.toString();
		}
		log.info("message: "+message);
		return new ModelAndView("managerlogin","result",result);//重新注册
	}
	
	
	@RequestMapping(value = "/orderspage")
	public ModelAndView ordersPage(
		@RequestParam(required = false,defaultValue = "1") int page,
		@RequestParam(required = false,defaultValue = "10") int pageSize,
		@RequestParam(required = false,defaultValue = "true") Boolean containsTotalCount,
		HttpSession session) {
		if(pageSize>10){
			pageSize=10;
		}
		RtResult result = new RtResult();
		String message="";
		// 先判断用户是否登入
		User islogined = (User) session.getAttribute("user");
		if (islogined == null) {
			result.setCode(ErrorCode.USER_CODE);
			message="请先登入！";
			result.setMessage(message);
			return new ModelAndView("ordersview","result", result);
		}
		
		try {
			Map<String, Object> params=new HashMap<String, Object>();
			params.put("uid", islogined.getUid());
			
			result=shoppingOrdersService.findPageBy(params, new PageBounds(page, pageSize, null,containsTotalCount));
			return new ModelAndView("ordersview","orderspage", result.getData());
		}catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if(e.getCause()!=null){
				message=e.getCause().toString();
			}else{
				message=e.toString();
			}
		}catch (Exception e) {
			result.setCode(ErrorCode.ORDER_CODE);
			result.setMessage("网络错误,请重试!");
			message=e.toString();
		}
		log.info("message: "+message);
		return new ModelAndView("ordersview","result", result);
	}
	
	/**
	 * 管理员查找订单
	 * @param page
	 * @param pageSize
	 * @param containsTotalCount
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/morderspage")
	public ModelAndView ordersPageManager(
			@RequestParam(required = false,defaultValue = "1") int page,
			@RequestParam(required = false,defaultValue = "15") int pageSize,
			@RequestParam(required = false)String addresseetel,//按收件人电话查找订单
			@RequestParam(required = false) String status,//按订单状态查找 0表示未发货，1表示已发货
			@RequestParam(required = false,defaultValue = "true") Boolean containsTotalCount,
			HttpSession session) {
		session.setAttribute("status",status);
		if(pageSize>15){
			pageSize=15;
		}
		RtResult result = new RtResult();
		String message="";
		// 先判断用户是否登入
		Manager islogined = (Manager) session.getAttribute("manager");
		if (islogined == null) {
			result.setCode(ErrorCode.USER_CODE);
			message="请先登入！";
			result.setMessage(message);
			return new ModelAndView("manager/managerlogin");
		}
		
		try {
			//封装条件
			Map<String, Object> params=null;
			if(StringUtils.isNotBlank(addresseetel)){
				params=new HashMap<String, Object>();
				params.put("addresseetel", addresseetel);
			}else if(StringUtils.isNotBlank(status)){
				params=new HashMap<String, Object>();
				params.put("status", status);
			}
			
			result=shoppingOrdersService.findPageBy(params, new PageBounds(page, pageSize, null,containsTotalCount));
			return new ModelAndView("manager/managerindex","orderspage", result.getData());
		}catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if(e.getCause()!=null){
				message=e.getCause().toString();
			}else{
				message=e.toString();
			}
		}catch (Exception e) {
			result.setCode(ErrorCode.ORDER_CODE);
			result.setMessage("网络错误,请重试!");
			message=e.toString();
		}
		log.info("message: "+message);
		return new ModelAndView("manager/managerindex","result", result);
	}

	
	/**
	 * *只有管理员才能操作
	 * @param gid
	 * @param session
	 * @return
	 */
	@ResponseBody//该注解是把结果集转json
	@RequestMapping(value = "/fahuo")
	public RtResult dianzan(int oid,HttpSession session) {
		RtResult result = new RtResult();
		String message = "发货成功";
		// 先判断用户是否登入
		Manager islogined = (Manager) session.getAttribute("manager");
		if (islogined == null) {
			result.setCode(ErrorCode.USER_CODE);
			message="请先登入！";
			result.setMessage(message);
			return result;
		}
		try {
			result=shoppingOrdersService.fahuo(oid);
		} catch (CommonException e) {
			result.setCode(e.getCode());
			result.setMessage(e.getMessage());
			if (e.getCause() != null) {
				message = e.getCause().toString();
			} else {
				message = e.toString();
			}
		} catch (Exception e) {
			result.setCode(ErrorCode.ORDER_CODE);
			result.setMessage("网络错误,请重试!");
			message = e.toString();
		}
		log.info("index: " + message);
		return result;
	}
}
