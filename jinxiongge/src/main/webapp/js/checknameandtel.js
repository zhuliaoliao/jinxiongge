
function checkname(){
	var name=$('#form_accountsetting_usernamee').val();
		$.ajax({
			url :'/jinxiongge/user/isexist.do',
			data : {username :name},
			async : false,
			success :function(data){
				
				$('#registusername').text(data.message);
				if(data.code==0){
					alert(data.message);
					$("#registusername").css("color","red");
					$('#form_accountsetting_usernamee').focus().select();
				}else{
					$("#registusername").css("color","green");
				}
			}
		});
}
function checktel(){
	var phone=$('#form_accountsetting_tel').val();
	$.ajax({
		url :'/jinxiongge/user/isexist.do',
		data : {tel :phone},
		async : false,
		success :function(data){
			
			$('#registtel').text(data.message);
			if(data.code==0){
				alert(data.message);
				$("#registtel").css("color","red");
				$('#form_accountsetting_tel').focus().select();
			}else{
				$("#registtel").css("color","green");
			}
		}
	});
}



