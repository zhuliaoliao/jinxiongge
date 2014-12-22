
function updatecart(pid,pflag){
		console.log(name);
		$.ajax({
			url :'/jinxiongge/shoppingcart/update.do',
			data : {gid :pid,flag :pflag},
			async : false,
			success :function(data){
				alert(data.message);
				if(data.code==0){
					location.reload();
				}
			}
		
		});
}

function deletecartitem(pid){
	console.log(name);
	$.ajax({
		url :'/jinxiongge/shoppingcart/delete.do',
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

