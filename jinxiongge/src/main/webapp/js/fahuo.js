
function fahuo(pid){
		$.ajax({
			url :'/jinxiongge/orders/fahuo.do',
			data : {oid :pid},
			type:'POST',
			async : false,
			success :function(data){
				alert(data.message);
				if(data.code==0){
					location.reload();
				}
			}
		
		});
}



