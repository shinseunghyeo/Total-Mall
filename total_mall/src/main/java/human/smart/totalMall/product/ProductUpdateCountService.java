package human.smart.totalMall.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import lombok.AllArgsConstructor;

@Service("bUpdateCount")
@AllArgsConstructor
public class ProductUpdateCountService implements ProductService {
	
	private ProductDAO dao;
	
	@Override
	public void updateReadCount(int b_idx) {
		dao.updateReadCount(b_idx);
	}

}
