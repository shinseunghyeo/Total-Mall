package human.smart.totalMall.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("pTotalCount")
@AllArgsConstructor
public class ProductTotalCountService implements ProductService {
	
	private ProductDAO dao;
	
	@Override
	public int getTotalCount(SearchVO vo) {
		return dao.getTotalCount(vo);
	}
	
	

}
