package human.smart.service.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("totalOrderCnt")
@AllArgsConstructor
public class ProductTotalOrderCntService implements ProductService {
	
	private ProductDAO dao;
	
	@Override
	public int totalOrderCnt(SearchVO vo) {
		return dao.totalOrderCnt(vo);
	}
	
	

}
