
function freeze(pid,fre){
		$.ajax({
			url :'/jinxiongge/user/freezeuser.do',
			data : {uid :pid,freeze:fre},
			type:'POST',
			async : false,
			success :function(result){
				alert(result.message);
					if(result.code==0){
						location.reload();
					}
				}
			}
		);
}



