package human.smart.totalMall.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import lombok.AllArgsConstructor;
@AllArgsConstructor 
@Service("pDiscontinued")
public class ProductDiscontinued implements ProductService {

private ProductDAO dao;
	
	@Override
	public int discontinued(int p_idx){
		return dao.discontinued(p_idx);
	}
}
