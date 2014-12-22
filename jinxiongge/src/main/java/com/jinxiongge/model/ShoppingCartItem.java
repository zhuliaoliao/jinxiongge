package com.jinxiongge.model;

/**
 * 购物车bean，不需要存数据库
 * @author zhull
 *
 */
public class ShoppingCartItem {
	
	
	private int ogid;//购物车商品id
	private int oid;//订单id
	private int gid;//商品id
	private String goodsname;//商品名
	private double goodsprice;//商品单价
	private int goodscount=1;//该商品项的购买数，默认一件
	private double itemTotalPrice;//该商品项的总价goodsprice*goodscount
	
	
	public ShoppingCartItem(int oid, int gid, String goodsname,
			double goodsprice, int goodscount, double itemTotalPrice) {
		super();
		this.oid = oid;
		this.gid = gid;
		this.goodsname = goodsname;
		this.goodsprice = goodsprice;
		this.goodscount = goodscount;
		this.itemTotalPrice = itemTotalPrice;
	}

	public ShoppingCartItem(){}

	public int getOgid() {
		return ogid;
	}

	public void setOgid(int ogid) {
		this.ogid = ogid;
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public String getGoodsname() {
		return goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public double getGoodsprice() {
		return goodsprice;
	}

	public void setGoodsprice(double goodsprice) {
		this.goodsprice = goodsprice;
	}

	public int getGoodscount() {
		return goodscount;
	}

	public void setGoodscount(int goodscount) {
		this.goodscount = goodscount;
	}

	public double getItemTotalPrice() {
		return goodsprice*goodscount;
	}

	public void setItemTotalPrice(double itemTotalPrice) {
		this.itemTotalPrice = itemTotalPrice;
	}

	@Override
	public String toString() {
		return "ShoppingCartItem [ogid=" + ogid + ", oid=" + oid + ", gid="
				+ gid + ", goodsname=" + goodsname + ", goodsprice="
				+ goodsprice + ", goodscount=" + goodscount
				+ ", itemTotalPrice=" + itemTotalPrice + "]";
	}

}
