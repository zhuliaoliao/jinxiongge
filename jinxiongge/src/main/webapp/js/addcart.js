
function addcart(pid,name,price){
		console.log(name);
		$.ajax({
			url :'/jinxiongge/shoppingcart/add.do',
			type:'POST',
			data : {gid :pid,goodsname :name,goodsprice:price},
			async : false,
			success :function(result){
				$('#messagebox').css(
					{
					left: "50%",
				    height: 30
					}
				).show(300).delay(1000).hide(300);
				$('#messageboxtext').text(result.message);
			}
		
		});
}





