package human.smart.totalMall.product;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.ReviewVO;
import lombok.AllArgsConstructor;

@Service("pItem")
@AllArgsConstructor
public class ProductitemService implements ProductService {
	
	private ProductDAO dao;

	@Override
	public ProductVO getProduct(int p_idx) {
		return dao.getProduct(p_idx);
	}
	@Override
	public List<ReviewVO> getReview(Map<String, Object> paramMap) {
		return dao.getReview(paramMap);
	}
	
	
}
