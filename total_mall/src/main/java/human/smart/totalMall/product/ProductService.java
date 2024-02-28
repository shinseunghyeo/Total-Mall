package human.smart.totalMall.product;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import human.smart.totalMall.common.PageNav;
import human.smart.totalMall.vo.CartVO;
import human.smart.totalMall.vo.OrderVO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.PvocVO;
import human.smart.totalMall.vo.ReviewVO;
import human.smart.totalMall.vo.SearchVO;

public interface ProductService {
	default List<ProductVO> getMtoday() {return null;}
	default List<ProductVO> getMkind() {return null;}
	default List<ProductVO> getMchoice(String choiceId) {return null;}
	default List<ProductVO> getMcategory(int categoryId) {return null;}
	default PageNav setPageNav(PageNav pageNav, int pageNum, int pageBlock){return null;}
	default ProductVO getProduct(int p_idx) {return null;}
	default ProductVO getProRev(int p_idx) {return null;}
	default int pvocInsert(PvocVO voc, HttpServletRequest request) {return 0;}
	default List<ReviewVO> getReview(Map<String, Object> paramMap) {return null;}
	default int insert(ProductVO vo, HttpServletRequest request) {return 0;}
	default int updateReadCount(int p_idx) {return 0;}
	default List<ProductVO> getProducts(SearchVO vo){return null;}
	default List<ProductVO> getProducts2(SearchVO vo){return null;}
	default int reInsert(ReviewVO review, HttpServletRequest request) {return 0;}
	default int getTotalCount(SearchVO vo) {return 0;}
	default int cartInsert(CartVO vo, HttpServletRequest request) {return 0;}
	default List<CartVO> getCarts(int m_idx){return null;}
	default int cartQuantityUpdate(CartVO vo) {return 0;}
	default int cartDelete(CartVO vo) {return 0;}
	default int purchaseInsert(OrderVO vo) {return 0;}
	default List<CartVO> getOrders(int m_idx){return null;}
	default int modify(ProductVO vo, HttpServletRequest request){return 0;}
	default int discontinued(int p_idx) {return 0;}
	default int continued(int p_idx) {return 0;}
	default List<ProductVO> getProducts3(SearchVO vo){return null;}
	default int p_discon(){return 0;}
	default int p_con(){return 0;}
	default List<CartVO> getOrders2(int m_idx){return null;}
	default List<ProductVO> getProducts4(){return null;}
	default List<CartVO> getOrders3(){return null;}
	default List<CartVO> getOrders_1(int m_idx){return null;} 
	
	
	
	default int cartPaymentUpdate(int m_idx) {return 1;}
	default int orderInsert(OrderVO vo) {return 0;}
	default int cartInsert2(CartVO vo) {return 0;}
	default CartVO cartCheck(CartVO vo) {return null;}
	default int cartOidxUpdate(int m_idx, int o_idx) {return 0;}
}