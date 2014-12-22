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
		<script type="text/javascript" src="/jinxiongge/js/fahuo.js"></script>
		
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
	
		
		
<div class="root">
	<div class="wrap container">
		<div class="global-header">
			<div class="header-actions row">
			<jsp:include page="/manager/managerloginspan.jsp"/>
			</div>
			<jsp:include page="/manager/managermenu.jsp"></jsp:include>
			
			<!-- Start of Session time out warning -->
				<div class="alert alert-warning alert-dismissable inline-alert type-flama hidden" data-content-timer="60000" data-delay-show="900000">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
							<p> 请在<span data-countdown-redirect-url="/cn/expireSession.html" data-countdown-time="900" class="text-primary timer"></span>内提交订单，以免购物车清空。加油哦！</p>
				</div>		
			<!-- End of Session time out warning -->
		</div>
			<div class="main" role="main">
				<div class="row row-narrow">
					<div class="page-sidebar">
						<jsp:include page="/manager/managernavigate.jsp"></jsp:include>
					</div>
					
					<div class="page-title">
		
		</div>
					<div class="col-xs-10 type-flama">
		
		<div class="page-content" >
		
		 
				<div class="panel-group type-flama order-history accordion" >
				
				
		
				
				<div class="col-xs-10">
		<div class="page-content">
			<div class="panel-lg panel panel-default">
				<div class="panel-heading">
					<h3>更新菜品</h3>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-xs-12">
						<c:if test="${goods!=null}">
							<form action="/jinxiongge/goods/update.do" method="post" enctype="multipart/form-data" role="form" data-form-sync="#form_consentnewnumber" class="form form-register" id="form_accountsetting" name="form_accountsetting" data-required-symbol="*" novalidate="novalidate">
								<div class="form-register error-container">
								
							<input type="hidden" name="gid" value="${goods.gid}"/>
						
									<p>请更新以下标注的内容。</p>
								</div>
								
								<fieldset class="fieldset">
									<div class="fieldset-heading">
										<p class="instructions" ><font color="red">* 为必填内容</font></p>
									</div>
									<div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_username"><span class="required-symbol">*</span>商品名称:</label>
												 
												 <input type="text" class="form-control input-lg required" id="form_accountsetting_usernamee" name="goodsname" value="${goods.goodsname}" aria-required="true">
												
											</div> 
										</div>
									</div>
									
									<div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_pwd"><span class="required-symbol">*</span>商品描述:</label>
												 
												 <input type="text" class="form-control input-lg required" id="form_accountsetting_pwd" name="introduce" value="${goods.introduce}" aria-required="true">
												
											</div> 
										</div>
									</div>
									
									<div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_truename"><span class="required-symbol">*</span>原价:</label>
												 
												 <input type="text" class="form-control input-lg required" id="form_accountsetting_truename" name="price" value="${goods.price}"  aria-required="true">
												
											</div> 
										</div>
									</div>
									
									<div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_tel"><span class="required-symbol">*</span>现价:</label>
												 
												 <input type="text" class="form-control input-lg required" id="form_accountsetting_tel" name="nowprice" value="${goods.nowprice}" aria-required="true">
												
											</div> 
										</div>
									</div>
									
										<div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_sex">是否促销:</label>
												 <label class="field-label" for="form_accountsetting_sex">请输入yes或no:</label>
												  <input type="text" class="form-control input-lg required" id="form_accountsetting_tel" value="${goods.specialprice}" name="specialprice"  aria-required="true">
												
											</div> 
										</div>
									</div>
							
									
									
									 <div class="row">
										<div class="col-xs-12">
											 <div class="form-group">
												 <label class="field-label" for="form_accountsetting_birthday"><span class="required-symbol">*</span>商品图片: </label><br/>
												 <img  height="80px" width="80px" alt="${goods.goodsname}" src="/jinxiongge/goods/picture.do?gid=${goods.gid}">
															 
												  <input type="file" class="form-control input-lg" id="form_accountsetting_birthday" name="file"  aria-required="true">
												 
											</div> 
										</div>
									</div>
									
								

								</fieldset>
					

								<fieldset class="fieldset form-actions">
									<div class="form-group">
										<button type="submit" class="btn btn-red btn-xl btn-submit">保存</button>
									</div>
								</fieldset>
							</form>
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
					
				</div>
			</div>
		</div>
	
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