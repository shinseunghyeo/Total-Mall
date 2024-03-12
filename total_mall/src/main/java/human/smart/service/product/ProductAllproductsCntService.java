package human.smart.service.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("allproductsCnt")
@AllArgsConstructor
public class ProductAllproductsCntService implements ProductService {
	
	private ProductDAO dao;
	
	@Override
	public int allproductsCnt(SearchVO vo) {
		return dao.allproductsCnt(vo);
	}
	
	

}
