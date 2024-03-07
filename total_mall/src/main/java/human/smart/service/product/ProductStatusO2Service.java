package human.smart.service.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.CartVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("statusO2")
public class ProductStatusO2Service implements ProductService {

private ProductDAO dao;
	
	@Override
	public List<CartVO> statusO2(int m_idx){
		return dao.statusO2(m_idx);
	}
}
