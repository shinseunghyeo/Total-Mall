package human.smart.totalMall.Category;

import human.smart.totalMall.vo.CategoryVO;

public interface CategoryService {
	default CategoryVO getCategory(int k_idx) {return null;}
}