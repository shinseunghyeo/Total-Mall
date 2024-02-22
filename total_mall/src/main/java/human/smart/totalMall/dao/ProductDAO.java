package human.smart.totalMall.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import human.smart.totalMall.vo.CartVO;
import human.smart.totalMall.vo.OrderVO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.ReviewVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class ProductDAO{
	
	/* MyBatis를 사용할 때 각각의 Mapper 내에 있는 SQL문을 Mapper의 네임스페이스와 
	   SQL문의 id값으로 구분함 => 각 Mapper 파일의 네임스페이스를 상수로 정의해서
	   SqlSession 메소드 호출시 사용함
	 */
	public static final String MAPPER = "human.smart.totalMall.ProductMapper";
	
	//MyBatis를 이용한 DB 연결 및 작업을 담당할 SqlSession 객체를 필드로 정의함
	private final SqlSession sqlSession;
	
	public ProductVO getProduct(int p_idx){
		return sqlSession.selectOne(MAPPER+".getProduct", p_idx);
	}
	
	// 상품 등록하기
	public int insert(ProductVO vo) {
		return sqlSession.insert(MAPPER + ".insert", vo);
	}
	// 상품 수정하기
	public int modify(ProductVO vo) {
		return sqlSession.update(MAPPER + ".modify", vo);
	}

	// 상품 판매중단 하기
	public int discontinued(int p_idx) {
		return sqlSession.update(MAPPER + ".discontinued", p_idx);
	}

	// 상품 판매재개 하기
	public int continued(int p_idx) {
		return sqlSession.update(MAPPER + ".continued", p_idx);
	}

	//내 상품보기
	public List<ProductVO> getProducts3(SearchVO vo) {
		return sqlSession.selectList(MAPPER+".getProducts3", vo);
	}
	
	//판매재개
	public int p_con() {
		return sqlSession.selectOne(MAPPER+".p_con");
	}
	
	//판매중단
	public int p_discon() {
		return sqlSession.selectOne(MAPPER+".p_discon");
	}
	
	public List<ProductVO> getProducts(SearchVO vo){
		return sqlSession.selectList(MAPPER+".getProducts", vo);
	}
	public List<ProductVO> getProducts2(SearchVO vo){
		return sqlSession.selectList(MAPPER+".getProducts2", vo);
	}
	//총 게시물수 조회
	public int getTotalCount(SearchVO vo) {
		return sqlSession.selectOne(MAPPER+".getTotalCount", vo);
	}
	public int reInsert(ReviewVO review) {
		return sqlSession.insert(MAPPER + ".reInsert", review);
	}
	
	//장바구니에 상품 추가하기
	public int cartInsert(CartVO vo) {
		return sqlSession.insert(MAPPER + ".cartInsert", vo);
	}
	
	//장바구니 리스트 출력하기
	public List<CartVO> getCarts(int m_idx){
		return sqlSession.selectList(MAPPER+".getCarts", m_idx);
	}

	
	//장바구니 수량 변경하기
	public int cartQuantityUpdate(CartVO vo) {
		return sqlSession.update(MAPPER+".cartQuantityUpdate",vo);
	}
	
	//장바구니 상품 삭제하기
	public int cartDelete(CartVO vo) {
		return sqlSession.update(MAPPER+".cartDelete",vo);
	}
	
	//장바구니 테이블 결제여부 변경하기
	public int cartPaymentUpdate(int m_idx) {
		return sqlSession.update(MAPPER+".cartPaymentUpdate", m_idx);
	}
	
	//장바구니 상품 확인하기
	public CartVO cartCheck(CartVO vo) {
		CartVO vo2 = null;
		try {
		    vo2 = sqlSession.selectOne(MAPPER+".cartCheck", vo);
		} catch (PersistenceException e) {
		    vo2 = null;
		}
		return vo2;
	}
	
	//주문 테이블 상품 추가하기
	public int orderInsert(OrderVO vo) {
		return sqlSession.insert(MAPPER + ".orderInsert", vo);
	}
	
	
	//직접 구매 상품 장바구니에 상품 추가하기
	public int cartInsert2(CartVO vo) {
		return sqlSession.insert(MAPPER + ".cartInsert2", vo);
	}
	

}
