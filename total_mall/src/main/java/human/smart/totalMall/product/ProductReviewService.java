package human.smart.totalMall.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.ProductVO;
import lombok.AllArgsConstructor;

@Service("pReview")
@AllArgsConstructor
public class ProductReviewService implements ProductService {
	
	private ProductDAO dao;

	@Override
	public ProductVO getProRev(int p_idx) {
		return dao.getProRev(p_idx);
	}
	
}
