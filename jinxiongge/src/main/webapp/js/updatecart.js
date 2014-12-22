
function updatecart(pid,pflag){
		console.log(name);
		$.ajax({
			url :'/jinxiongge/shoppingcart/update.do',
			data : {gid :pid,flag :pflag},
			type:'POST',
			async : false,
			success :function(result){
				alert(result.message);
				if(result.code==0){
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
		type:'POST',
		async : false,
		success :function(result){
			alert(result.message);
			if(result.code==0){
				location.reload();
			}
		}
	
	});
}

