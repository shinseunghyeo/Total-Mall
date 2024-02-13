package human.smart.totalMall.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import human.smart.totalMall.vo.CartVO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.SearchVO;

public interface ProductService {
	default ProductVO getProduct(String category) {return null;}
	default int insert(ProductVO vo, HttpServletRequest request) {return 0;}
	default List<ProductVO> getProducts(SearchVO vo){return null;}
	default List<ProductVO> getProducts2(SearchVO vo){return null;}
	default int cartInsert(CartVO vo, HttpServletRequest request) {return 0;};
}