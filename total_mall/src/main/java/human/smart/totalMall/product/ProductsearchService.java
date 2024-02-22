package human.smart.totalMall.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("pSearch")
@AllArgsConstructor
public class ProductsearchService implements ProductService {
	
	private ProductDAO dao;

	@Override
	public List<ProductVO> getProducts2(SearchVO vo){
		vo.setStartIdx((vo.getPageNum()-1)*5);
		return dao.getProducts2(vo);
	}
	
}
