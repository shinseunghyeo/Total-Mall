package human.smart.totalMall.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import human.smart.totalMall.vo.CartVO;
import human.smart.totalMall.vo.ProductVO;
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
	
	public ProductVO getProduct(String category){
		return sqlSession.selectOne(MAPPER+".getProduct", category);
	}
	
	public int insert(ProductVO vo) {
		return sqlSession.insert(MAPPER + ".insert", vo);
	}
	public List<ProductVO> getProducts(SearchVO vo){
		return sqlSession.selectList(MAPPER+".getProducts", vo);
	}
	public List<ProductVO> getProducts2(SearchVO vo){
		return sqlSession.selectList(MAPPER+".getProducts2", vo);
	}
	
	//장바구니에 상품 추가하기
	public int cartInsert(CartVO vo) {
		return sqlSession.insert(MAPPER + ".cartInsert", vo);
	}

}
