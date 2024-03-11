package human.smart.service.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("todayProduct")
public class ProductTodayProductService implements ProductService {

private ProductDAO dao;
	
	@Override
	public int todayProduct(){
		return dao.todayProduct();
	}
}
