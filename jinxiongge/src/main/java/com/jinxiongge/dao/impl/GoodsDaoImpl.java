package com.jinxiongge.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.jinxiongge.common.base.dao.impl.MybatisBaseGenericDAOImpl;
import com.jinxiongge.dao.inter.GoodsDao;
import com.jinxiongge.model.Goods;


@Transactional  
@Repository("goodsDao")  
public class GoodsDaoImpl extends MybatisBaseGenericDAOImpl<Goods, Integer> implements GoodsDao {
	
	
	public GoodsDaoImpl() {
		super();
	}
	
	
	@Override
	public Integer save(Goods ob) {
		return super.save(ob);
	}
	
	@Override
	public Integer update(Goods ob) {
		return super.update(ob);
	}
	

	@Override
	public PageList<Goods> findPageBy(Map<String, Object> params, PageBounds pageBounds) {
	    return commonPage("findPageBy", params, pageBounds);
	    
	}


	@Override
	public Integer deleteById(int gid) {
		return super.deleteById(gid);
	}


	@Override
	public Integer getCountBy(Goods goods) {
		return super.getCountBy(goods);
	}


	@Override
	public Goods getPicture(int gid) {
		return (Goods) selectOne("getPicture", gid);
	}


	@Override
	public Goods getGoodsByID(int gid) {
		return getById(gid);
	}


	@Override
	public Integer dianZan(int gid) {
		return super.update("dianzan", gid) ;
	}
	
	@Override
	public Integer addHaveBuy(Map<String, Object> params) {
		return super.update("addhavebuy", params) ;
	}


	@Override
	public List<Goods> commonPageNoTotalCount(Map<String, Object> params,
			PageBounds pageBounds) {
		return commonPageNoTotalCount("findPageBy", params, pageBounds);
	}



}
