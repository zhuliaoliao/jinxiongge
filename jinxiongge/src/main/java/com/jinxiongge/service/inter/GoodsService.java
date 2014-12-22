package com.jinxiongge.service.inter;

import java.util.Map;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.jinxiongge.exception.CommonException;
import com.jinxiongge.model.Goods;
import com.jinxiongge.result.model.RtResult;

public interface GoodsService {

	/**
	 * 添加商品
	 * @param goods
	 * @return
	 */
	RtResult add(Goods goods) throws CommonException;
	
	
	/**
	 * 删除商品
	 * @param gid
	 * @return
	 */
	RtResult deleteByGid(int gid) throws CommonException;
	
	/**
	 *获取图片
	 * @param gid
	 * @return
	 */
	RtResult getPicture(int gid) throws CommonException;
	
	/**
	 * 更新商品，附上原数据
	 * @param Goods
	 * @return
	 */
	RtResult update(Goods goods) throws CommonException;
	
	/**
	 * 更新商品，附上原数据
	 * @param Goods
	 * @return
	 */
	RtResult dianzan(int gid) throws CommonException;
	
	RtResult addHaveBuy(Map<String, Object> params) throws CommonException;
	
	/**
	 * 条件查询商品数量
	 * @param Goods
	 * @return
	 */
	RtResult getCountBy(Goods goods) throws CommonException;
	
	/**
	 * 商品分页
	 * @param 
	 * @return
	 */
	RtResult commonPage(Map<String, Object> params, PageBounds pageBounds) throws CommonException;
	/**
	 * 商品分页
	 * @param 
	 * @return
	 */
	RtResult commonPageNoTotalCount(Map<String, Object> params, PageBounds pageBounds) throws CommonException;
	
	
	/**
	 * gid获取商品
	 * @param 
	 * @return
	 */
	RtResult getByID(int gid) throws CommonException;
}
