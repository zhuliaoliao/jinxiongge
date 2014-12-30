<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="sidebar-menu">
	<h2 class="menu-category">Navigate</h2>
	<ul class="menu">
		<li class="menu-item"><a class="menu-item-target" href="/jinxiongge/orders/morderspage.do?">全部订单</a></li>
		<li class="menu-item"><a class="menu-item-target"  href="/jinxiongge/orders/morderspage.do?status=0">未发货订单 </a></li>
		<li class="menu-item"><a class="menu-item-target" href="/jinxiongge/orders/morderspage.do?status=1">已发货订单 </a></li>
		<li class="menu-item"><a class="menu-item-target" href="/jinxiongge/goods/mgoodspage.do">所有菜品</a></li>
		<li class="menu-item"><a class="menu-item-target" href="/jinxiongge/manager/addgoods.jsp">新建菜品</a></li>
		<li class="menu-item"><a class="menu-item-target" href="/jinxiongge/user/userspage.do">用户管理</a></li>
		<li class="menu-item"><a class="menu-item-target" href="/jinxiongge/manager/logout.do">退出后台</a></li>
	</ul>
</div>