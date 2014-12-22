
function pointlike(pid){
		$.ajax({
			url :'/jinxiongge/goods/dianzan.do',
			data : {gid :pid},
			type:'POST',
			async : false,
			success :function(result){
				
				alert(result.message);
					if(result.code==0){
						location.reload();
					}
//					$('#messagebox').css(
//							{
//							left: "50%",
//						    height: 30
//							}
//						).show(300).delay(1000).hide(300);
//						$('#messageboxtext').text(result.message);
					
					
				}
				
			}
		
		);
}



