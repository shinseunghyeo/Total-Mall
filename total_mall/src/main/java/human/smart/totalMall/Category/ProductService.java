package human.smart.totalMall.Category;

import human.smart.totalMall.vo.ProductVO;

public interface ProductService {
	default ProductVO getProduct(String category) {return null;}
}