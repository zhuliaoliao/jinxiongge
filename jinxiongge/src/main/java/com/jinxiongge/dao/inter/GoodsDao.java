package com.jinxiongge.dao.inter;

import java.util.List;
import java.util.Map;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.jinxiongge.model.Goods;

public interface GoodsDao {
	/**
	 * 添加商品
	 * @param Goods
	 * @return
	 */
	Integer save(Goods goods);
	
	/**
	 * 修改商品
	 * @param Goods
	 * @return
	 */
	Integer update(Goods goods);
	
	/**
	 * 根据gid删除商品
	 * @param gid
	 * @return
	 */
	Integer deleteById(int gid);
	
	/**
	 * 点赞加1
	 * @param gid
	 * @return
	 */
	Integer dianZan(int gid);
	
	/**
	 * 购买数加1
	 * @param gid
	 * @return
	 */
	 Integer addHaveBuy(Map<String, Object> params);
	/**
	 * 获取满足条件的商品数量
	 * @param uid
	 * @return
	 */
	Integer getCountBy(Goods goods);
	
	/**
	 * @param params 参数
	 * @param pageBounds RowBounds
	 * @return
	 */
	PageList<Goods> findPageBy(Map<String, Object> params, PageBounds pageBounds);
	
	/**
	 * @param params 参数
	 * @param pageBounds RowBounds
	 * @return
	 */
	List<Goods> commonPageNoTotalCount(Map<String, Object> params, PageBounds pageBounds);
	
	
	/**
	 * 获取图片
	 * @param gid
	 * @return
	 */
	Goods getPicture(int gid);
	
	/**
	 * 获取Goods
	 * @param gid
	 * @return
	 */
	Goods getGoodsByID(int gid);

}
