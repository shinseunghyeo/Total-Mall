package human.smart.service.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("mypList")
@AllArgsConstructor
public class ProductMyplistService implements ProductService {
	private ProductDAO dao;
	@Override
	public List<ProductVO> getProducts3(SearchVO vo){
		vo.setStartIdx((vo.getPageNum()-1)*10);
		return dao.getProducts3(vo);
	}
}
