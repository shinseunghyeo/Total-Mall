package human.smart.service.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("sellerOrderCnt")
@AllArgsConstructor
public class ProductSellerOrderCntService implements ProductService {
	
	private ProductDAO dao;
	
	@Override
	public int sellerOrderCnt(SearchVO vo) {
		return dao.sellerOrderCnt(vo);
	}
	
	

}
