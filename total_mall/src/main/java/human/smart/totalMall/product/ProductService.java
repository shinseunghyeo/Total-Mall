package human.smart.totalMall.product;

import human.smart.totalMall.vo.ProductVO;

public interface ProductService {
	default ProductVO getProduct(String category) {return null;}
}