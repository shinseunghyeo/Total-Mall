package human.smart.service.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("allorderCnt")
@AllArgsConstructor
public class ProductAllOrderCntService implements ProductService {
	
	private ProductDAO dao;
	
	@Override
	public int allorderCnt(SearchVO vo) {
		return dao.allorderCnt(vo);
	}
	
	

}
