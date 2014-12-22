package com.jinxiongge.dao.inter;

import java.util.List;
import java.util.Map;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.jinxiongge.model.Orders;
import com.jinxiongge.model.ShoppingCartItem;

public interface ShoppingCartItemDao {
	/**
	 * 添加购物项
	 * @param items
	 * @return
	 */
	Integer batchInsert(List<ShoppingCartItem> items);
	
	
	/**
	 * 根据订单号查询购物项
	 * @param oid
	 * @return
	 */
	List<ShoppingCartItem> selectItems(int oid);
	
	
}
