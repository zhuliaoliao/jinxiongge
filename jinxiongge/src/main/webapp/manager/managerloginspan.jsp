<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<script type="text/javascript" src="/jinxiongge/js/dianzan.js"></script>
<script type="text/javascript" src="/jinxiongge/js/addcart.js"></script>
<script type="text/javascript" src="/jinxiongge/js/updatecart.js"></script>

<div class="my-account-quicklinks"  >
					<ul class="list-inline list-inline-divide">

						<li class="list-item">Hello <c:out value="${sessionScope.manager.username}"  escapeXml="false" default="Guest"/> !</li>

						 <c:if test="${sessionScope.manager.username!=null}">
							<li class="list-item">
								<a class="list-item-target" href="/jinxiongge/manager/logout.do">退出</a>
							</li>
						</c:if>
						 <c:if test="${sessionScope.manager.username==null}">
							<li class="list-item">
								<a class="list-item-target" href="/jinxiongge/manager/managerlogin.jsp" data-toggle="modal" >登录</a>
							</li>
						</c:if>
						
						<!-- <li class="list-item">
						<form action="/jinxiongge/goods/goodspage.do?status=4" method="post">
								<input type="text" name="goodsname" size="15"/>
								<input type="submit" value="菜品搜索"/>
						</form>
							</li> -->
					</ul>
</div>