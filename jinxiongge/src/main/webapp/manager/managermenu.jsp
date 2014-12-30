<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="global-navbar navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<a class="navbar-brand wos-brand" href="#">
						<img src="/jinxiongge/image/mcdelivery_logo_zh.jpg" alt="McDelivery&amp;trade;">
					</a>
				</div>
				<div class="main-navigation clearfix">
					<ul class="nav navbar-nav">
						
						
						<li class="menu-item menu-item-account dropdown">
							<a class="menu-item-target dropdown-toggle" href="" data-toggle="dropdown">
								订单处理
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
							
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target" href="/jinxiongge/orders/morderspage.do?">所有订单</a>
								</li>
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target" href="/jinxiongge/orders/morderspage.do?status=1">已处理订单</a>
								</li>
								
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target" href="/jinxiongge/orders/morderspage.do?status=0">未处理订单</a>
								</li>
								
							</ul>
						</li>
						<li class="menu-item menu-item-account dropdown">
							<a class="menu-item-target dropdown-toggle" href="" data-toggle="dropdown">
								菜品处理
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
							
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target" href="/jinxiongge/goods/mgoodspage.do">已发布菜品</a>
								</li>
								
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target" href="/jinxiongge/manager/addgoods.jsp">发布新菜品</a>
								</li>
								
							</ul>
						</li>
						
						<li class="menu-item menu-item-support">
							<a class="menu-item-target dropdown-toggle" href="/jinxiongge/user/userspage.do" >
								用户管理
							</a>
						</li>

                
					</ul>
				</div>
			</div>