package com.jinxiongge.dao.inter;

import java.util.Map;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.jinxiongge.model.Goods;
import com.jinxiongge.model.Orders;

public interface OrdersDao {
	/**
	 * 添加订单
	 * @param orders
	 * @return
	 */
	Integer save(Orders orders);
	
	/**
	 * 修改订单
	 * @param orders
	 * @return
	 */
	Integer update(Orders orders);
	
	/**
	 * @param params 参数
	 * @param pageBounds RowBounds
	 * @return
	 */
	PageList<Orders> findPageBy(Map<String, Object> params, PageBounds pageBounds);
	
	/**
	 * 获取orders
	 * @param oid
	 * @return
	 */
	Orders getOrdersByID(int oid);
	
	Integer fahuo(int oid);

}
