package human.smart.totalMall.Category;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.ProductVO;
import lombok.AllArgsConstructor;

@Service("cList")
@AllArgsConstructor
public class ProductlistService implements ProductService {
	
	private ProductDAO dao;

	@Override
	public ProductVO getProduct(int p_idx) {
		return dao.getProduct(p_idx);
	}
	
	

}