package human.smart.service.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.ReviewVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("myReview")
@AllArgsConstructor
public class ProductMyreviewService implements ProductService {
	private ProductDAO dao;
	@Override
	public List<ReviewVO> myreview(SearchVO vo){
		vo.setStartIdx((vo.getPageNum()-1)*10);	
		return dao.myreview(vo);
	}
}
