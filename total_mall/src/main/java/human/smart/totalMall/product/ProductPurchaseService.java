package human.smart.totalMall.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.OrderVO;
import lombok.AllArgsConstructor;

@Service("pPurchaseInsert")
@AllArgsConstructor
public class ProductPurchaseService implements ProductService {
	
	private ProductDAO dao;

	@Override
	public int purchaseInsert(OrderVO vo) {
		int result = 0;
		
		result = dao.purchaseInsert(vo);
		
		return result;
		
	}
	
	
	
}
