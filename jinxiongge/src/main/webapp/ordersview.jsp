<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!-- saved from url=(0040)https://www.4008-517-517.cn/cn/home.html -->
<html class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths no-ieolderthan9"><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 		
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta charset="utf-8">
        <meta http-equiv="Pragma" content="no-cache">
        <meta http-equiv="Cache-Control" content="no-cache,no-Store">
        <title>缸鸭狗</title>
        <meta name="description" content="">
 		<!-- -->
   		<link rel="stylesheet" href="/jinxiongge/css/main.css">
   		<link rel="stylesheet" href="/jinxiongge/css/local.css">
		
		
		<script type="text/javascript" src="/jinxiongge/js/modernizr.min.js"></script>
		
		<script type="text/javascript" src="/jinxiongge/js/jquery.min.js"></script>   
		
			<script type="text/javascript">var _gaq = _gaq || [];_gaq.push(['_setAccount', 'UA-24138769-1']);_gaq.push(['_trackPageview']);(function(){var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);})();</script>
		
    	 
    </head>

<body class="country-86 lang-zh page-account-order-history page-account">

<c:if test="${result.message!=null}">
	<script type="text/javascript" >alert('${result.message}');</script>
</c:if>
			
<!--[if lt IE 9]>
            <p id="outdated" class="browsehappy">您目前使用的浏览器版本过低，为保证您正常浏览网页，请<a href="http://browsehappy.com/?locale=zh" target="_blank">升级</a>至最新版本。</p>
<![endif]-->
<!-- TODO: Please add the following line -->
	
		
		<script type="text/javascript"></script>
		
<div class="root">
	<div class="wrap container">
		<div class="global-header">
			<div class="header-actions row">
			<jsp:include page="loginspan.jsp"/>
			</div>
			<jsp:include page="menu.jsp"></jsp:include>
			
			<!-- Start of Session time out warning -->
				<div class="alert alert-warning alert-dismissable inline-alert type-flama hidden" data-content-timer="60000" data-delay-show="900000">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
							<p> 请在<span data-countdown-redirect-url="# " data-countdown-time="900" class="text-primary timer"></span>内提交订单，以免购物车清空。加油哦！</p>
				</div>		
			<!-- End of Session time out warning -->
		</div>
			<div class="main" role="main">
				<div class="row row-narrow">
					<div class="page-sidebar">
						<jsp:include page="navigate.jsp"></jsp:include>
					</div>
					
					<div class="col-xs-10 type-flama">
		<div class="page-title">
			<h1>订餐记录</h1>
		</div>
		<div class="row type-sans">
			<div class="col-xs-6"><p>您的订单：</p></div>
		</div>
		<div class="page-content">
		
		 
				<div class="panel-group type-flama order-history accordion">
				
				
			<!-- for循环 -->			
	<c:if test="${orderspage!=null}">
	
	<c:forEach items="${orderspage}" var="item">				
				
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row collapse-row">
							<div class="collapse-col col-xs-1">
							<a data-toggle="collapse" class="btn btn-red accordion-state collapsed accordion-state-collapsed" data-target="#order-${item.oid}" aria-expanded="false"> 展开 </a>
							
							
							</div>
							<div class="collapse-col col-xs-7 date">下单时间: ${item.orderdate} </div>
							<div class="collapse-col col-xs-2">状态: 
							<c:if test="${item.status==0}">未发货</c:if>
							<c:if test="${item.status==1}">已发货</c:if>
							 </div>
							<div class="collapse-col col-xs-2 total">总计:</div>
							<div class="collapse-col col-xs-2 price text-right"><span>¥${item.totalprice}</span></div>
						</div>
					</div>
					<div class="order-history-collapse panel-body collapse" id="order-${item.oid}" aria-expanded="false" style="height: 0px;">
						<div>
							<div class="col-xs-3 order-history-detail">
								<table class="table-default table-order-history-detail">
									<tbody>
							         <tr>
							             <th class="order-number">订单号码:</th>
							         </tr>
							         <tr> 									
                                       <td class="order-id"><span>${item.oid}</span> </td>
                                     </tr>
                                       
                                   
                                      <tr>
											<th class="address-title">送餐地址:</th>
									</tr>
							          <tr> 
                                       <td class="address"><div>${item.address}</div> </td>
                                      </tr>                                       
         							</tbody>
								</table>
							</div>
							
							<div class="col-xs-5 order-product-list">
								<section class="panel-section">
									<table class="table-default table-order-details">
										<tbody>
								<c:forEach items="${item.shoppingCartItemlist}" var="cartitem"  varStatus="status">				
											<tr>
												<td class="quantity">${status.index+1}</td>
												<td class="picture-img">
													<img class="img-block" alt="" src="/jinxiongge/goods/picture.do?gid=${cartitem.gid}">
												</td>
												<td class="product-name">
													<div>${cartitem.goodsname}</div>
													<ul>
														<li>单价：${cartitem.goodsprice}</li>
														<li>数量：${cartitem.goodscount}</li>
													</ul>
												</td>
												<td class="cost">¥${cartitem.itemTotalPrice}</td>
											</tr>
								</c:forEach>
											
											
										</tbody>
									</table>
									</section>
															
							</div>
							</div>
							</div>
						</div>
						
		</c:forEach>
	</c:if>
	<!-- for循环 -->					
					</div>
			
				
	</div>
	
				<!-- 添加分页 -->
				<div class="row row-narrow" align="center">
				
				<font size="3" ><a href="/jinxiongge/orders/orderspage.do?page=1">首页 &nbsp &nbsp</a></font>
				<font size="3" ><a href="/jinxiongge/orders/orderspage.do?page=${orderspagePaginator.prePage}">上一页: ${orderspagePaginator.prePage} &nbsp &nbsp</a></font>
				<font size="3" ><a href="/jinxiongge/orders/orderspage.do?page=${orderspagePaginator.nextPage}">下一页: ${orderspagePaginator.nextPage}  &nbsp&nbsp</a></font>
				<font size="3" ><a href="/jinxiongge/orders/orderspage.do?page=${orderspagePaginator.page}">当前页: ${orderspagePaginator.page} &nbsp&nbsp</a></font>
				<font size="3" ><a href="/jinxiongge/orders/orderspage.do?page=${orderspagePaginator.totalPages}">末页 &nbsp&nbsp</a></font>
				<font size="3" > 总页数: ${orderspagePaginator.totalPages} </font> &nbsp&nbsp
				<font size="3" > 您的订单总数: ${orderspagePaginator.totalCount} </font> 
				</div>
				
				<!-- 添加分页 -->
</div>
					
				</div>
			</div>
		</div>
	<jsp:include page="foot.jsp"></jsp:include>
	
</div>
<div id="loading-view" class="loading-view hidden"><div class="loading"><span class="loading-icon"></span></div></div>			



	<div id="alertAddBookEmpty" data-backdrop="static" data-keyboard="false" class="modal-addressbookempty modal-alert modal fade" role="dialog" aria-labelledby="addressbookempty-title" aria-hidden="true" tabindex="-1">
			    <div class="modal-dialog">
				        <div class="modal-content">
				            <div class="modal-header">
				                <h1 id="addressbookempty-title">地址簿是空的。</h1>
				            </div>
				            <div class="modal-body">
				                <div class="alert-content">
				                    <p>添加送餐地址，开始订餐吧！</p>
				                    <p><a class="btn btn-default btn-red btn-lg text-ucase" href="https://www.4008-517-517.cn/cn/address.html">添加送餐地址</a></p>
				                </div>
				            </div>
				        </div>
    			</div>
			</div>
<jsp:include page="loginform.jsp"></jsp:include>
	<div id="deliveryOptions" data-backdrop="static" class="modal-deliveryoptions modal fade" role="dialog" aria-hidden="true" tabindex="-1">
			    <div class="modal-dialog">
			        <div class="modal-content">
			            <div class="modal-header">
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
			            </div>
			            <div class="modal-body">
			                <form action="https://www.4008-517-517.cn/cn/selection/menu.html" method="post" role="form" class="form form_deliveryoptions" id="form_deliveryoptions" data-required-symbol="*">
			                    <fieldset class="fieldset fieldset-deliveryaddress">
			                        <div class="fieldset-heading">
			                            <h2>请选择送餐地址</h2>
			                        </div>
			                        <div class="form-group">
			                            <select class="hide-default-error" name="address" id="form_deliveryoptions_address" aria-disabled="false" tabindex="0" style="display: none;">
												<option value="1">北京市 海淀区 信息路  上地华联 2号院上地华联号楼 2层 2室</option>
										</select><span class="hide-default-error"><a class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown" id="form_deliveryoptions_address-button" role="button" href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="0" aria-haspopup="true" aria-owns="form_deliveryoptions_address-menu" aria-disabled="false" style="width: 102px;"><span class="ui-selectmenu-status">北京市 海淀区 信息路  上地华联 2号院上地华联号楼 2层 2室</span><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
			                            
			                            	
											 
												<a class="action-secondary action-link" href="https://www.4008-517-517.cn/cn/address.html"> 添加送餐地址</a>
												
											
			                            
			                            
			                        </div>
			                        <p class="note address-status"><!-- Your order will arrive in approximately {{duration}} mins upon order confirmation. --></p>
			                    </fieldset>
			                    <fieldset class="fieldset fieldset-deliverydatetime">
			                        <div class="fieldset-heading">
			                            <h2>请选择送餐日期和时间</h2>
			                        </div>
			                        <div class="form-group">
			                            <div class="radio">
			                                <div class="iradio" style="position: relative;"><input type="radio" value="now" name="form_deliveryoptions_datetime" id="form_deliveryoptions_datetime_now" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
			                                <label class="radio-label" for="form_deliveryoptions_datetime_now">立即订餐</label>
			                            </div>
			                            <div class="radio">
			                                <div class="iradio" style="position: relative;"><input type="radio" value="later" name="form_deliveryoptions_datetime" id="form_deliveryoptions_datetime_later" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
			                                <label class="radio-label" for="form_deliveryoptions_datetime_later">预约订餐（至少提前1小时预约）</label>
			                            </div>
			                            <div class="form-group deliverydatetime">
			                                <label class="field-label overlay-sub-label">日期:</label>
			                              
			                                <select class="hide-default-error" name="date" id="form_deliveryoptions_date" aria-disabled="false" tabindex="0" style="display: none;">
												<option value="2014/12/15">2014/12/15</option>
												<option value="2014/12/16">2014/12/16</option>
												<option value="2014/12/17">2014/12/17</option>
												<option value="2014/12/18">2014/12/18</option>
												<option value="2014/12/19">2014/12/19</option>
												<option value="2014/12/20">2014/12/20</option>
												<option value="2014/12/21">2014/12/21</option>
												<option value="2014/12/22">2014/12/22</option>
											</select><span class="hide-default-error"><a class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown" id="form_deliveryoptions_date-button" role="button" href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="0" aria-haspopup="true" aria-owns="form_deliveryoptions_date-menu" aria-disabled="false" style="width: 102px;"><span class="ui-selectmenu-status">2014/12/15</span><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
			                                
			                            </div>
			                            <div class="form-group deliverydatetime">
			                                <label class="field-label overlay-sub-label">时间:</label>
			                               
			                                <select class="hide-default-error" name="time" id="form_deliveryoptions_time" aria-disabled="false" tabindex="0" style="display: none;">
			                                	<option value="">请选择送餐时间</option>
												<option value="18:30">18:30</option>
												<option value="18:45">18:45</option>
												<option value="19:00">19:00</option>
												<option value="19:15">19:15</option>
												<option value="19:30">19:30</option>
												<option value="19:45">19:45</option>
												<option value="20:00">20:00</option>
												<option value="20:15">20:15</option>
												<option value="20:30">20:30</option>
												<option value="20:45">20:45</option>
												<option value="21:00">21:00</option>
												<option value="21:15">21:15</option>
												<option value="21:30">21:30</option>
												<option value="21:45">21:45</option>
												<option value="22:00">22:00</option>
												<option value="22:15">22:15</option>
												<option value="22:30">22:30</option>
												<option value="22:45">22:45</option>
												<option value="23:00">23:00</option>
												<option value="23:15">23:15</option>
												<option value="23:30">23:30</option>
												<option value="23:45">23:45</option>
											</select><span class="hide-default-error"><a class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown" id="form_deliveryoptions_time-button" role="button" href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="0" aria-haspopup="true" aria-owns="form_deliveryoptions_time-menu" aria-disabled="false" style="width: 102px;"><span class="ui-selectmenu-status">请选择送餐时间</span><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
			                            </div>
			                            <div class="deliverydatetime deliverydatetime-status"></div>
			                        </div>
			                    </fieldset>
			                    <fieldset class="fieldset form-actions">
			                        <div class="form-group">
			                            <button type="submit" class="btn btn-red btn-xl btn-submit">下一步</button> 
			                        </div>
			                    </fieldset>
			                    <fieldset class="fieldset footnotes">
			                    	<div class="note">任何提前999,999天的预约订单，请致电麦乐送 4008-517-517。</div>
			                        <div class="note">预约订餐 - 任何提前null天的预约订单，请致电麦乐送4008-517-517。</div>
			                        <div class="note">天气原因 - 送餐时间会受您所在地区的天气影响。</div>
			                        <div class="note"></div>
			                        <div class="note"></div>
			                    </fieldset>
			                <input type="hidden" name="csrfValue" value="AA614A1"></form>
			            </div>
			        </div>
			    </div>
		    </div>
	<div id="trackOrder" class="modal-trackorder modal fade" data-backdrop="static" role="dialog" aria-labelledby="trackorder-title" aria-hidden="true" tabindex="-1">
			    <div class="modal-dialog">
			        <div class="modal-content">
			            <div class="modal-header">
			                <h1 id="trackorder-title">追踪订单</h1>
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
			            </div>
			            <div class="modal-body">
			                <p>请输入订单号码，查询订单状态。</p>
			                	<form action="https://www.4008-517-517.cn/cn/searchOrder.html" method="post" role="form" id="form_trackOrder" name="form_trackOrder" class="form form-track-order" novalidate="novalidate">
			                	
			                    <div class="form-group">
			                        <label class="field-label" for="form_trackOrder_orderNum">订单号码:</label>
			                        <input type="text" class="form-control input-lg required" id="form_trackOrder_orderNum" name="orderNum" aria-required="true">
			                    </div>
			                    <div class="form-group">
			                        <button type="submit" class="btn btn-default btn-red btn-lg text-ucase">下一步</button>
			                    </div>
			                <input type="hidden" name="csrfValue" value="AA614A1"></form>
			                <p class="note">如有任何问题，请致电麦乐送4008-517-517.</p>
			            </div>
			        </div>
			    </div>
			</div>



		
		
		
			
<!-- 
	[#trackOrder.modal] -->

<!-- [/#trackOrder.modal] -->

<!-- [countdowntimer.modal] -->
		<div data-alert-type="modal" data-backdrop="static" data-keyboard="false" class="modal-countdowntimer modal-alert modal fade" role="dialog" aria-labelledby="countdowntimer-title" aria-hidden="true" tabindex="-1" data-delay-show="1500000">
			    <div class="modal-dialog">
			        <div class="modal-content">
			            <div class="modal-header">
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
			            </div>
			            <div class="modal-body">
			                <div class="row">
			                    <div class="col-xs-3 timer-wrapper">
			                        <div class="time timer text-din timer-clock" data-countdown-time="300" data-countdown-redirect-url="# "></div>
			                        <div class="time-disclaimer">后清空购物车</div>
			                    </div>
			                    <div class="col-xs-8 timer-wrapper">                                   
			                        <div class="alert-content text-left">
			                            <h1 id="countdowntimer-title">还没有提交订单?</h1>
			                            <p>您有一段时间没有任何动作了。继续订餐？</p>
			                            <p><a data-dismiss="modal" aria-hidden="true" class="btn btn-red btn-lg text-ucase" href="">下一步 </a></p>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			</div>
<!-- [/countdowntimer.modal] -->

	<!-- [#addToFav.modal] -->
<div id="addToFav" class="modal-trackorder modal fade" data-backdrop="static" role="dialog" aria-labelledby="addtofavourites-title" aria-hidden="true" tabindex="-1">
			    <div class="modal-dialog">
			        <div class="modal-content">
			            <div class="modal-header">
			                <h1 id="addtofavourites-title">添加到我的收藏</h1>
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
			            </div>
			            <div class="modal-body">
			                <p>请为我的收藏中的订单设置名称</p>
			                	<!--  form action="#" th:action="@{/addTofav.html}" method="post" role="form" id="form_addToFav" name="form_addToFav"  -->
			                	<form class="form" role="form" id="form_addToFav" method="post">
			                    <div class="form-group">
			                        <label class="field-label" for="form_addToFav_name">姓名:</label>
			                        <input type="text" class="form-control input-lg required" id="form_addToFav_name" name="form_addToFav_name" placeholder="名称：例如：爸爸的最爱">
			                        <input type="hidden" name="form_addToFav_id" value="">
			                        <input type="hidden" name="orderid" value="">
			                    </div>
			                    <div class="form-group">
			                        <button type="submit" class="btn btn-default btn-red btn-lg text-ucase">下一步</button>
			                    </div>
			                </form>
			            </div>
			        </div>
			    </div>
			</div>
<!-- [/#addToFav.modal] -->

<!-- SUPPORT MODAL -->

	<!-- [#signin.modal] -->

<!-- [/#signin.modal] -->
           <!-- [#maxQuota.modal] -->
<div id="maxQuota" data-backdrop="static" class="modal-maxquotaerror modal-alert modal fade" role="dialog" aria-labelledby="maxquotaerror-title" aria-hidden="true" tabindex="-1">
			    <div class="modal-dialog">
			        <div class="modal-content">
			            <div class="modal-header">
			                <h1 id="maxquotaerror-title">最大数量限制</h1>
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
			            </div>
			            <div class="modal-body">
			                <div class="alert-content">
			                	<form method="post" accept-charset="utf-8" action="https://www.4008-517-517.cn/cn/account-favourites.html">
			                		<input type="hidden" name="orderid" value="">
			                		<p>抱歉，您已经添加5笔订单到我的收藏。</p>
			                    	<p>删除我的收藏中的订单？请点击<a href="https://www.4008-517-517.cn/cn/account-order-history.html#" class="action-removefromfavourites">此处</a>。</p>
			                	<input type="hidden" name="csrfValue" value="AA614A1"></form>
			                </div>  
			            </div>
			        </div>
			    </div>
			</div>
<!-- [/#maxQuota.modal] -->   
           <!-- [#addFavSuccess.modal] -->
<div id="addFavSuccess" data-backdrop="static" class="modal-addtofavouritessuccess modal fade" role="dialog" aria-labelledby="addtofavouritessuccess-title" aria-hidden="true" tabindex="-1">
			    <div class="modal-dialog">
			        <div class="modal-content">
			            <div class="modal-header">
			                <h1 id="addtofavouritessuccess-title">添加到我的收藏</h1>
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
			            </div>
			            <div class="modal-body">
			                <p>这笔订单已经被添加到“我的收藏”</p>
			                <p>您可以添加最多5笔订单。</p>
			                <p><button data-dismiss="modal" aria-hidden="true" class="btn btn-default btn-red btn-lg text-ucase">是的</button></p>
			            </div>
			        </div>
			    </div>
			</div>
<!-- [/#addFavSuccess.modal] -->     








		

<script type="text/javascript" src="/jinxiongge/js/plugins.js"></script>
<script type="text/javascript" src="/jinxiongge/js/main.js"></script>
<script type="text/javascript" src="/jinxiongge/js/local.js"></script>
<script>
/*<![CDATA[*/
	$(function() {
		if(false){
			$('body').on('click', '.menu-item-menu .menu-item-target, .action-ordernow, a[href*="account-order-history"] , a[href*="account-favourites"]', function(event) {
					event.preventDefault();
					$('#deliveryOptions').one('show.bs.modal', function() {
							$('#form_deliveryoptions_datetime_later').iCheck('check');
					}).modal('show');
			});
		  }
		/* [#deliveryOptions.modal] */
    	$('#form_deliveryoptions').deliveryOptions({
    		// copy
    		timeInputHint: '\u8BF7\u9009\u62E9\u9001\u9910\u65F6\u95F4',
    			
    		// api endpoints
    		getTimeSlotsUrl: '/cn/ajax/getTimeSlots.json',
    		validateUrl: '/cn/validate/validateStoreStatus.json',
			
			// status codes
			STATUS_CODE_ADDRESS_OOB:  416,
			STATUS_CODE_STORE_CLOSED: 503,
			STATUS_CODE_ADDRESS_OK:	  200
    	});
		/* [/#deliveryOptions.modal] */
		$.ajaxPrefilter(function(options, originalOptions, jqXHR) {
			var sId = '9D448B702AE55A88D4AF80550AA614A1.s20t10';
			var pid = sId.lastIndexOf('.');
			if (pid > 0) {
				sId = sId.substr(0, pid);
			}			
			var csrfVal = sId.substr(sId.length-7, 7);
			jqXHR.setRequestHeader("csrfValue", csrfVal);
		});
		var signin = null;
		if(signin != null){
			$("#signin").modal();
			var loginErrMsg = $("form[action*=login] #errorId");
			if($(loginErrMsg)[0]){
				$(loginErrMsg).clone().appendTo($("#signin fieldset:first"));
			}
		}
	})
/*]]>*/
</script>






		
<script type="text/javascript">
/*<![CDATA[*/
jQuery(function($) {

	/* [#alertAddBookEmpty.modal] */       
				// If the address book is empty, show #alertAddBookEmpty modal whenever user tries to order
				if(false){
					$('body').on('click', '.menu-item-menu .menu-item-target, .action-ordernow, .action-orderinadvance', function(event) {
					    	event.preventDefault();
					    	$('#alertAddBookEmpty').modal('show');
						});
				  }
	/* [/#alertAddBookEmpty.modal] */

       /* $('#form_addToFav').validate({
            messages: {
                form_addToFav_name: {
                    required : 'A name is required.'
                }
            }
        });*/
    

        /* [#trackOrder.modal] */
	        $('#form_trackOrder').validate({
        	rules: {
        		orderNum: {
        			required: true,
        			remote: {
                    	param: {
                    		url: '/cn/validate/trackOrder.json',
	                    	data: {
	                    		orderNumber: function() {
	                    			console.log('orderNumber : ', $('#form_trackOrder_orderNum').val());
	                    			return $('#form_trackOrder_orderNum').val();
	                    		}
	                    	},
	       							complete: function(xhr, status) {
	       							var response = xhr.responseJSON;
           						if(response.valid==false)
           							{
	                            $('#form_trackOrder .form-group .error')
	                                .html(response.message);
           							}
      						 }
                    	}
        		}
        	}
        	},
            messages: {
                orderNum: {
                    required : '\u8BA2\u5355\u53F7\u7801\u662F\u5FC5\u586B\u5185\u5BB9\u3002'
                }
            }
        });
	/* [/#trackOrder.modal] */

    

    	$('#form_login_modal').validate({
	    	messages: {
	    		'form_login_modal_username': {
					required: 'Email is required.',
					email: 'Please enter a valid Email.'
				},
	    		'form_login_modal_password': {
					required: 'Password is required.'
				}
	    	},
	    	errorPlacement: function(error, element) {
			    var ElementParent = element.parent();
			    if (/form_login_modal_username|form_login_modal_password/.test(element.attr('name'))) {
			    	$('#form_login_modal_password').parents('.textfield-list-group').append(error);
			    } else {
			    	error.insertAfter(element);
			    }
			}
	    });
	
    	/* [#addToFav.modal] */
    	$('.action-addtofavourites').addToFavourites({
    	    // URL to POST to - to create a new fav order entry
    	    createUrl: '/cn/ajax/isMaxFavOrderReached.json',
    	     
    	    /*enterNameValidation: {
    	        rules: {
    	            form_addToFav_name: {
    	                // URL to validate for invalid special characters
    	                remote: '/develop/source/index.php?r=site/safetext'
    	            }
    	        },
    	        messages: {
    	            form_addToFav_name: {
    	                required : 'A name is required.'
    	            }
    	        }
    	    },*/
    	     
    	    // This is the server side error code to indicate that the user has already max out their favourite orders list
    	    // This code will be used in the JSON response.
    	    STATUS_CODE_MAX_ENTRIES_REACHED: 413
    	});
    	/* [/#addToFav.modal] */
    
});
/*]]>*/
</script>


<div class="ui-selectmenu-menu hide-default-error" style="z-index: 1042; top: 0px; left: 0px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_deliveryoptions_address-button" id="form_deliveryoptions_address-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-80" style="width: 100px;"><li role="presentation" class="ui-corner-bottom ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-80">北京市 海淀区 信息路  上地华联 2号院上地华联号楼 2层 2室</a></li></ul></div><div class="ui-selectmenu-menu hide-default-error" style="z-index: 1042; top: 0px; left: 0px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_deliveryoptions_date-button" id="form_deliveryoptions_date-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-788" style="width: 100px; height: 238.333333333333px;"><li role="presentation" class="ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-788">2014/12/15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/16</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/17</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/18</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/19</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/20</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/21</a></li><li role="presentation" class="ui-corner-bottom"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/22</a></li></ul></div><div class="ui-selectmenu-menu hide-default-error" style="z-index: 1042; top: 0px; left: 0px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_deliveryoptions_time-button" id="form_deliveryoptions_time-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-25" style="width: 100px; height: 238.333333333333px;"><li role="presentation" class="ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-25">请选择送餐时间</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">18:30</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">18:45</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">19:00</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">19:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">19:30</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">19:45</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">20:00</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">20:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">20:30</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">20:45</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">21:00</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">21:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">21:30</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">21:45</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">22:00</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">22:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">22:30</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">22:45</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">23:00</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">23:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">23:30</a></li><li role="presentation" class="ui-corner-bottom"><a href="https://www.4008-517-517.cn/cn/account-order-history.html#nogo" tabindex="-1" role="option" aria-selected="false">23:45</a></li></ul></div></body></html>