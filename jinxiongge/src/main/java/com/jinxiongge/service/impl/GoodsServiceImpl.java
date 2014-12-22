package com.jinxiongge.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.jinxiongge.dao.inter.GoodsDao;
import com.jinxiongge.exception.CommonException;
import com.jinxiongge.exception.ErrorCode;
import com.jinxiongge.model.Goods;
import com.jinxiongge.result.model.RtResult;
import com.jinxiongge.service.inter.GoodsService;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

	private  Logger log = Logger.getLogger(GoodsServiceImpl.class);

	private GoodsDao goodsDao;

	@Autowired
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}

	@Override
	public RtResult add(Goods goods)  throws CommonException{
		RtResult result = new RtResult();
		try {
			Integer count = goodsDao.save(goods);
			if (count > 0) {
				result.setCode(0);
				result.setMessage("添加商品成功");
				result.setData(goods);
			} else {
				result.setCode(ErrorCode.GOOD_CODE);
				result.setMessage("添加商品失败");
			}
			log.info("添加商品信息:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.GOOD_CODE, "添加商品失败",e);
		}
		return result;
	}
	



	/**分页案例
	 *  new PageBounds();//默认构造函数不提供分页，返回ArrayList
		new PageBounds(int limit);//取TOPN操作，返回ArrayList
		new PageBounds(Order... order);//只排序不分页，返回ArrayList
		new PageBounds(int page, int limit);//默认分页，返回PageList
		new PageBounds(int page, int limit, Order... order);//分页加排序，返回PageList
		new PageBounds(int page, int limit, List<Order> orders, boolean containsTotalCount);//使用containsTotalCount来决定查不查询totalCount，即返回ArrayList还是PageList
	 */
	@Override
	public RtResult commonPage(Map<String, Object> params, PageBounds pageBounds)  throws CommonException{

		RtResult result = new RtResult();
		try {
			PageList<Goods>  pageList = goodsDao.findPageBy( params, pageBounds);
			
			 if(pageList!=null && pageList.size()>0){
					result.setCode(0);
					result.setMessage("条件查找到商品!");
					result.setData(pageList);
				}else{
					result.setCode(ErrorCode.GOOD_CODE);
					result.setMessage("未查找到符合条件的商品!");
				}
				log.info("商品查找信息:" + result);
			
		} catch (Exception e) {
			throw new CommonException(ErrorCode.GOOD_CODE, "条件查找到商品失败",e);
		}
		return result;
	}

	

	@Override
	public RtResult deleteByGid(int gid)  throws CommonException{
		RtResult result = new RtResult();
		try {
			Integer count=goodsDao.deleteById(gid);
			if(count!=null&&count>0){
				result.setCode(0);
				result.setMessage("成功删除商品 gid:"+gid);
			}else{
				result.setCode(ErrorCode.GOOD_CODE);
				result.setMessage("未查找到商品! gid="+gid);
			}
			log.info("商品查找信息:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.GOOD_CODE, "商品 gid="+gid+" 删除失败",e);
		}
		return result;
	}

	@Override
	public RtResult update(Goods goods) throws CommonException {
		RtResult result = new RtResult();
		try {
			Integer count=goodsDao.update(goods);
			if(count>0){
				result.setCode(0);
				result.setMessage("成功修改商品:"+goods);
				result.setData(goods);
			}else{
				result.setCode(ErrorCode.GOOD_CODE);
				result.setMessage("修改商品失败:"+goods);
			}
			log.info("商品查找信息:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.GOOD_CODE, "修改商品失败",e);
		}
		return result;
	}

	@Override
	public RtResult getCountBy(Goods goods)  throws CommonException{
		RtResult result = new RtResult();
		try {
			Integer count=goodsDao.getCountBy(goods);
				result.setCode(0);
				result.setMessage("满足条件的商品有:"+count);
			log.info("满足条件的商品有:"+result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.GOOD_CODE, "查找满足条件的商品数失败",e);
		}
		return result;
	}

	
	@Override
	public RtResult getPicture(int gid)  throws CommonException{
		RtResult result = new RtResult();
		try {
			Goods goods=goodsDao.getPicture(gid);
			if(goods!=null){
				if(goods.getPicture()!=null){
					result.setCode(0);
					result.setData(goods.getPicture());
					result.setMessage("成功获取图片 gid:"+gid);
				}else{
					result.setCode(1);
					result.setMessage("该商品没有上传图片 gid:"+gid);
				}
			}else{
				result.setCode(ErrorCode.GOOD_CODE);
				result.setMessage("未获取到图片gid="+gid);
			}
			log.info("商品查找信息:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.GOOD_CODE, "获取到图片失败 gid: "+gid,e);
		}
		return result;
	}
	
	@Override
	public RtResult getByID(int gid) throws CommonException {
		RtResult result = new RtResult();
		try {
			Goods goods= goodsDao.getGoodsByID(gid);
			if (goods !=null) {
				result.setCode(0);
				result.setMessage("找到商品");
				result.setData(goods);
			} else {
				result.setCode(ErrorCode.GOOD_CODE);
				result.setMessage("未找到商品");
			}
			log.info("商品信息:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.GOOD_CODE, "查找商品失败 gid: "+gid,e);
		}
		return result;
	}

	@Override
	public RtResult dianzan(int gid) throws CommonException {
		RtResult result = new RtResult();
		try {
			Integer count=goodsDao.dianZan(gid);
			if(count!=null&&count>0){
				result.setCode(0);
				result.setMessage("点赞成功! ");
			}else{
				result.setCode(ErrorCode.GOOD_CODE);
				result.setMessage("点赞失败! ");
			}
			log.info("点赞信息:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.GOOD_CODE, "商品 gid="+gid+" 点赞失败",e);
		}
		return result;
	}
	@Override
	public RtResult addHaveBuy(Map<String, Object> params) throws CommonException {
		RtResult result = new RtResult();
		try {
			Integer count=goodsDao.addHaveBuy(params);
			if(count!=null&&count>0){
				result.setCode(0);
				result.setMessage("购买数修改成功! ");
			}else{
				result.setCode(ErrorCode.GOOD_CODE);
				result.setMessage("购买数修改失败! ");
			}
			log.info("购买数修改信息:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.GOOD_CODE, "商品购买数修改失败",e);
		}
		return result;
	}

	@Override
	public RtResult commonPageNoTotalCount(Map<String, Object> params,
			PageBounds pageBounds) throws CommonException {

		RtResult result = new RtResult();
		try {
			List<Goods>  list = goodsDao.commonPageNoTotalCount( params, pageBounds);
			
			 if(list!=null && list.size()>0){
					result.setCode(0);
					result.setMessage("条件查找到商品!");
					result.setData(list);
				}else{
					result.setCode(ErrorCode.GOOD_CODE);
					result.setMessage("未查找到符合条件的商品!");
				}
				log.info("商品查找信息:" + result);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException(ErrorCode.GOOD_CODE, "条件查找到商品失败",e);
		}
		return result;
	}

}
