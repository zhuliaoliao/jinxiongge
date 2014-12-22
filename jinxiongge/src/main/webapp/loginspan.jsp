<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<script type="text/javascript" src="/jinxiongge/js/dianzan.js"></script>
<script type="text/javascript" src="/jinxiongge/js/addcart.js"></script>
<script type="text/javascript" src="/jinxiongge/js/updatecart.js"></script>
<script type="text/javascript" src="/jinxiongge/js/checknameandtel.js"></script>

<div class="my-account-quicklinks"  >
<form action="/jinxiongge/goods/goodspage.do?status=4" method="post" >
					<ul class="list-inline list-inline-divide">

						<li class="list-item">Hello <c:out value="${sessionScope.user.username}"  escapeXml="false" default="Guest"/> !</li>

						 <c:if test="${sessionScope.user.username!=null}">
							<li class="list-item">
								<a class="list-item-target" href="/jinxiongge/user/logout.do">退出</a>
							</li>
						</c:if>
						
						 <c:if test="${sessionScope.user.username==null}">
							<li class="list-item">
								<a class="list-item-target" href="#signin" data-toggle="modal" data-target="#signin">登录</a>
							</li>
						</c:if>
						
						<li class="list-item">
								<a class="list-item-target" data-toggle="modal" href="/jinxiongge/manager/managerlogin.jsp" >后台管理</a>
							</li>
						
						
						<li class="list-item">
						
								<input type="text" name="goodsname" size="10"/>
								<input type="submit" value="菜品搜索"/>
							</li>
							
							
					</ul>
						</form>
</div>