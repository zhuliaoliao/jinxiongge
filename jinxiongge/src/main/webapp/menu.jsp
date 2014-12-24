<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="global-navbar navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<a class="navbar-brand wos-brand" href="/jinxiongge/goods/goindex.do">
					 <img src="/jinxiongge/image/mcdelivery_logo_zh.jpg" alt="McDelivery&amp;trade;">
					</a>
				</div>
				<div class="main-navigation clearfix">
					<ul class="nav navbar-nav">
						
						
						<li class="menu-item menu-item-account dropdown">
							<a class="menu-item-target dropdown-toggle" href="" data-toggle="dropdown">
								繁华订餐 
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
							
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target" href="/jinxiongge/goods/goodspage.do?status=1">所有美食</a>
								</li>
								
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target" href="/jinxiongge/goods/goodspage.do?specialprice=yes&status=3">最新优惠</a>
								</li>
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target" href="/jinxiongge/goods/goodspage.do?status=2">人气美食</a>
								</li>
								
							</ul>
						</li>

                
						<li class="menu-item menu-item-support">
							<a class="menu-item-target" href="/jinxiongge/edituser.jsp">
								我的账户
							</a>
						</li>
						<li class="menu-item menu-item-support">
							<a class="menu-item-target" href="/jinxiongge/orders/orderspage.do">
								我的订单
							</a>
						</li>
						<li class="menu-item menu-item-support">
							<a class="menu-item-target" href="/jinxiongge/cartitemview.jsp">
								购物车
							</a>
						</li>
					</ul>
				</div>
			</div>