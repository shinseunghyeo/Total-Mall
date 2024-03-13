package human.smart.service.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("reviewCnt")
@AllArgsConstructor
public class ProductReviewCntService implements ProductService {
	
	private ProductDAO dao;
	
	@Override
	public int reviewCnt(SearchVO vo) {
		return dao.reviewCnt(vo);
	}
	
	

}
