package com.jinxiongge.model;

import java.util.List;


/**
 * @author zhull
 *
 */
public class Orders {
	

	//字段与数据库一致
	private int oid;
	private int uid;//用户id，下单用户
	private String addresseename;//收件人
	private String addresseetel;//收件人电话
	private String address;
	private String pay;//付款方式
	private String carry;//运送方式
	private String orderdate;//下单时间
	private double totalprice;//总价
	private String remark;//备注
	private int status=0;//状态，0表示未发货，1表示已发货
	
	//关联查询，不是数据库字段
	private List<ShoppingCartItem> shoppingCartItemlist;//该订单的所有的商品

	
	
	public Orders(int uid, String addresseename, String addresseetel,
			String address, String pay, String carry, String orderdate,
			double totalprice, String remark, int status) {
		super();
		this.uid = uid;
		this.addresseename = addresseename;
		this.addresseetel = addresseetel;
		this.address = address;
		this.pay = pay;
		this.carry = carry;
		this.orderdate = orderdate;
		this.totalprice = totalprice;
		this.remark = remark;
		this.status = status;
	}

	
	public Orders() {
		super();
	}


	
	
	public List<ShoppingCartItem> getShoppingCartItemlist() {
		return shoppingCartItemlist;
	}

	public void setShoppingCartItemlist(List<ShoppingCartItem> shoppingCartItemlist) {
		this.shoppingCartItemlist = shoppingCartItemlist;
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getAddresseename() {
		return addresseename;
	}

	public void setAddresseename(String addresseename) {
		this.addresseename = addresseename;
	}

	public String getAddresseetel() {
		return addresseetel;
	}

	public void setAddresseetel(String addresseetel) {
		this.addresseetel = addresseetel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	public String getCarry() {
		return carry;
	}

	public void setCarry(String carry) {
		this.carry = carry;
	}

	public String getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}

	public double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}



	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Orders [oid=" + oid + ", uid=" + uid + ", addresseename="
				+ addresseename + ", addresseetel=" + addresseetel
				+ ", address=" + address + ", pay=" + pay + ", carry=" + carry
				+ ", orderdate=" + orderdate + ", totalprice=" + totalprice
				+ ", remark=" + remark + ", status=" + status
				+ ", shoppingCartItemlist=" + shoppingCartItemlist + "]";
	}


	
}
