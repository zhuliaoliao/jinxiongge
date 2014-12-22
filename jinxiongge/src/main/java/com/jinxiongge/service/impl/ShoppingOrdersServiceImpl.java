package com.jinxiongge.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.jinxiongge.dao.inter.GoodsDao;
import com.jinxiongge.dao.inter.OrdersDao;
import com.jinxiongge.dao.inter.ShoppingCartItemDao;
import com.jinxiongge.exception.CommonException;
import com.jinxiongge.exception.ErrorCode;
import com.jinxiongge.model.Orders;
import com.jinxiongge.model.ShoppingCartItem;
import com.jinxiongge.result.model.RtResult;
import com.jinxiongge.service.inter.ShoppingOrdersService;
/**
 * 订单操作类，事物采用配置方式（非注解）
 * @author zll
 *
 */

@Service("shoppingOrdersService")
public class ShoppingOrdersServiceImpl implements ShoppingOrdersService {

	private  Logger log = Logger.getLogger(ShoppingOrdersServiceImpl.class);

	private OrdersDao ordersDao;
	private GoodsDao goodsDao;
	private ShoppingCartItemDao shoppingCartItemDao;

	@Autowired
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}
	@Autowired
	public void setOrdersDao(OrdersDao ordersDao) {
		this.ordersDao = ordersDao;
	}
	@Autowired
	public void setShoppingCartItemDao(ShoppingCartItemDao shoppingCartItemDao) {
		this.shoppingCartItemDao = shoppingCartItemDao;
	}

	@Transactional
	public RtResult add(Orders orders) throws CommonException{
		RtResult result = new RtResult();
		try{
			ordersDao.save(orders);
			List<ShoppingCartItem> items=orders.getShoppingCartItemlist();
			if(items!=null&&items.size()>0){
				Map<String, Object> params=new HashMap<String, Object>();
				for(ShoppingCartItem item:items){
					item.setOid(orders.getOid());//设置购物项的订单号
					params.put("gid", item.getGid());
					params.put("havebuy", item.getGoodscount());
					goodsDao.addHaveBuy(params);//修改购买数
				}
				shoppingCartItemDao.batchInsert(items);
			}
			
			result.setCode(0);
			result.setMessage("添加订单成功");
		}catch (Exception e) {
			throw new CommonException(ErrorCode.ORDER_CODE, "添加订单未成功,事物回滚",e);
		}
		return result;
	}
	
	
	
	@Override
	public RtResult findPageBy(Map<String, Object> params,PageBounds pageBounds) throws CommonException {
		RtResult result = new RtResult();
		try {
			PageList<Orders> pageList=ordersDao.findPageBy(params, pageBounds);//查找订单
			if(pageList.size()>0){
				List<ShoppingCartItem> shoppingCartItems =null;
				for (Orders order:pageList) {
					shoppingCartItems= shoppingCartItemDao.selectItems(order.getOid());
					order.setShoppingCartItemlist(shoppingCartItems);//设置购物项
				}
			}
			result.setCode(0);
		    if(pageList!=null && pageList.size()>0){
				result.setData(pageList);
			}else{
				result.setMessage("未查找到符合条件的订单!");
			}
			log.info("订单查找信息:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.ORDER_CODE, "条件查找到订单出错",e);
		}
		return result;
	}
	
	
	@Override
	public RtResult selectShoppingCartItems(int oid)  throws CommonException{
		RtResult result = new RtResult();
		try {
			List<ShoppingCartItem> shoppingCartItems = shoppingCartItemDao.selectItems(oid);
			result.setCode(0); 
			if (shoppingCartItems!=null && shoppingCartItems.size() > 0) {
				result.setMessage("查找到订单号为:"+oid+" 购买的所有商品！");
				result.setData(shoppingCartItems);
			} else {
				result.setMessage("该订单商品为空!");
			}
			log.info("查看订单商品信息:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.ORDER_CODE, "查找订单号为:"+oid+" 所有时商品出错",e);
		}
		return result;
	}
	@Override
	public RtResult update(Orders orders)  throws CommonException{
		RtResult result = new RtResult();
		try {
			Integer count = ordersDao.update(orders);
			if (count > 0) {
				result.setCode(0);
				result.setMessage("修改订单成功");
			} else {
				result.setCode(40);
				result.setMessage("修改订单失败");
			}
			log.info("修改订单信息:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.ORDER_CODE, "修改订单出错",e);
		}
		return result;
	}
	
	

	@Override
	public RtResult fahuo(int oid) throws CommonException {
		RtResult result = new RtResult();
		try {
			Integer count=ordersDao.fahuo(oid);
			if(count!=null&&count>0){
				result.setCode(0);
				result.setMessage("发货成功! ");
			}else{
				result.setCode(ErrorCode.ORDER_CODE);
				result.setMessage("发货失败! ");
			}
			log.info("发货信息:" + result);
		} catch (Exception e) {
			throw new CommonException(ErrorCode.ORDER_CODE, "商品 oid="+oid+" 发货失败",e);
		}
		return result;
	}
}
