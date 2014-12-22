<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0047)https://www.4008-517-517.cn/cn/editProfile.html -->
<html xmlns="http://www.w3.org/1999/xhtml" class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths no-ieolderthan9"><!--[if lt IE 7]>      <html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7"> <![endif]--><!--[if IE 7]>         <html class="no-js lt-ie10 lt-ie9 lt-ie8"> <![endif]--><!--[if IE 8]>         <html class="no-js lt-ie10 lt-ie9"> <![endif]--><!--[if IE 9]>         <html class="no-js lt-ie10"> <![endif]--><!--[if gt IE 9]> <html class="no-js"> <![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 		
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Pragma" content="no-cache">
        <meta http-equiv="Cache-Control" content="no-cache,no-Store">
        <title>缸鸭狗</title>
        <meta name="description" content="">
        <meta charset="utf-8">
 		
   		<link rel="stylesheet" href="/jinxiongge/css/main.css">
   		<link rel="stylesheet" href="/jinxiongge/css/local.css">
         
		

		<script type="text/javascript" src="/jinxiongge/js/jquery.min.js"></script>    	
   		
		
		<script type="text/javascript" src="/jinxiongge/js/modernizr.min.js"></script>
		
   		<!--[if lt IE 9]><script type="text/javascript" src="/cn/static/1418178769517/assets/00/js/oldie.js"></script><![endif]-->
		
			<script type="text/javascript"> </script>
		
		
			<script type="text/javascript">var _gaq = _gaq || [];_gaq.push(['_setAccount', 'UA-24138769-1']);_gaq.push(['_trackPageview']);(function(){var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);})();</script>
		
    	 
    </head>
<body class="country-86 lang-zh ">
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
		<jsp:include page="menu.jsp"/>
			
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
						<div class="sidebar-menu">
							<h2 class="menu-category">我的账户</h2>
							<ul class="menu">
								<li class="menu-item"><a class="menu-item-target" href="https://www.4008-517-517.cn/cn/trackorder.html">追踪订单</a></li>
								<li class="menu-item"><a class="menu-item-target" href="https://www.4008-517-517.cn/cn/account-order-history.html">订餐记录</a></li>
								<li class="menu-item"><a class="menu-item-target" href="https://www.4008-517-517.cn/cn/account-favourites.html">我的收藏</a></li>
								<li class="menu-item"><a class="menu-item-target" href="https://www.4008-517-517.cn/cn/addressBook.html">地址簿</a></li>
								<li class="menu-item selected"><a class="menu-item-target" href="/jinxiongge/js/麦当劳网上订餐   麦乐送.html">账户设置</a></li>
							</ul>
						</div>
					</div>
					
					<div class="col-xs-10">
		<div class="page-title">
			<h1>账户设置</h1>
		</div>
		<div class="page-content">
			<div class="panel-lg panel panel-default">
				<div class="panel-heading">
					<h3>编辑资料</h3>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-xs-12">
							<form action="/jinxiongge/user/regist.do" method="post" role="form" data-form-sync="#form_consentnewnumber" class="form form-register" id="form_accountsetting" name="form_accountsetting" data-required-symbol="*" novalidate="novalidate">
								<div class="form-register error-container">
								
							
							<c:if test="${user!=null}">
							<input type="hidden" name="uid"  value='${user.uid}' />
							
							</c:if>
									<p>请更新以下标注的内容。</p>
								</div>
								
								<fieldset class="fieldset">
									<div class="fieldset-heading">
										<p class="instructions" ><font color="red">* 为必填内容</font></p>
									</div>
									<div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_username"><span class="required-symbol">*</span>用户名:<span id="registusername"></span></label>
												 
												 <input type="text" class="form-control input-lg required" id="form_accountsetting_usernamee" name="username" onblur="checkname()" aria-required="true">
												
											</div> 
										</div>
									</div>
									
									<div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_pwd"><span class="required-symbol">*</span>密码:</label>
												 
												 <input type="password" class="form-control input-lg required" id="form_accountsetting_pwd" name="pwd"  aria-required="true">
												
											</div> 
										</div>
									</div>
									
									<div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_truename"><span class="required-symbol">*</span>真实姓名:</label>
												 
												 <input type="text" class="form-control input-lg required" id="form_accountsetting_truename" name="truename"  aria-required="true">
												
											</div> 
										</div>
									</div>
									
									<div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_tel"><span class="required-symbol">*</span>手机:<span id="registtel"></span></label>
												 
												 <input type="text" class="form-control input-lg required" id="form_accountsetting_tel" name="tel" onblur="checktel()"  aria-required="true">
												
											</div> 
										</div>
									</div>
									
									
									<div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_birthday"><span class="required-symbol">*</span>出生年月:	    </label><br/>
												 <label class="field-label" for="form_accountsetting_birthday"><span class="required-symbol">*</span>格式:yyyy-MM-dd  </label>
												 
												 <input type="text" class="form-control input-lg" id="form_accountsetting_birthday" name="birthday"  aria-required="true">
												
											</div> 
										</div>
									</div>
									
									<div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_sex">性别:</label>
												 
												 <input type="text" class="form-control input-lg" id="form_accountsetting_sex" name="sex"  aria-required="true">
												
											</div> 
										</div>
									</div>
									
									<div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_city">所在城市:</label>
												 
												 <input type="text" class="form-control input-lg" id="form_accountsetting_city" name="city"  aria-required="true">
												
											</div> 
										</div>
									</div>
									
									<div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_address">默认配送地址:</label>
												 
												 <input type="text" class="form-control input-lg" id="form_accountsetting_address" name="address"  aria-required="true">
												
											</div> 
										</div>
									</div>
									
									<div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_email">email:</label>
												 
												 <input type="text" class="form-control input-lg" id="form_accountsetting_email" name="email"  aria-required="true">
												
											</div> 
										</div>
									</div>
									
									
									
									
									<div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_postcode">邮编:</label>
												 
												 <input type="text" class="form-control input-lg" id="form_accountsetting_postcode" name="postcode"  aria-required="true">
												
											</div> 
										</div>
									</div>

								</fieldset>
					

								<fieldset class="fieldset form-actions">
									<div class="form-group">
										<button type="submit" class="btn btn-red btn-xl btn-submit">保存</button>
									</div>
								</fieldset>
							<input type="hidden" name="csrfValue" value="AA614A1"></form>
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

	<jsp:include page="loginform.jsp"/>


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
										</select><span class="hide-default-error"><a class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown" id="form_deliveryoptions_address-button" role="button" href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="0" aria-haspopup="true" aria-owns="form_deliveryoptions_address-menu" aria-disabled="false" style="width: 102px;"><span class="ui-selectmenu-status">北京市 海淀区 信息路  上地华联 2号院上地华联号楼 2层 2室</span><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
			                            
			                            	
											 
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
											</select><span class="hide-default-error"><a class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown" id="form_deliveryoptions_date-button" role="button" href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="0" aria-haspopup="true" aria-owns="form_deliveryoptions_date-menu" aria-disabled="false" style="width: 102px;"><span class="ui-selectmenu-status">2014/12/15</span><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
			                                
			                            </div>
			                            <div class="form-group deliverydatetime">
			                                <label class="field-label overlay-sub-label">时间:</label>
			                               
			                                <select class="hide-default-error" name="time" id="form_deliveryoptions_time" aria-disabled="false" tabindex="0" style="display: none;">
			                                	<option value="">请选择送餐时间</option>
												<option value="18:15">18:15</option>
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
											</select><span class="hide-default-error"><a class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown" id="form_deliveryoptions_time-button" role="button" href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="0" aria-haspopup="true" aria-owns="form_deliveryoptions_time-menu" aria-disabled="false" style="width: 102px;"><span class="ui-selectmenu-status">请选择送餐时间</span><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
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



		

<!-- [#trackOrder.modal] -->

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
					<!-- [#personaldatahandling.modal] -->
				<div id="personaldatahandling" data-backdrop="static" data-keyboard="false" class="modal-personaldatahandling modal fade" role="dialog" aria-labelledby="tncupdate-title" aria-hidden="true" tabindex="-1">
				    <div class="modal-dialog">
				        <div class="modal-content">
							<div class="modal-header">
							    <h1 id="personaldatahandling-title">Outsourcing of Personal Data Handling</h1>
							    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
							</div>
							<div class="modal-body">
							    
											
											
											
											
											
											
											
											
											
											
											
											
											
											
							    </div>
				
				        </div>
				    </div>
				</div>
				<!-- [/#personaldatahandling.modal] -->
				
					<!-- [#personalinfo.modal] -->
				<div id="personalinfo" data-backdrop="static" data-keyboard="false" class="modal-personalinfo modal fade" role="dialog" aria-labelledby="tncupdate-title" aria-hidden="true" tabindex="-1">
				    <div class="modal-dialog">
				        <div class="modal-content">
							<div class="modal-header">
							    <h1 id="personalinfo-title">Collection and Use of Personal Data</h1>
							    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
							</div>
							<div class="modal-body">
							    			
											
											
											
											
											
											
											
							    </div>
				
				        </div>
				    </div>
				</div>	
				
<!-- [#alertDeleteAccFail.modal] -->
		<div id="alertDeleteAccFailed" data-backdrop="static" data-alert-type="modal" class="modal-deleteaccountfailed modal-alert modal fade" role="dialog" aria-labelledby="deleteaccountfailed-title" aria-hidden="true" tabindex="-1">
		    <div class="modal-dialog">
		        <div class="modal-content">
		            <div class="modal-header">
		                <h1 id="deleteaccountfailed-title">抱歉，您的账户无法注销！</h1>
		                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
		            </div>
		            <div class="modal-body">
		                <div class="alert-content">
		                    <p>由于您有一笔订单正在运送中，此账户目前不能删除。<br>请在产品送达后再次尝试。</p>
		                    <p><button data-dismiss="modal" aria-hidden="true" class="btn btn-default btn-red btn-lg text-ucase">Ok</button></p>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
<!-- SUPPORT MODAL -->
<div id="consentNewNumber" data-backdrop="static" data-keyboard="false" class="modal-consentnewnumber modal fade" role="dialog" aria-labelledby="consentnewnumber-title" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
			<div class="modal-header">
			    <h1 id="consentnewnumber-title">Consent for new number</h1>
			</div>
			<div class="modal-body">
				<form class="form" role="form" data-form-sync="#form_accountsetting" id="form_consentnewnumber">
					<p class="pdpa-desc"><strong>We note that the telephone number you have provided, <span class="new_number">12345678</span> is different from our records. Kindly let us have your fresh consent for the purposes set out below by clicking on the box: </strong></p>
				    <div class="pdpa-wrapper">
						<div class="checkbox">
							<div class="icheckbox" style="position: relative;"><input type="checkbox" name="subscribeMailList" id="subscribeMailList" data-form-sync-target="true" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
							<label for="subscribeMailList" class="checkbox-label">I hereby authorise, agree and consent to allow McDonald's Restaurants Pte Ltd and its affiliates (collectively "McDonald's") and/or third party service providers and agents to send me such marketing, advertising and promotional information, materials and/or documents relating to McDonald's products, services and activities, and/or products, services and activities of third parties that McDonald's may collaborate with (the "Marketing Purpose") through the following modes of communication:</label>
						</div>
	                    <!-- <ul> -->
	                    	<!-- <li>collect, use, disclose and/or process personal data about me that I had previously provided McDonald's, that I now provide McDonald's, that I may in future provide McDonald's with and/or that McDonald's possesses about me including but not limited to my name, my date of birth, my identification number, , my email address, my telephone numbers, my address for the following purposes: 								<ul>
									<li>send me marketing, advertising and promotional information, materials and/or documents relating to McDonald's products, services and activities, and/or products, services and activities of third parties that McDonald's may collaborate with;</li>
									<li>facilitating, processing, dealing with, administering, managing and/or maintaining our relationship with McDonald's;</li>
									<li>dealing in any matters relating to McDonald's products, services and activities;</li>
									<li>carrying out due diligence and other screening activities, or to prevent or investigate any fraud or breach of contract or unlawful activity, or complying with or as required by any applicable law, governmental or regulatory requirements of any relevant jurisdiction;</li>
									<li>conducting research, analysis and development activities (including but not limited to data analytics, surveys and/or profiling) to enhance McDonald's products, services and/or operations, and/or otherwise for McDonald's business operations and purposes;</li>
									<li>storing, hosting, backing up (whether for disaster recovery or otherwise) of my personal data, whether within or outside Singapore,</li>
								</ul>
	                    	</li>
	                    	<p class="note">(collectively the "Purposes");</p> -->
	                    	<!-- <li>send me such marketing, advertising and promotional information, materials and/or documents relating to McDonald's products, services and activities, and/or products, services and activities of third parties that McDonald's may collaborate with (the "Marketing Purpose") through the following modes of communication: -->
								<ul class="pdpa-numinput">
									<!-- <li>postal mail and / or electronic transmission to my email address; and</li> -->
									<li>to my following telephone number : <input type="text" class="input-sm pdpa-input" id="pdpaContactNo" name="pdpaContactNo" value="98765432" disabled="disabled"> by way of: </li>
									<div class="checkbox">
										<span class="number-listing">(1) </span>
										<div class="icheckbox disabled" style="position: relative;"><input type="checkbox" name="subscribeVoiceCall" value="1" id="subscribeVoiceCall" data-form-sync-target="true" disabled="disabled" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
										<label class="checkbox-label type-sans" for="subscribeVoiceCall">*voice call/phone call </label>
	                                </div>
									<div class="checkbox">
										<span class="number-listing">(2) </span>
										<div class="icheckbox disabled" style="position: relative;"><input type="checkbox" name="subscribeTxtMsg" value="1" id="subscribeTxtMsg" data-form-sync-target="true" disabled="disabled" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>
										<label class="checkbox-label type-sans" for="subscribeTxtMsg">*text messages (e.g. SMS/MMS) </label>
	                                </div>
	                                <p class="note disclaimer"><strong>(*uncheck if not applicable)</strong></p>
	                                <p class="note">I hereby represent and warrant that I am the authorised user and/or subscriber of the telephone number provided by me above, and that I have read and understood the above provisions.</p>
								</ul>
	                    	<!-- </li> -->
	                    <!-- </ul> -->
	                    <p class="note"><strong>If you do not wish to let us have your consent for any of the foregoing, please do not check any of the boxes and simply click "proceed". <br><br>If you have provide us with your consent and subsequently wish to withdraw your consent in part or whole, please send an email to our Data Protection Officer at <a href="mailto:mcd.pdpa.dpo@sg.mcd.com">mcd.pdpa.dpo@sg.mcd.com</a> and provide details of your withdrawal.  If you have any questions relating to our collection, use and disclosure of your personal data or the matters set out in this email, you may contact our Data Protection Officer.</strong></p>
					</div>
	               
	                <div class="form-group text-center">
	                	<button type="submit" data-dismiss="modal" aria-hidden="true" class="btn btn-default btn-red btn-lg text-ucase">Proceed</button>
	                </div>
			    </form>   
			</div>

        </div>
    </div>
</div>





		

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
	// This enabled DOB fields onSubmit.   
	$('#form_accountsetting').on('submit', function() {
	    $('select').attr('disabled', false);
	});
	// PDPA SYNC FUNCTION
	$('[data-form-sync] input[type=checkbox]').on('ifChanged', function(){
		var parent_form = $(this).parents('[data-form-sync]');		
		parent_form.trigger('change');
	});

	$('[data-form-sync]').on('change', function(){
		var self = $(this);
		var target_sync = self.data('form-sync');

		var sync_target_list = self.find('[data-form-sync-target]');

		sync_target_list.each(function( index, el ){
			var el = $(this);
			var el_field_name = el.attr('name');
			var el_checked = el.prop('checked');

			var found_el = $(target_sync).find('[name="'+ el_field_name +'"]');

			found_el.iCheck( el_checked ? 'check':'uncheck');
		});		
	});
	// PDPA CHECKBOX FUNCTION
	var subscribeMailList = $('input[name="subscribeMailList"]');
	var voiceCall = $('input[name="subscribeVoiceCall"]');
	var txtMsg = $('input[name="subscribeTxtMsg"]')
    subscribeMailList.on('ifChanged', function(){

    	var checked = $(this).prop('checked');

    	voiceCall.iCheck( checked ? 'check':'uncheck');
		txtMsg.iCheck( checked ? 'check':'uncheck');
		voiceCall.iCheck( checked ? 'enable':'disable');
		txtMsg.iCheck( checked ? 'enable':'disable');
		
		if ( checked ) {
			var value = $('input[name="contactNo"]').val();
        	$('input[name="pdpaContactNo"]').val( value );

        	$('input[name="contactNo"]').on('keyup', function(){
				var value = $( this ).val();
				$('input[name="pdpaContactNo"]').val( value );
			});
		} 
		else {
			$('input[name="pdpaContactNo"]').val( '' );

			$('input[name="contactNo"]').on('keyup', function(){
				$('input[name="pdpaContactNo"]').val( '' );
			});
		}
    });
	
	// PDPA number change validate

	var contactNumber = $('input[name=\"contactNo\"]');

	 

	contactNumber.change( function(){

		if (contactNumber.val().length == 8) {

			$('#consentNewNumber').one('shown.bs.modal', function(){

				$('.new_number').text(contactNumber.val());

			}).modal('show');

		}

	});

	
	
	
	$('#form_accountsetting_subscribe').next().bind('click',function() {
		if ($(this).prev().is(':checked')) {
			$('#form_accountsetting_outsourcepersonaldata').parent().attr('class','icheckbox checked');
			$('#form_accountsetting_outsourcepersonaldata').attr('checked','checked');
		} else {
			$('#form_accountsetting_outsourcepersonaldata').parent().attr('class','icheckbox');
			$('#form_accountsetting_outsourcepersonaldata').removeAttr('checked');
		}
	});
	
	$('#form_accountsetting_outsourcepersonaldata').next().bind('click', function() {
			if ($(this).prev().is(':checked')) {
				$('#form_accountsetting_subscribe').parent().attr('class', 'icheckbox checked');
				$('#form_accountsetting_subscribe').attr('checked','checked');
			} else {
				$('#form_accountsetting_subscribe').parent().attr('class', 'icheckbox');
				$('#form_accountsetting_subscribe').removeAttr('checked');
			}
	}); 


	
/* [#alertAddBookEmpty.modal] */       
			// If the address book is empty, show #alertAddBookEmpty modal whenever user tries to order
			if(false){
				$('body').on('click', '.menu-item-menu .menu-item-target, .action-ordernow, .action-orderinadvance', function(event) {
				    	event.preventDefault();
				    	$('#alertAddBookEmpty').modal('show');
					});
			  }
/* [/#alertAddBookEmpty.modal] */

	/* [#page-content] */
	var lowerLimitForContactNo=7;
	var upperLimitForContactNo=11;
	var minPasswordLength=8;
	var maxPasswordLength= 20;
	$("#form_account_preferred_lang").bind('change',getLocale);
	$('#form_accountsetting').validate({
		rules : {
			firstName: {
				required: true
			},
			lastName: {
				required: true
			},

			contactNo: {
				//required: true,
				rangelength: [lowerLimitForContactNo, upperLimitForContactNo],
				verifyPhoneNo: true,
				number: true
			},
			oldPassword: {
					required: {
						depends: function() {
							return $('#form_accountsetting_newpassword').val().length || $('#form_accountsetting_reenterpassword').val().length;
						}
					},
			
				remote: {
	            	param: {
	            		url: '/cn/validate/validatePassword.json',
	            		type: 'POST',
	                	data: {
	                			passwordString: function() {
	                    			return $('#form_accountsetting_oldpassword').val();
	                    		}
	                		},
	   					complete: function(xhr, status) {
	   							var response = xhr.responseJSON;
	   							if(response.valid == false)
	   							{
	                        		$('#form_accountsetting_oldpassword .form-group .error').html(response.message);
	   							}
							 }
	            	}
				}
			},
			password: {
				rangelength: [minPasswordLength, maxPasswordLength],
				maxlength: 20,
				verifyPassword: true,
				required: {
					depends: function() {
						return $('#form_accountsetting_oldpassword').val().length || $('#form_accountsetting_reenterpassword').val().length;
					}
				}
			},
			comfirmPassword: {
				required: {
					depends: function() {
						return $('#form_accountsetting_oldpassword').val().length || $('#form_accountsetting_newpassword').val().length;
					}
				},
				equalTo: '#form_accountsetting_newpassword'
			}
		},
		messages: {
			firstName: {
				required: '\u8BF7\u8F93\u5165\u540D\u5B57\u3002'
			},
			lastName: {
				required: '\u8BF7\u8F93\u5165\u540D\u5B57\u3002'
			},
			/* form_accountsetting_lastname: {
				required: 'Last Name is required.'
			}, */
			contactNo: {
				required: '\u8054\u7CFB\u7535\u8BDD\u662F\u5FC5\u586B\u5185\u5BB9\u3002',
				rangelength: '\u8054\u7CFB\u7535\u8BDD\u683C\u5F0F\u4E0D\u6B63\u786E\u3002',
				verifyPhoneNo: '\u8054\u7CFB\u7535\u8BDD\u662F\u5FC5\u586B\u5185\u5BB9\u3002',
				number: '\u8054\u7CFB\u7535\u8BDD\u683C\u5F0F\u4E0D\u6B63\u786E\u3002',
			},
			oldPassword: {
				required: '\u8BF7\u8F93\u5165\u5BC6\u7801\u3002',
			},
			password: {
				required: '\u8BF7\u8F93\u5165\u5BC6\u7801\u3002',
				rangelength: '\u5BC6\u7801\u5FC5\u987B\u4E3A{0}-{1}\u4F4D\u5B57\u7B26\u3002',
				verifyPassword: '\u5BC6\u7801\u5FC5\u987B\u4E3A8-20\u4F4D\u5B57\u7B26\u3002'
			},
			comfirmPassword: {
				required: '\u8BF7\u786E\u8BA4\u5BC6\u7801\u3002',
				equalTo: '\u4E24\u6B21\u8F93\u5165\u7684\u5BC6\u7801\u4E0D\u4E00\u81F4\u3002'
			}
		}
	});
	/* [/#page-content] */

		$( "#deleteaccount" ).click(function() {
			    window.location.href='/cn/view/deregisterAccount.html';
			    return false;
		});
	
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
    
});
/*]]>*/
</script>


	<script>
	function getLocale(e)
	{
	var str = '?locale='+$(e.target).val();
	window.location.href=str;
    return false;
	}
	</script>



<div class="ui-selectmenu-menu select-lg" style="z-index: 2; top: 340px; left: 436px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_accountsetting_title-button" id="form_accountsetting_title-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-591" style="width: 432px;"><li role="presentation" class="ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-591">先生</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">女士</a></li><li role="presentation" class="ui-corner-bottom"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">小姐</a></li></ul></div><div class="ui-selectmenu-menu select-lg" style="z-index: 2; top: 230px; left: 436px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_accountsetting_day-button" id="form_accountsetting_day-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-646" style="width: 277px; height: 238.333333333333px;"><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">日</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">3</a></li><li role="presentation" class="ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-646">4</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">5</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">6</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">7</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">8</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">9</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">10</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">11</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">12</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">13</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">14</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">16</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">17</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">18</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">19</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">20</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">21</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">22</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">23</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">24</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">25</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">26</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">27</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">28</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">29</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">30</a></li><li role="presentation" class="ui-corner-bottom"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">31</a></li></ul></div><div class="ui-selectmenu-menu select-lg" style="z-index: 2; top: 230px; left: 746px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_accountsetting_month-button" id="form_accountsetting_month-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-202" style="width: 277px; height: 238.333333333333px;"><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">月</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">一月</a></li><li role="presentation" class="ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-202">二月</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">三月</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">四月</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">五月</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">六月</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">七月</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">八月</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">九月</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">十月</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">十一月</a></li><li role="presentation" class="ui-corner-bottom"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">十二月</a></li></ul></div><div class="ui-selectmenu-menu select-lg" style="z-index: 2; top: 230px; left: 1055px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_accountsetting_year-button" id="form_accountsetting_year-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-414" style="width: 277px; height: 238.333333333333px;"><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">年</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1950</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1951</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1952</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1953</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1954</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1955</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1956</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1957</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1958</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1959</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1960</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1961</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1962</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1963</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1964</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1965</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1966</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1967</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1968</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1969</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1970</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1971</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1972</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1973</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1974</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1975</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1976</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1977</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1978</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1979</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1980</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1981</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1982</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1983</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1984</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1985</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1986</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1987</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1988</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1989</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1990</a></li><li role="presentation" class="ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-414">1991</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1992</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1993</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1994</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1995</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1996</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1997</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1998</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">1999</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2000</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2001</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2002</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2003</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2004</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2005</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2006</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2007</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2008</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2009</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2010</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2011</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2012</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2013</a></li><li role="presentation" class="ui-corner-bottom"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2014</a></li></ul></div><div class="ui-selectmenu-menu select-lg" style="z-index: 2; top: 569px; left: 436px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_account_preferred_lang-button" id="form_account_preferred_lang-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-529" style="width: 432px;"><li role="presentation" class="ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-529">中文</a></li><li role="presentation" class="ui-corner-bottom"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">English</a></li></ul></div><div class="ui-selectmenu-menu hide-default-error" style="z-index: 1042; top: 0px; left: 0px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_deliveryoptions_address-button" id="form_deliveryoptions_address-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-131" style="width: 100px;"><li role="presentation" class="ui-corner-bottom ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-131">北京市 海淀区 信息路  上地华联 2号院上地华联号楼 2层 2室</a></li></ul></div><div class="ui-selectmenu-menu hide-default-error" style="z-index: 1042; top: 0px; left: 0px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_deliveryoptions_date-button" id="form_deliveryoptions_date-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-311" style="width: 100px; height: 238.333333333333px;"><li role="presentation" class="ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-311">2014/12/15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/16</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/17</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/18</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/19</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/20</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/21</a></li><li role="presentation" class="ui-corner-bottom"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">2014/12/22</a></li></ul></div><div class="ui-selectmenu-menu hide-default-error" style="z-index: 1042; top: 0px; left: 0px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_deliveryoptions_time-button" id="form_deliveryoptions_time-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-158" style="width: 100px; height: 238.333333333333px;"><li role="presentation" class="ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-158">请选择送餐时间</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">18:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">18:30</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">18:45</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">19:00</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">19:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">19:30</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">19:45</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">20:00</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">20:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">20:30</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">20:45</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">21:00</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">21:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">21:30</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">21:45</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">22:00</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">22:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">22:30</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">22:45</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">23:00</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">23:15</a></li><li role="presentation"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">23:30</a></li><li role="presentation" class="ui-corner-bottom"><a href="https://www.4008-517-517.cn/cn/editProfile.html#nogo" tabindex="-1" role="option" aria-selected="false">23:45</a></li></ul></div></body></html>