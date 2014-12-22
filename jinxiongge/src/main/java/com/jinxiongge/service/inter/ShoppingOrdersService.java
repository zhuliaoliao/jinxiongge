package com.jinxiongge.service.inter;

import java.util.Map;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.jinxiongge.exception.CommonException;
import com.jinxiongge.model.Orders;
import com.jinxiongge.result.model.RtResult;

public interface ShoppingOrdersService {

	/**
	 * 事物添加订单
	 * @param orders
	 * @return
	 */
	RtResult add(Orders orders)throws CommonException;
	
	/**
	 * 条件查询订单，分页
	 * @param params 参数
	 * @param pageBounds 分页参数
	 * @return
	 */
	RtResult findPageBy(Map<String, Object> params, PageBounds pageBounds) throws CommonException;
	
	
	/**
	 * 查询某订单的购买的商品
	 * @param uid
	 * @return
	 */
	RtResult selectShoppingCartItems(int oid) throws CommonException;
	

	/**
	 * 管理员修改订单（发货状态）
	 * @param Goods
	 * @return
	 */
	RtResult update(Orders orders) throws CommonException;
	
	RtResult fahuo(int oid) throws CommonException;
	
}
