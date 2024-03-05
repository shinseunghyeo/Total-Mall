package human.smart.totalMall.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.ReviewVO;
import lombok.AllArgsConstructor;

@Service("myReview")
@AllArgsConstructor
public class ProductMyreviewService implements ProductService {
	private ProductDAO dao;
	@Override
	public List<ReviewVO> myreview(int m_idx){
		return dao.myreview(m_idx);
	}
}
