package human.smart.service.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.ProductVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("statusP2")
public class ProductStatusP2Service implements ProductService {

private ProductDAO dao;
	
	@Override
	public List<ProductVO> statusP2(){
		return dao.statusP2();
	}
}
