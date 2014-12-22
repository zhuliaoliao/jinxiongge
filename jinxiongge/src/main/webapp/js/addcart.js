
function addcart(pid,name,price){
		console.log(name);
		$.ajax({
			url :'/jinxiongge/shoppingcart/add.do',
			data : {gid :pid,goodsname :name,goodsprice:price},
			async : false,
			success :function(data){
				alert(data.message);
			}
		
		});
}



