package com.jinxiongge.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.jinxiongge.common.base.dao.impl.MybatisBaseGenericDAOImpl;
import com.jinxiongge.dao.inter.ShoppingCartItemDao;
import com.jinxiongge.model.Orders;
import com.jinxiongge.model.ShoppingCartItem;


@Transactional  
@Repository("shoppingCartItemDao")  
public class ShoppingCartItemDaoImpl extends MybatisBaseGenericDAOImpl<ShoppingCartItem, Integer> implements ShoppingCartItemDao {
	
	
	public ShoppingCartItemDaoImpl() {
		super();
	}

	@Override
	public Integer batchInsert(List<ShoppingCartItem> items) {
		return insert("batchInsert", items);
	}

	@Override
	public List<ShoppingCartItem> selectItems(int oid) {
		return selectList("commonselect", oid);
	}
	


}
