package human.smart.totalMall.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("pContinued")
public class ProductContinued implements ProductService {

private ProductDAO dao;
	
	@Override
	public int continued(int p_idx){
		return dao.continued(p_idx);
	}
}
