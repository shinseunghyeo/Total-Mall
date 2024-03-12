package human.smart.service.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("myproductCnt")
@AllArgsConstructor
public class ProductMyproductCntService implements ProductService {
	
	private ProductDAO dao;
	
	@Override
	public int myproductCnt(SearchVO vo) {
		return dao.myproductCnt(vo);
	}
	
	

}
