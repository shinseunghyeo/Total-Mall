package human.smart.totalMall.product;

import javax.servlet.http.HttpServletRequest;

import human.smart.totalMall.vo.ProductVO;

public interface ProductService {
	default ProductVO getProduct(String category) {return null;}

	default int insert(ProductVO vo, HttpServletRequest request) {return 0;}
}