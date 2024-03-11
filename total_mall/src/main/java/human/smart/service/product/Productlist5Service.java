package human.smart.service.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("cList5")
@AllArgsConstructor
public class Productlist5Service implements ProductService {
	
	private ProductDAO dao;

	@Override
	public List<ProductVO> getProducts5(SearchVO vo){
		return dao.getProducts5(vo);
	}

}
