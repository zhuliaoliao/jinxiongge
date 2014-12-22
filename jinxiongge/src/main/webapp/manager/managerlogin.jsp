<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!-- saved from url=(0040) -->
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


	<body class="country-86 lang-zh page-home">
	<c:if test="${result.message!=null}">
	<script type="text/javascript" >alert('${result.message}');</script>
</c:if>
	<div  aria-labelledby="modal-title" aria-hidden="false" tabindex="-1" align="center">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<h2 id="modal-title">缸鸭狗后台登入</h2>
						<div class="row">
							<div class="col-xs-offset-3 col-xs-6">
								<form action="/jinxiongge/manager/login.do" method="post" accept-charset="utf-8" role="form"  name="form_login_modal" class="form-login-modal form-login" data-required-symbol="false">
									<fieldset class="form-credentials">
										<div class="list-group textfield-list-group">
											<div class="list-group-item textfield-list-group-item">
												<label class="sr-only" for="form_login_modal_username">用户名</label>
												<input type="text" name="username" id="form_login_modal_username" class="required email list-group-form-control" placeholder="用户名" autocomplete="off" value="">
											</div>
											<div class="list-group-item textfield-list-group-item">
												<label class="sr-only" for="form_login_modal_password">密码</label>
												<input type="password" name="pwd" id="form_login_modal_password" class="required list-group-form-control" placeholder="密码" autocomplete="off" value="">
											</div>
										</div>
									</fieldset>
									<fieldset class="form-actions">
										<button type="submit" class="btn btn-default btn-red btn-block btn-xl btn-submit">登录</button>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	</body></html>