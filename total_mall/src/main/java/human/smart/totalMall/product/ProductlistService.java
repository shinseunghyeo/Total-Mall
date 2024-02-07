package human.smart.totalMall.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.ProductVO;
import lombok.AllArgsConstructor;

@Service("cList")
@AllArgsConstructor
public class ProductlistService implements ProductService {
	
	private ProductDAO dao;

	@Override
	public ProductVO getProduct(String category) {
		return dao.getProduct(category);
	}
	
	

}
