package human.smart.totalMall.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.ProductVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("statusP")
public class ProductStatusPService implements ProductService {

private ProductDAO dao;
	
	@Override
	public List<ProductVO> statusP(int m_idx){
		return dao.statusP(m_idx);
	}
}
