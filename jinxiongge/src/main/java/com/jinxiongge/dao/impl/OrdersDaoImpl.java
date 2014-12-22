package com.jinxiongge.dao.impl;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.jinxiongge.common.base.dao.impl.MybatisBaseGenericDAOImpl;
import com.jinxiongge.dao.inter.OrdersDao;
import com.jinxiongge.model.Orders;


  
@Repository("ordersDao")  
public class OrdersDaoImpl extends MybatisBaseGenericDAOImpl<Orders, Integer> implements OrdersDao {
	
	
	public OrdersDaoImpl() {
		super();
	}
	
	
	@Override
	public Integer save(Orders ob) {
		return super.save(ob);
	}
	
	@Override
	public Integer update(Orders ob) {
		return super.update(ob);
	}
	
	@Override
	public PageList<Orders> findPageBy(Map<String, Object> params, PageBounds pageBounds) {
	    return commonPage("findPageBy", params, pageBounds);
	}

	@Override
	public Orders getOrdersByID(int oid) {
		return getById(oid);
	}
	
	@Override
	public Integer fahuo(int oid) {
		return super.update("fahuo", oid) ;
	}

}
