package human.smart.totalMall.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.ProductVO;
import lombok.AllArgsConstructor;

@Service("allpList")
@AllArgsConstructor
public class ProductAllplistService implements ProductService {
	private ProductDAO dao;
	@Override
	public List<ProductVO> getProducts4(){
		return dao.getProducts4();
	}
}
