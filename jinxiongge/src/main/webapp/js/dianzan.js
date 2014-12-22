
function pointlike(pid){
		$.ajax({
			url :'/jinxiongge/goods/dianzan.do',
			data : {gid :pid},
			async : false,
			success :function(data){
				alert(data.message);
				if(data.code==0){
					location.reload();
				}
			}
		
		});
}



