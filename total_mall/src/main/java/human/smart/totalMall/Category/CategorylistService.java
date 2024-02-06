package human.smart.totalMall.Category;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.CategoryDAO;
import human.smart.totalMall.vo.CategoryVO;
import lombok.AllArgsConstructor;

@Service("cList")
@AllArgsConstructor
public class CategorylistService implements CategoryService {
	
	private CategoryDAO dao;

	@Override
	public CategoryVO getCategory(int k_idx) {
		return dao.getCategory(k_idx);
	}
	
	

}
