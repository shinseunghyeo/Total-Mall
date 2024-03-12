package human.smart.service.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("allpList")
@AllArgsConstructor
public class ProductAllplistService implements ProductService {
	private ProductDAO dao;
	@Override
	public List<ProductVO> getProducts4(SearchVO vo){
		vo.setStartIdx((vo.getPageNum()-1)*10);
		return dao.getProducts4(vo);
	}
}
