package com.jinxiongge.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jinxiongge.exception.ErrorCode;
import com.jinxiongge.model.ShoppingCartItem;
import com.jinxiongge.model.User;
import com.jinxiongge.result.model.RtResult;

/**
 * 购物车操作类
 * @author zll
 *
 */
@Controller
@RequestMapping("shoppingcart")
public class ShoppingCartController
{

	//返回购物车列表，没有就创建,key为gid
	@SuppressWarnings("unchecked")
	public static Map<Integer,ShoppingCartItem> checkCart(HttpSession session){
		Map<Integer,ShoppingCartItem> cartmap=(Map<Integer,ShoppingCartItem>) session.getAttribute("cartmap");
		if(cartmap==null){
			cartmap= new HashMap<Integer,ShoppingCartItem>();
			session.setAttribute("cartmap", cartmap);
		}
		return cartmap;
	}
	//计算总价
	public static void totalprice(HttpSession session){
		double totalprice=0;
		Map<Integer,ShoppingCartItem> cartmap=checkCart(session);
		if(cartmap.size()>0){
			for (Map.Entry<Integer,ShoppingCartItem> entry:cartmap.entrySet()){
				totalprice+=entry.getValue().getItemTotalPrice();
			}
		}
		session.setAttribute("totalprice", totalprice);
	}
	
	/**
	 * ajax请求
	 * 添加商品到购物车
	 * @return
	 */
	@ResponseBody//该注解是把结果集转json
	@RequestMapping(value = "/add")
	public RtResult add(ShoppingCartItem cartItem,HttpSession session ) {
		RtResult result = new RtResult();
		result.setCode(0);
		String message="";
		try{
			// 先判断用户是否登入
			User islogined = (User) session.getAttribute("user");
			if (islogined == null) {
				result.setCode(ErrorCode.USER_CODE);
				result.setMessage("请先登入!");
				return result;
			}
			Map<Integer, ShoppingCartItem> cartmap = checkCart(session);// 获取购物车
			if (cartmap.containsKey(cartItem.getGid())) {
				ShoppingCartItem item = cartmap.get(cartItem.getGid());
				item.setGoodscount(item.getGoodscount() + cartItem.getGoodscount());// 如果存在就加数量
			} else {
				// 如果不存在就加入购物车
				cartmap.put(cartItem.getGid(), cartItem);
			}
			totalprice(session);
			
			message = "成功加入购物车";
		}catch(Exception e){
			result.setCode(ErrorCode.CART_CODE);
			message="网络问题，加入购物车失败，请重新加入！";
		}
		result.setMessage(message);
		return result;
	}
	
	
	/**
	 * ajax请求
	 * 从购物车修改商品（数量）
	 * @return
	 */
	@ResponseBody//该注解是把结果集转json
	@RequestMapping(value = "/update")
	public RtResult update(int gid, String flag,HttpSession session ) {
		RtResult result = new RtResult();
		result.setCode(0);
		String message="";
		try{
			// 先判断用户是否登入
			User islogined = (User) session.getAttribute("user");
			if (islogined == null) {
				result.setCode(ErrorCode.USER_CODE);
				result.setMessage("请先登入!");
				return result;
			}
			ShoppingCartItem item=checkCart(session).get(gid);
			message = "修改成功";
			if(item==null){
				result.setMessage(message);
				return result;
			}
			if("add".equals(flag)){
				item.setGoodscount(item.getGoodscount()+1);
			}else if("reduce".equals(flag)){
				item.setGoodscount(item.getGoodscount()-1);
				if(item.getGoodscount()<=0){
					checkCart(session).remove(gid);
					message = "修改成功,count=0,已删除";
				}
			}
			totalprice(session);
		}catch(Exception e){
			result.setCode(ErrorCode.CART_CODE);
			message="网络问题，修改失败，请重新操作！";
		}
		result.setMessage(message);
		return result;
	}
	
	/**
	 * ajax请求
	 * 从购物车删除该商品
	 * @return
	 */
	@ResponseBody//该注解是把结果集转json
	@RequestMapping(value = "/delete")
	public RtResult delete(int gid,HttpSession session ) {
		RtResult result = new RtResult();
		result.setCode(0);
		String message="";
		try{
			// 先判断用户是否登入
			User islogined = (User) session.getAttribute("user");
			if (islogined == null) {
				result.setCode(ErrorCode.USER_CODE);
				result.setMessage("请先登入!");
				return result;
			}
			Map<Integer, ShoppingCartItem> cartmap = checkCart(session);// 获取购物车
			if (cartmap.containsKey(gid)) {
				cartmap.remove(gid);//删除该商品
					message = "成功删除!";
			} else {
				message = "购物车不存在该商品!";
			}
			totalprice(session);
		}catch(Exception e){
			result.setCode(ErrorCode.CART_CODE);
			message="网络问题，修改失败，请重新操作！";
		}
		result.setMessage(message);
		return result;
	}
	
	
	
	
	
	
}
