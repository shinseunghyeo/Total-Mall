package human.smart.totalMall.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("pDiscon")
public class ProductPDisconService implements ProductService {

private ProductDAO dao;
	
	@Override
	public int p_discon(){
		return dao.p_discon();
	}
}
