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
		
		
    	 
    </head>


	<body class="country-86 lang-zh page-menu">
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
			<div class="alert alert-warning alert-dismissable inline-alert type-flama hidden" data-content-timer="60000" data-delay-show="41009000">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
			<p> 我们将在 <span class="text-primary timer" data-countdown-time="300" data-countdown-redirect-url="/cn/home.html"> 后切换至早餐菜单，请尽快提交订单。</span></p>
</div>
			<!-- Start of Session time out warning -->
				<div class="alert alert-warning alert-dismissable inline-alert type-flama hidden" data-content-timer="60000" data-delay-show="900000">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
							<p> 请在<span data-countdown-redirect-url="/cn/expireSession.html" data-countdown-time="900" class="text-primary timer"></span>内提交订单，以免购物车清空。加油哦！</p>
				</div>		
			<!-- End of Session time out warning -->
		</div>
					<div class="main">
		<div class="row row-narrow">	 	
		 	<div class="page-sidebar">
			
			<br/>
						<jsp:include page="navigate.jsp"></jsp:include>
			
</div>
		 	<div class="col-xs-10 pull-right">
		 		<div class="clearfix">
					<div class="page-breadcrumbs pull-left">
						<ol class="breadcrumb type-sans">
							<li><a href="">浏览菜单</a></li>
							
							<li class="active">我的购物车</li>
							
						</ol>
					</div>
					<div class="pull-right">
						<div class="well well-sm ordering-steps clearfix">
							<div class="steps-header">快速点餐3步走</div>
							<div class="steps">
								<div class="step"><span class="step-number text-din">1.</span><span>送餐地址和时间</span></div>
								<div class="step current"><span class="step-number text-din">2.</span><span>挑选产品</span></div>
								<div class="step"><span class="step-number text-din">3.</span><span>立即结账</span></div>
							</div>
						</div>
					</div>
				</div>
				<div class="page-content">
					<div class="row row-narrow">
					
						<div class="col-xs-4">
							<div id="order-widget" class="panel panel-basic panel-narrow order-summary">
		<div class="panel-heading">
			<h3 class="text-center">订单设置 <font color="red">*必填</font></h3>
		</div>
		
		<div class="panel-section-group">
		<!-- 提交订单* ************************************************************-->
		<form action="/jinxiongge/orders/add.do" method="post">
					<section class="panel-section section-delivery-address">
										<table class="table-default table-delivery-address">
											<tbody>
												<tr>
													<th scope="row"><font color="red">* </font> 收件人:
													</th>
													<td>
														<div>
														<input type="text" name="addresseename"  size="100">
														</div> 
													</td>
												</tr>
												
												<tr>
													<th scope="row"><font color="red">* </font> 电 话:
													</th>
													<td>
														<input type="text" name="addresseetel"  size="100">
													</td>
												</tr>
												
												
												<tr>
													<th scope="row"><font color="red">* </font> 送餐至:
													</th>
													<td>
														<div>
														<input type="text" name="address" width="100%" size="100">
														</div> 
													</td>
												</tr>
												
												
												<tr>
													<th scope="row">备 注: 
													</th>
													<td>
														<div>
														<input type="text" name="remark" width="100%" size="100">
														</div> 
													</td>
												</tr>
											</tbody>
										</table>
									</section>
									
									
									<section class="panel-section section-cost-breakdown">
										<table class="table-default table-cost">
											<tfoot class="total">
												<tr>
													<th scope="row">总计:</th>
													<input type="hidden" name="totalprice" value='<c:out value="${sessionScope.totalprice}"  escapeXml="false" default="0"/>'>
													
													<td>¥${sessionScope.totalprice}</td>
												</tr>
											</tfoot>
											
										</table>
										
										<fieldset class="form-actions text-center">
											<div class="form-group">
												
													
													<!-- <a class="btn btn-red btn-block btn-xl" >立即结账</a> -->
													<input class="btn btn-red btn-block btn-xl" type="submit"  value="立即结账" />
												
												
											</div>
										</fieldset>
									</section>
				</form>
	<!-- 提交订单结束* ************************************************************-->
	
	
<c:if test="${sessionScope.cartmap!=null}">
									<section class="panel-section section-order-items">
										<h3>购物车明细</h3>
										
										<form class="order-items item-list" action="" method="DELETE">
					
										
	
		<c:forEach items="${sessionScope.cartmap}" var="item" varStatus="status">					
								<div class="order-item list-item">
									<div>
									<div>
									<div class="item-heading clearfix">
										<div class="quantity">${status.index+1}</div>
										<div class="picture"><img alt="" height="100px" width="100px" class="img-block" src="/jinxiongge/goods/picture.do?gid=${item.value.gid}"></div>
										<div class="details">
											<h5 class="product-name">${item.value.goodsname}</h5>
											<ul>
															<li>数量：${item.value.goodscount}</li>
															<li>单价：¥${item.value.goodsprice}</li>
											</ul>
										</div>
									</div>
									<div class="item-body clearfix">
										<div class="controls">
											<a class="action-edit action-edit-order" data-orderid="88" onclick="updatecart(${item.value.gid},'add')" title="加一份"> 加一份 </a>
											<a class="action-edit action-edit-order" data-orderid="88" onclick="updatecart(${item.value.gid},'reduce')" title="减一份"> 减一份 </a>
											<a class="action-delete action-delete-order" data-orderid="88"onclick="deletecartitem(${item.value.gid})"  title="删除"> 删除</a>
										</div>
										
										<div class="cost">¥${item.value.itemTotalPrice}</div>
									</div>
									</div>
								   </div>
								</div>
												
		</c:forEach>
										</form>
									</section>
	</c:if>														
															
			</div>
			
			
					
		</div>
						</div>
					</div>
				</div>
	
			</div>
		 </div>
	</div>
			</div>
			<jsp:include page="foot.jsp"></jsp:include>
						
		</div>
		<div id="loading-view" class="loading-view hidden"><div class="loading"><span class="loading-icon"></span></div></div>


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
												<option selected="selected" value="1">北京市 海淀区 信息路  上地华联 2号院上地华联号楼 2层 2室</option>
										</select><span class="hide-default-error"><a class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown" id="form_deliveryoptions_address-button" role="button" href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="0" aria-haspopup="true" aria-owns="form_deliveryoptions_address-menu" aria-disabled="false" style="width: 102px;"><span class="ui-selectmenu-status">北京市 海淀区 信息路  上地华联 2号院上地华联号楼 2层 2室</span><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
			                            
			                            	
											 
												
												<a href="https://www.4008-517-517.cn/cn/menu.html#alertCartCleared-add-address" class="action-secondary action-link"> 添加送餐地址</a>
											
			                            
			                            
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
											</select><span class="hide-default-error"><a class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown" id="form_deliveryoptions_date-button" role="button" href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="0" aria-haspopup="true" aria-owns="form_deliveryoptions_date-menu" aria-disabled="false" style="width: 102px;"><span class="ui-selectmenu-status">2014/12/15</span><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
			                                
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
											</select><span class="hide-default-error"><a class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown" id="form_deliveryoptions_time-button" role="button" href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="0" aria-haspopup="true" aria-owns="form_deliveryoptions_time-menu" aria-disabled="false" style="width: 102px;"><span class="ui-selectmenu-status">请选择送餐时间</span><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
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
			                        <div class="note">预约订餐 - 任何提前7天的预约订单，请致电麦乐送4008-517-517。</div>
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
			    



		<div>
<!-- Begin Configurator -->
<div id="product-configurator" class="configurator"><!-- IE11 strips this off  --></div>
<div id="modals-choices"></div>
<!-- div id="loading-view" class="loading-view hidden"><div class="loading"><span class="loading-icon"></span></div></div-->
<script type="text/template" id="configurator-template">
	<div class="configurator-header">
		<div class="container">
			<div class="row">
				<div class="quantity"><span class="added-quantity">0</span> <span class="small text-ucase show-on-expand">数量</span></div>
				<div class="picture show-on-expand text-center"><img alt="" src="/cn/{{images.0.imageUrl}}" /></div>
				<div class="description">
					<h1 class="item-name">{{{menuName}}}</h1>
					<div class="clearfix">
						<div class="product-badges show-on-expand">
							{{#each badges}}
								<span class="food-icons-sprite ir food-icons-{{this}}"></span>
							{{/each}}
						</div>
						{{#if additionInfo.nutrition}}
						<div class="product-nutritional-info show-on-expand">
                            
							<a href="#" class="action-link" data-toggle="html-popover" data-placement="bottom" data-html="true" data-content-selector=".popover-details">   <span class="text-default">更多信息</span></a>
							
 								<div class="popover-details">
								<div class="popover-wrapper type-sans">
									<h4>{{{menuName}}}</h4>
									<p>{{additionInfo.description}}</p>
									
									
									<table class="table-default table-nutritional-facts type-flama">
										<tr>
											{{#each additionInfo.nutrition}}
												<td>
													<h2 class="nutrition-value">{{this.value}} 
														{{#if this.unit}}
														<span class="nutrition-unit">{{this.unit}}</span>
														{{/if}}
													</h2>
													<div class="nutrition-item">{{this.name}}</div>
													{{#if this.percent}}
														<div class="nutrition-percent-value">{{this.percent}}</div>
													{{/if}}
												</td>
											{{/each}}
										</tr>
									</table>
								
								</div>
							</div>
						</div>
	{{/if}}
					</div>
				</div>
				<button type="button" class="close action-cancel" aria-hidden="true"> ="mcd icon mcd-close"> </button>
			</div>
		</div>
	</div>
	<div class="configurator-body" role="main">
		<div class="configurator-scroller scroller">
			<div class="container">
				<div class="configurator-step step-choose-meals">
					<h3 class="step-title"><b>第一步:</b> 选择产品</h3>
					<div class="step-content">
						<div id="available-sets"></div>
					</div>
				</div>
				<div class="configurator-step step-customize-meals">
					<h3 class="step-title"><b>第二步:</b> 定制套餐</h3>
					<div class="step-content">
						<div id="added-sets" class="selected-meals"></div>
					</div>
				</div>
				<div class="configurator-step step-upsell-items" id="upsell-section"></div>
			</div>
		</div>
	</div>
	<div class="configurator-footer">
		<div class="container">
			<div class="row">
				<div class="col-xs-4 pull-left">
					<a href="#" class="h5 text-default text-ucase btn-back action-cancel"> ="fa fa-caret-left text-primary">  回到菜单</a>
				</div>
				<div class="col-xs-4 pull-right text-center">
					<button class="btn btn-primary btn-red btn-lg btn-block btn-submit btn-saveorder action-saveorder"> ="mcd icon mcd-bag">  
						{{#if isNewOrder}}
							添加产品到购物车					{{else}}
							保存					{{/if}}
					</button>
				</div>
				<!-- <div class="col-xs-4">
					<div class="subtotal">
						Sub Total: <span class="value">market.currency.unit8,888.88</span>
					</div>
					<div class="tax">
						GST: <span class="value">market.currency.unit88.88</span>
					</div>
				</div> -->
			</div>
		</div>
	</div>
</script>
<script type="text/template" id="upsellsection-template">
    <h3 class="step-title"><b>第三步:</b> 您也许喜欢</h3>
    <div class="step-content">
        <div id="upsell-items">
            <div class="colsize-5-row"></div>
        </div>
    </div>
</script>
<script type="text/template" id="condiments-configurator-template">
	<div class="configurator-header">
		<div class="container">
			<div class="row">
				<div class="quantity"><span class="added-quantity value">0</span> <span class="small text-ucase show-on-expand">数量</span></div>
				<div class="picture show-on-expand text-center"><img alt="" src="/cn/static/1418178769517/assets/00/img/wos_condiment.jpg" /></div>
				<div class="description">
					<h1 class="item-name">Condiments</h1>
				</div>
				<button type="button" class="close action-cancel" aria-hidden="true"> ="mcd icon mcd-close"> </button>
			</div>
		</div>
	</div>
	<div class="configurator-body" role="main">
		<div class="configurator-scroller scroller">
			<div class="container">
				<div class="configurator-step step-choose-meals">
					<h3 class="step-title">选择调味品</h3>
					<p>多要调味品可能会额外收费</p>
					<div class="step-content">
						<div id="available-sets"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="configurator-footer">
		<div class="container">
			<div class="row">
				<div class="col-xs-4 pull-left">
					<a href="#" class="h5 text-default text-ucase btn-back action-cancel"> ="fa fa-caret-left text-primary">  回到菜单</a>
				</div>
				<div class="col-xs-4 pull-right text-center">
					<button class="btn btn-primary btn-red btn-lg btn-block btn-submit btn-saveorder action-saveorder"> ="mcd icon mcd-bag">  
						{{#if isNewOrder}}
							添加产品到购物车					{{else}}
							保存						{{/if}}
					</button>
				</div>
				<!-- <div class="col-xs-4">
					<div class="subtotal">
						Sub Total: <span class="value">market.currency.unit8,888.88</span>
					</div>
					<div class="tax">
						GST: <span class="value">market.currency.unit88.88</span>
					</div>
				</div> -->
			</div>
		</div>
	</div>
</script>

<script type="text/template" id="upsellitem-template">
	<div class="panel panel-default panel-product">
		<div class="panel-body">
			<img src="{{images.0.imageUrl}}" class="img-block" alt="" />
			<h5 class="product-title">{{{variationName}}}</h5>
		</div>
		<div class="panel-footer">
			<div class="input-group item-quantity item-quantity-picker">
				<span class="input-group-btn">
					<button type="button" class="btn btn-decrease action-decrease btn-primary btn-black"> ="mcd mcd-minus icon"> </button>
				</span>
				<input type="number" value="0" min="0" max="9" class="form-control" maxlength="2" />
				<span class="input-group-btn">
					<button type="button" class="btn btn-increase action-increase btn-primary btn-black"> ="mcd mcd-plus icon"> </button>
				</span>
			</div>
			<div class="product-cost">
				{{{displayPrice}}}
			</div>
		</div>
	</div>
</script>
<script type="text/template" id="productsets-template">
	<table id="table-select-meal" class="table table-select-meal">
		<thead>
			<tr>
				<th class="controls-column">&nbsp;</th>
				<th class="picture-column">&nbsp;</th>
				<th class="description-column">&nbsp;</th>
				{{#if tax}}
				<th class="tax-column">GST</th>
				{{/if}}
				<th class="cost-column">起</th>
				
			</tr>
		</thead>
		<tbody></tbody>
	</table>
</script>


<script type="text/template" id="productset-template">
	<td class="controls-column">
		<div class="input-group item-quantity item-quantity-picker">
			<span class="input-group-btn">
				<button type="button" class="btn btn-decrease action-decrease btn-black"> ="mcd mcd-minus icon"> </button>
			</span>
			<input type="number" value="0" min="0" max="9" class="form-control" maxlength="1" />
			<span class="input-group-btn">
				<button type="button" class="btn btn-increase action-increase btn-black"> ="mcd mcd-plus icon"> </button>
			</span>
		</div>
	</td>
	<td class="picture-column">
		<img src="{{images.0.imageUrl}}" alt="" class="img-block" />
	</td>
	<td class="description-column">

		<h4 class="item-title">{{{variationName}}}</h4>
		<p class="item-description">{{additionInfo.description}}</p>
	</td>
	{{#if tax}}
	<td class="tax-column">{{tax}}</td>
	{{/if}}
	<td class="cost-column">{{{displayPrice}}}</td>
	
</script>

<script type="text/template" id="addedsetempty-template">
	<div class="empty-selection"><p>您没有选择任何超值套餐。</p></div>
</script>

<script type="text/template" id="addedset-template">

	<div class="meal-details row row-padded meal-id-{{productCode}}" data-meal-id="{{productCode}}">
		<div class="header-column">
			<div class="row row-narrow">
				<div class="header-delete-column">
					<a href="#" class="action-delete"> ="mcd icon mcd-close"> </a>
				</div>
				<div class="header-title-column">
					<h3 class="item-title">{{{variationName}}}</h3>
				</div>
				
			</div>
		</div>
		<div class="description-column">
			<div class="row row-narrow">
				<div class="primary-column components-column col-xs-6"></div>
				<div class="secondary-column choices-column col-xs-6"></div>
			</div>
		</div>
		<div class="controls-column">
			
		</div>
	</div>
		
	<div class="meal-customization">
		
	</div>
</script>

<script type="text/template" id="addedset-component-template">
	<div class="row row-padded">
		<div class="col-xs-12">
			<div class="item-name item-id-{{productCode}}" data-item-id="{{productCode}}">{{{cartName}}}</div>
		</div>
	</div>
</script>

<script type="text/template" id="addedset-choice-template">
	<div class="row row-padded">
		<div class="col-xs-8">
			<div class="item-name item-id-{{selectedSolutionCode}}" data-item-id="{{selectedSolutionCode}}" data-list-id="{{productCode}}">{{{selectedSolutionCartName}}}</div>
		</div>
		<div class="col-xs-4">
			<a href="#" data-toggle="modal" class="action-change" data-item-id="{{selectedSolutionCode}}" data-list-id="{{productCode}}">修改</a>
		</div>
	</div>
	
	<div class="modal-available-choices"></div>
</script>

<script id="available-choices-template" type="text/template">
	<form action="" accept-charset="utf-8">
		<div class="modal-dialog columns-{{columnsToDisplay}}">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title text-ucase">选择产品</h2>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						 ="mcd icon mcd-close"> 
					</button>
				</div>
				<div class="modal-body">
					<div class="media">
						<div class="pull-left">
							<img src="http://placehold.it/120x90/" alt="" class="img-block choice-image" />
						</div>
						<div class="media-body">
							<div class="available-choices-list row">
								
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer text-center">
					<button type="submit" class="btn btn-red btn-lg btn-submit">完成</button>
				</div>
				
			</div>
		</div>
	</form>
</script>

<script id="available-choice-template" type="text/template">
	<div class="radio">
		<input type="radio" name="select-choice" id="choice-{{productCode}}" value="{{productCode}}" data-cartname="{{{cartName}}}" /> 
		<label for="choice-{{productCode}}" class="radio-label">{{{cartName}}}</label>
	</div>
</script>
<script type="text/template" id="customize-item-option-template">
	<div class="form-group">
		<label class="col-xs-6 control-label">{{label}}</label>
		<div class="col-xs-6">
			<select class="selectpicker" data-size="10" data-width="100%" name="{{name}}">
				{{#each options}}
					<option value="{{this.value}}">{{this.label}}</option>
				{{/each}}
			</select>
		</div>
	</div>
</script>

<script type="text/template" id="customize-item-details-template">
	<h3>{{{cartName}}}</h3>
	<p>
		<span class="options-included"></span>
		<span class="options-addons"></span>
	</p>
</script>

<script type="text/template" id="customize-item-details-option-template">
	<span>{{selected}} {{label}}. </span>
</script>

<script type="text/template" id="customize-item-details-empty-template">
	
</script>

<script type="text/template" id="customize-items-template">
	<h3>定制产品</h3>
	<div class="customize-items"></div>
</script>

<script type="text/template" id="customize-items-empty-template">
	<p>No items to customize (Copy to provide)</p>
</script>
<script type="text/template" id="customize-item-template">
	<div class="customize-item-header clearfix">
		<h4 class="item-title">{{{cartName}}}</h4>
		<button class="btn btn-white item-toggle {{#if expanded}} {{else}} collapsed {{/if}}" data-toggle="collapse" data-target="#customize-item-{{itemid}}"> ="mcd icon"> </button>
	</div>
	<div id="customize-item-{{itemid}}" class="customize-item-body collapse {{#if expanded}} in {{/if}}">
		<form name="customizable-options" class="customizable-options form-horizontal" role="form">
			<div class="row">
				<!-- Included -->
				<div class="customization-group customization-group-included">
					<div class="col-xs-4">
						{{#if included.length}} 
							{{#if addons.length}} 
								<h5 class="group-title">Included</h5> 
							{{/if}}
						{{/if}}
						
						<div class="customization-options-included"></div>
					</div>
				</div>
				<div class="customization-group customization-group-addons">
					<div class="col-xs-4">
						{{#if included.length}} 
							{{#if addons.length}} 
								<h5 class="group-title">Add Ons</h5> 
							{{/if}}
						{{/if}}
						<div class="customization-options-addons"></div>
					</div>
					
				</div>
			</div>
		</form>
	</div>
</script>
<script id="available-choice-quantity-picker-template" type="text/template">
	<div class="panel panel-default panel-product">
		<div class="panel-body">
			<img src="{{images.1.imageUrl}}" class="img-block" alt="" />
			<h5 class="product-title">{{{cartName}}}</h5>
		</div>
		<div class="panel-footer">
			<div class="input-group item-quantity item-quantity-picker">
				<span class="input-group-btn">
					<button type="button" class="btn btn-decrease action-decrease btn-black"> ="mcd mcd-minus icon"> </button>
				</span>
				<input type="number" value="0" min="0" max="9" class="form-control" maxlength="2" />
				<span class="input-group-btn">
					<button type="button" class="btn btn-increase action-increase btn-black"> ="mcd mcd-plus icon"> </button>
				</span>
			</div>
		</div>
	</div>
</script>
<script id="available-choices-quantity-picker-template" type="text/template">
	<form action="" accept-charset="utf-8">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						 ="mcd icon mcd-close"> 
					</button>
					<h2 class="modal-title text-ucase">选择产品</h2>
				</div>
				<div class="modal-body">
					<p class="note"><span class="instruction">请选择{{quantity}}个项目。</span></p>
					
					<div class="available-choices-list row">
						
					</div>
					{{#if minQuantity}}
					{{else}}
					<div class="form-group">
						<div class="checkbox clear-selection">
							<input type="checkbox" name="clear-selection" value="" id="clear-selection" />
							<label for="clear-selection" class="checkbox-label">{{noSelection}}</label>
						</div>
					</div>
					{{/if}}						
				</div>
				<div class="modal-footer text-center">
					<button type="button" class="btn btn-red btn-lg btn-submit">完成</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</form>
</script>
<script type="text/template" id="promotion-configurator-template">
	<div class="configurator-header">
		<div class="container">
			<div class="row">
				<div class="picture show-on-expand text-center"><img th:src="http://placehold.it/240x180/" alt="" /></div> -->
				<div class="description">
					<h1 class="item-title">Make a Selection</h1>
					<p class="instruction">请选择{{maxQuantity}}个项目。</p>
				</div>
				<button type="button" class="close action-cancel" aria-hidden="true"> ="mcd icon mcd-close"> </button>
			</div>
		</div>
	</div>
	<div class="configurator-body" role="main">
		<div class="configurator-scroller scroller">
			<div class="container">
				<div class="configurator-step step-choose-meals">
					<h3 class="step-title"><b>Step 1:</b> CHOOSE YOUR ITEM(S)</h3>
					<div class="step-content">
						<div id="available-sets"></div>
					</div>
				</div>
				
				<div class="configurator-step step-customize-meals">
					<h3 class="step-title"><b>Step 2:</b> SELECT YOUR ITEM OPTIONS</h3>
					<div class="step-content">
						<div id="added-sets" class="selected-meals"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="configurator-footer">
		<div class="container">
			<div class="row">
				<div class="col-xs-4 pull-left">
					<a href="#" class="h5 text-default text-ucase btn-back action-cancel"> ="fa fa-caret-left text-primary">  回到菜单</a>
				</div>
				<div class="col-xs-4 pull-right text-center">
					<button class="btn btn-primary btn-red btn-lg btn-block btn-submit btn-saveorder action-saveorder"> ="mcd icon mcd-bag">  
						{{#if isNewOrder}}
							完成						{{else}}
							保存						{{/if}}
					</button>
				</div>
				<!-- <div class="col-xs-4">
					<div class="subtotal">
						Sub Total: <span class="value">market.currency.unit8,888.88</span>
					</div>
					<div class="tax">
						GST: <span class="value">market.currency.unit88.88</span>
					</div>
				</div> -->
			</div>
		</div>
	</div>
</script>

<script type="text/template" id="addedpromotionalset-template">
	<div class="meal-details row row-padded meal-id-{{productCode}}" data-meal-id="{{productCode}}">
		<div class="header-column">
			<div class="row row-narrow">
				<div class="header-delete-column">
					<a href="#" class="action-delete"> ="mcd icon mcd-close"> </a>
				</div>
				<div class="header-title-column">
					<h3 class="item-title">{{{variationName}}}</h3>
				</div>

				
			</div>
		</div>
		<div class="description-column">
			<div class="row row-narrow">
				<div class="primary-column components-column col-xs-6"></div>
				<div class="secondary-column choices-column col-xs-6"></div>
			</div>
		</div>
		<div class="controls-column">
			
		</div>
	</div>
		
	<div class="meal-customization">
		
	</div>
</script>

<script type="text/template" id="addedpromotionalsetempty-template">
	<div class="empty-selection"><p>You have not selected any items yet.</p></div>
</script>

<script type="text/template" id="available-promotional-choices-quantity-picker-template">
	<form action="" accept-charset="utf-8">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						 ="mcd icon mcd-close"> 
					</button>
					<h2 class="modal-title text-ucase">选择产品</h2>
				</div>
				<div class="modal-body">
					<p class="note"><span class="instruction">请选择{{quantity}}个项目。</span></p>
					<div class="available-choices-list row"></div>
				</div>
				<div class="modal-footer text-center">
					<button type="button" class="btn btn-red btn-lg btn-submit">完成</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</form>
</script>
<!-- End Configurator -->

	<!-- [#deliveryOptions.modal] -->
 
<!-- [/#deliveryOptions.modal] -->



	<!-- [#alertCartCleared.modal] -->
<div id="alertCartCleared" data-backdrop="static" class="modal-cartcleared modal-alert modal fade" role="dialog" aria-labelledby="cartcleared-title" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 id="cartcleared-title">您的购物车即将被清空。</h1>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            </div>
            <div class="modal-body">
                <div class="alert-content">
                    <p>是否继续？</p>
                    <p>
                       <button data-dismiss-trigger="cartcleared.deliveryoptions.action.no" aria-hidden="true" class="btn btn-default btn-black btn-lg text-ucase">否</button>
                       <button data-dismiss-trigger="cartcleared.deliveryoptions.action.yes" aria-hidden="true" class="btn btn-default btn-red btn-lg text-ucase">是</button>
                    </p>
                </div>  
            </div>
        </div>
    </div>
</div>



<!-- [/#alertCartCleared.modal] -->
<!-- [#alertCartCleared-advanceOrder.modal] -->
<div id="alertCartCleared-advanceOrder" data-backdrop="static" class="modal-cartcleared-advanceorder modal-alert modal fade" role="dialog" aria-labelledby="cartcleared-advanceorder-title" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 id="cartcleared-advanceorder-title">您的购物车即将被清空。</h1>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            </div>
            <div class="modal-body">
                <div class="alert-content">
                    <p>是否继续？</p>
                    <p>
                        <button data-dismiss-trigger="cartcleared.advanceorder.action.no" aria-hidden="true" class="btn btn-default btn-black btn-lg text-ucase">否</button>
                        <button data-dismiss-trigger="cartcleared.advanceorder.action.yes" aria-hidden="true" class="btn btn-default btn-red btn-lg text-ucase">是</button>
                    </p>
                </div> 
            </div>
        </div>
    </div>
</div>
<!-- [/#alertCartCleared-advanceOrder.modal] -->
 
<!-- [#itemsUnavailableAtThisTime.modal] -->
<div id="itemsUnavailableAtThisTime" data-backdrop="static" class="modal-itemsunavailableatthistime modal-alert modal fade" role="dialog" aria-labelledby="itemsunavailableatthistime-title" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 id="itemsunavailableatthistime-title">需要预约订餐？</h1>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            </div>
            <div class="modal-body">
                <div class="alert-content">
                    <p>这些产品目前不可购买。</p>
                    <p>
                         
                        <button data-dismiss-trigger="itemsunavailableatthistime.action.no" aria-hidden="true" class="btn btn-default btn-black btn-lg text-ucase">不买了</button>
                        <button data-dismiss-trigger="itemsunavailableatthistime.action.yes" aria-hidden="true" class="btn btn-default btn-red btn-lg text-ucase">是的，预约订餐</button>
                    </p>
                </div> 
            </div>
        </div>
    </div>
</div>
<!-- [/#itemsUnavailableAtThisTime.modal] -->

         
<!-- [#alertThanksOrder.modal] -->
<div id="alertThanksOrder" data-backdrop="static" class="modal-thanksorder modal-alert modal fade" role="dialog" aria-labelledby="thanksorder-title" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 id="thanksorder-title">大额订单确认</h1>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            </div>
            <div class="modal-body">
                <div class="alert-content">
                    <p>订餐过程中如遇任何问题，请致电麦乐送 4008-517-517 确认订单。</p>
                    <p><button data-dismiss="modal" aria-hidden="true" class="btn btn-default btn-red btn-lg text-ucase">是的</button></p>
                </div>  
            </div>
        </div>
    </div>
</div>



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
			                        <div class="time timer text-din timer-clock" data-countdown-time="300" data-countdown-redirect-url="/cn/expireSession.html"></div>
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



<!-- [#alertAddBookEmpty.modal] -->
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
<!-- [/#alertAddBookEmpty.modal] -->

<!-- [#productComponentsUnavailable.modal] -->
		<div id="productComponentsUnavailable" data-backdrop="static" class="modal-productcomponentsunavailable modal-alert modal fade" role="dialog" aria-labelledby="productcomponentsunavailable-title" aria-hidden="true" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 id="productcomponentsunavailable-title">产品不可购买</h1>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					
				</button>
			</div>
			<div class="modal-body">
				<div class="alert-content">
					<p>抱歉，您选择的以下产品目前不可购买。</p>
					
					<p>无法添加到购物车。</p>
					<p>
						<button data-dismiss="modal" aria-hidden="true" class="btn btn-default btn-red btn-lg text-ucase">是的</button>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- [/#productComponentsUnavailable.modal] -->

<!-- [#productUnavailableMultiDimension.modal] -->
		<div id="productUnavailableMultiDimension" data-backdrop="static" class="modal-productunavailablemultidimension modal-alert modal fade" role="dialog" aria-labelledby="productunavailablemultidimension-title" aria-hidden="true" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 id="productunavailablemultidimension-title">产品不可购买</h1>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					
				</button>
			</div>
			<div class="modal-body">
				<div class="alert-content">
					<p>抱歉，您选择的以下产品目前不可购买。无法添加到购物车。</p>
					
					<p>只有可购买的产品可以添加到购物车。继续订餐？</p>
					<p>
						<button id="btnUnavailableProdNo" data-dismiss="modal" aria-hidden="true" class="btn btn-default btn-black btn-lg text-ucase">否</button>
						<button id="btnUnavailableProdYes" data-dismiss="modal" aria-hidden="true" class="btn btn-default btn-red btn-lg text-ucase">是</button>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- [/#productUnavailableMultiDimension.modal] -->
<!-- [#alertAddressFull.modal] -->
		<div id="alertAddressFull" data-backdrop="static" class="modal-addresfull modal-alert modal fade" role="dialog" aria-labelledby="addressfull-title" aria-hidden="true" tabindex="-1">
				    <div class="modal-dialog">
				        <div class="modal-content">
				            <div class="modal-header">
				                <h1 id="addressfull-title">地址薄满了！</h1>
				                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
				            </div>
				            <div class="modal-body">
				                <div class="alert-content">
				                    <p>抱歉，最多只能添加5个送餐地址。<br><br>删除一个现有订餐地址，才可以添加新地址。</p>
				                    <p>
				                        <button data-dismiss-trigger="addressfull.action.no" aria-hidden="true" class="btn btn-default btn-black btn-lg text-ucase">取消</button>
				                        <!-- <button data-dismiss-trigger="addressfull.action.yes" aria-hidden="true" class="btn btn-default btn-red btn-lg text-ucase">alert.addressfull.action.yes</button> -->
				                        <a class="btn btn-default btn-red btn-lg text-ucase" href="https://www.4008-517-517.cn/cn/addressBook.html">下一步</a>
				                    </p>
				                </div>  
				            </div>
				        </div>
				    </div>
				</div>
<!-- [/#addressFull.modal] -->
<!-- [#itemsAreUnavailable.modal] -->
	<div id="itemsAreUnavailable" data-backdrop="static" class="modal-itemsareunavailable modal-alert modal fade" role="dialog" aria-labelledby="itemsareunavailable-title" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 id="itemsareunavailable-title">ITEMS UNAVAILABLE</h1>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            </div>
            <div class="modal-body">
                <div class="alert-content">
                    <p>We're sorry. All the items are currently unavailable.</p>
                    <p><button data-dismiss="modal" aria-hidden="true" class="btn btn-default btn-red btn-lg text-ucase">是的</button></p>
                </div>  
            </div>
        </div>
    </div>
</div>
<!-- [/#itemsAreUnavailable.modal] -->

<div id="rememberMe" class="modal-rememberme modal fade" data-backdrop="static" role="dialog" aria-labelledby="rememberme-title" aria-hidden="true" tabindex="-1">
	<div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 id="rememberme-title">下次自动登录</h1>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            </div>
            <div class="modal-body">
                <p>选择“记住我”，您将在30天内保持登录状态。为避免您的账户产生异常订单，请不要在公用电脑上使用此功能。</p>
                <div class="form-group">
                	<button id="btnRememberMeCancel" class="btn btn-default btn-black btn-lg text-ucase">取消</button>
                	<button id="btnRememberMeAgree" class="btn btn-default btn-red btn-lg text-ucase">确认</button>                	
                </div>               
                <p class="note">如有任何问题，请致电麦乐送4008-517-517。</p>
            </div>
        </div>
    </div>
</div>
		<script>
/*<![CDATA[*/
	$(function() {
		$("#form_login_masthead_rememberme").on("ifChecked", function(event){
			$("#rememberMe").modal("show");  			
		});
		$("#modal_login_rememberme").on("ifChecked", function(event){
			$("#rememberMe").modal("show");  			
		});
		$("#btnRememberMeCancel").click(function(){
			$("#rememberMe").modal("hide");
			$("#form_login_masthead_rememberme").iCheck("uncheck");
			$("#modal_login_rememberme").iCheck("uncheck");
		})
		$("#btnRememberMeAgree").click(function(){
			$("#rememberMe").modal("hide");
		})
		$(":button[class=close]").click(function(){
			$("#btnRememberMeCancel").click();
		})
	})
/*]]>*/
</script>
</div>




		

<script type="text/javascript" src="./js/plugins.js"></script>
<script type="text/javascript" src="./js/main.js"></script>
<script type="text/javascript" src="./js/local.js"></script>
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
        		var WOS = window.WOS;
    			var _WOS = {
    					Store: {
    						config: {
    							debug: false,
    							enableGrilling: false,
    							api: {
    								availableMeals: {
    									findAll: '/cn/configurator/products.json'
    								},
    								availableChoices: {
    									findAll: '/cn/configurator/choices.json'
    								},
    								availableUpsells: {
    									findAll: '/cn/configurator/upsell.json'
    								},
    								 condiments: {
                                		findAll: '/cn/configurator/condiments.json',
                                		edit: '/cn/configurator/condimentCart.json',
                               			save: '/cn/configurator/cart.json'
                            		},
    								cart: {
    									edit: '/cn/configurator/cart.json',
    									save: '/cn/configurator/cart.json'
    								},
    								promotion: {
										findAll: '/cn/configurator/promoProducts.json',
										edit: '/cn/configurator/promoCart.json',
										save: '/cn/configurator/cart.json'
									}
    							}
    						}
    					}
    				};
			/*]]>*/
        </script><script type="text/javascript" src="./js/store.js"></script>



<script type="text/javascript">


/*<![CDATA[*/
           
           function htmlencode(str) {
    return str.replace(/[&<>"']/g, function($0) {
        return "&" + {"&":"amp", "<":"lt", ">":"gt", '"':"quot", "'":"#39"}[$0] + ";";
    });
}
jQuery(function($) {	
	if(false){
		if(false){		
			$('#productComponentsUnavailable').modal('show');
		}
		else{
			$('#productUnavailableMultiDimension').modal('show');			
		}
	}
	else{
		var redirectUrl = null;	
		if(redirectUrl != null){
			window.location.href = '/cn/order-review-confirmation.html';
		}
	}
	
	$("#btnUnavailableProdNo").click(function(){
		$.ajax("configurator/emptyCart.json")
		.done(function() {
			location.reload();
		});
	})
	$("#btnUnavailableProdYes").click(function(){
		var redirectUrl = null;	
		if(redirectUrl != null){
			window.location.href = '/cn/order-review-confirmation.html';
		}
	})

	if(false){
		/* [#deliveryOptions.modal] */
		// Add product on different day part - Since cart is empty, clicking yes from 'Do you want to advance order?' prompt shows delivery options modal with advance order selected
		$(document).on('itemsunavailableatthistime.action.yes', function(event) {
		    setTimeout(function() {
		        $('#deliveryOptions').one('show.bs.modal', function() {
		            $('#form_deliveryoptions_datetime_later').iCheck('check');
		        }).modal('show');
		    }, 5);
		});
		/* [/#deliveryOptions.modal] */
	}else{
		/* [#alertCartCleared.modal] */
		// Add product on different day part - there are items in cart, show the clear cart prompt.
		$(document).on('itemsunavailableatthistime.action.yes', function(event) {
		    setTimeout(function() {
		        $('#alertCartCleared-advanceOrder').modal('show');
		    }, 5);
		});
		/* [/#alertCartCleared.modal] */
		 
		/* [#deliveryOptions.modal] */
		// Add product on different day part - clicking yes from clear cart prompt shows delivery options modal with advance order selected
		$(document).on('cartcleared.advanceorder.action.yes', function(event) {
		    setTimeout(function() {
		        $('#deliveryOptions').one('show.bs.modal', function() {
		            $('#form_deliveryoptions_datetime_later').iCheck('check');
		        }).modal('show');
		    }, 5);
		});
		/* [/#deliveryOptions.modal] */
		/* [#deliveryOptions.modal] */
		// Change delivery address / datetime - clicking yes from clear cart prompt shows delivery options modal
		$(document).on('cartcleared.deliveryoptions.action.yes', function(event) {
		    setTimeout(function() {
		        $('#deliveryOptions').modal('show');
		    }, 5);
		});
		/* [/#deliveryOptions.modal] */
	}

	/* [#alertAddBookEmpty.modal] */       
				// If the address book is empty, show #alertAddBookEmpty modal whenever user tries to order
				if(false){
					    	$('#alertAddBookEmpty').modal('show');
				  }
	/* [/#alertAddBookEmpty.modal] */

	/* [#page-content] */
	$('#order-widget .order-items.item-list').on('click', '.action-delete-order', function(event) {
		event.preventDefault();
		var link = $(this);
		//var order = link.parents('.order-item');
		
        $(document).trigger('loading.show');
		var url = link.attr('href');
		$.ajax(url, {
			type: 'DELETE'
		}).done(function(response, status, xhr) {
			location.reload();
		});
	});
	/* [/#page-content] */

		/* [#page-content] */
		// Store App entry point
		
		Store.start(_WOS.Store || {});
		
		
		/* [/#page-content] */

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
		
		/* [#page-content] */
		$('body').on('click', '.action-edit-address, .action-edit-datetime', function(event) {
			event.preventDefault();
			$('#deliveryOptions').one('show.bs.modal', function() {
				$('#form_deliveryoptions_datetime_later').iCheck('check');
			});
		});
		/* [/#page-content] */

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
    	/* [#signin.modal] */
    	$('#form_login_modal').validate({
	    	messages: {
	    		'form_login_modal_username': {
					required: 'form.signin.email.error.required',
					email: 'form.signin.email.error.invalid'
				},
	    		'form_login_modal_password': {
					required: 'form.signin.password.error.required'
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
		/* [/#signin.modal] */
		
		if(null=='modal'){
			$('#alertThanksOrder').modal('show');
		}
		
    
});
/*]]>*/
</script>


	
<div class="ui-selectmenu-menu hide-default-error" style="z-index: 1042; top: 0px; left: 0px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_deliveryoptions_address-button" id="form_deliveryoptions_address-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-58" style="width: 100px;"><li role="presentation" class="ui-corner-bottom ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-58">北京市 海淀区 信息路  上地华联 2号院上地华联号楼 2层 2室</a></li></ul></div><div class="ui-selectmenu-menu hide-default-error" style="z-index: 1042; top: 0px; left: 0px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_deliveryoptions_date-button" id="form_deliveryoptions_date-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-808" style="width: 100px; height: 238.333333333333px;"><li role="presentation" class="ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-808">2014/12/15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/16</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/17</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/18</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/19</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/20</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/21</a></li><li role="presentation" class="ui-corner-bottom"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/22</a></li></ul></div><div class="ui-selectmenu-menu hide-default-error" style="z-index: 1042; top: 0px; left: 0px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_deliveryoptions_time-button" id="form_deliveryoptions_time-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-211" style="width: 100px; height: 238.333333333333px;"><li role="presentation" class="ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-211">请选择送餐时间</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">18:30</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">18:45</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">19:00</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">19:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">19:30</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">19:45</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">20:00</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">20:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">20:30</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">20:45</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">21:00</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">21:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">21:30</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">21:45</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">22:00</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">22:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">22:30</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">22:45</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">23:00</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">23:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">23:30</a></li><li role="presentation" class="ui-corner-bottom"><a href="https://www.4008-517-517.cn/cn/menu.html#nogo" tabindex="-1" role="option" aria-selected="false">23:45</a></li></ul></div></body></html>