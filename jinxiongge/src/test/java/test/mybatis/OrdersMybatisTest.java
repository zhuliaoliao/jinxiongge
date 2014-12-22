package test.mybatis;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.jinxiongge.common.util.JinXiongGeUtil;
import com.jinxiongge.model.Orders;
import com.jinxiongge.model.ShoppingCartItem;
import com.jinxiongge.result.model.RtResult;
import com.jinxiongge.service.inter.ShoppingOrdersService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring.xml"})
public class OrdersMybatisTest {

	private ShoppingOrdersService shoppingOrdersService;
	
	@Autowired
	public void setShoppingOrdersService(ShoppingOrdersService shoppingOrdersService) {
		this.shoppingOrdersService = shoppingOrdersService;
	}


	@Test
	public void add() throws Exception {
		Orders orders =new Orders(11, "zhu2", "186183", "address3", "zhifubao", "shunfeng", JinXiongGeUtil.StandardDate2String(new Date()), 100.0, "beizhu", 0);
		List<ShoppingCartItem> shoppingCartItemlist=new ArrayList<ShoppingCartItem>();
		ShoppingCartItem item0=new ShoppingCartItem(1, 2, null, 2300.2, 2, 1300.2);
		ShoppingCartItem item1=new ShoppingCartItem(2, 3, null, 5300.2, 5, 5300.2);
		shoppingCartItemlist.add(item0);
		shoppingCartItemlist.add(item1);
		orders.setShoppingCartItemlist(shoppingCartItemlist);
//		shoppingOrdersService.add(orders);
		shoppingOrdersService.add(orders);
	}
	
	@Test
	public void update() {
		Orders orders =new Orders(11, "zhu1", "186181", "address1", "zhifubao1", "shunfeng1", JinXiongGeUtil.StandardDate2String(new Date()), 100.110, "beizhu", 1);
		orders.setOid(99);
		shoppingOrdersService.update(orders);
		
	}
	
	@Test
	public void findPageBy() {
		Map<String, Object> params=new HashMap<String, Object>();
		params.put("uid", "11");
		PageBounds pageBounds = new PageBounds(1, 2, null,true);
		RtResult result=shoppingOrdersService.findPageBy(params, pageBounds);
		System.out.println(result);
	}
	
	@Test
	public void selectShoppingCartItems() {
		RtResult result=shoppingOrdersService.selectShoppingCartItems(99);
		System.out.println(result);
	}
	
	


}
