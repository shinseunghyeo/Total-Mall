package human.smart.totalMall.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("pCon")
public class ProductPConService implements ProductService {

private ProductDAO dao;
	
	@Override
	public int p_con(){
		return dao.p_con();
	}
}
