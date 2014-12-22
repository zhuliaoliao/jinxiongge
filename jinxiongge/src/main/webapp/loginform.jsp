<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!-- ajax form表单提交 
<script type="text/javascript" src="/jinxiongge/js/jquery.form.js"></script>   
<script>
        // wait for the DOM to be loaded
        $(document).ready(function() {
            // bind 'myForm' and provide a simple callback function
            $('#signin').ajaxForm(function() {
            	/* alert(htmlobj.message); */
                alert("Thank you for your comment!zzz");
            });
        });
 </script>
    
-->

<div id="signin" class="modal-login modal fade" role="dialog" aria-labelledby="modal-title" aria-hidden="true" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<img class="logo" src="/jinxiongge/image/mcdelivery_logo_zh.jpg" alt="">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							
						</button>
					</div>
					<div class="modal-body">
						<h2 id="modal-title">欢迎，登陆后开始订餐</h2>
						<div class="row">
							<div class="col-xs-offset-3 col-xs-6">
								<form action="/jinxiongge/user/login.do" method="post" accept-charset="utf-8" role="form"  name="form_login_modal" class="form-login-modal form-login" data-required-symbol="false">
									<fieldset class="form-credentials">
										<div class="list-group textfield-list-group">
											<div class="list-group-item textfield-list-group-item">
												<label class="sr-only" for="form_login_modal_username">邮箱</label>
												<input type="text" name="username" id="form_login_modal_username" class="required email list-group-form-control" placeholder="用户名或手机" autocomplete="off" value="">
											</div>
											<div class="list-group-item textfield-list-group-item">
												<label class="sr-only" for="form_login_modal_password">密码</label>
												<input type="password" name="pwd" id="form_login_modal_password" class="required list-group-form-control" placeholder="密码" autocomplete="off" value="">
											</div>
										</div>
										
										
									</fieldset>
									<fieldset class="form-actions">
										<button type="submit" class="btn btn-default btn-red btn-block btn-xl btn-submit">登录</button>
										
										<a class="action-link" href="/jinxiongge/registuser.jsp">
											<span class="header-new-customer">注册用户</span>
											
										</a>
									</fieldset>
								<input type="hidden" name="csrfValue" value="6A58341"></form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>