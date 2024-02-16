package human.smart.totalMall.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import human.smart.totalMall.common.PageNav;
import human.smart.totalMall.vo.CartVO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.SearchVO;

public interface ProductService {
	default PageNav setPageNav(PageNav pageNav, int pageNum, int pageBlock){return null;}
	default ProductVO getProduct(int p_idx) {return null;}
	default int insert(ProductVO vo, HttpServletRequest request) {return 0;}
	default List<ProductVO> getProducts(SearchVO vo){return null;}
	default List<ProductVO> getProducts2(SearchVO vo){return null;}
	default int cartInsert(CartVO vo, HttpServletRequest request) {return 0;}
	default List<CartVO> getCarts(int m_idx){return null;}
	default int cartQuantityUpdate(CartVO vo) {return 0;};
}