package human.smart.totalMall.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import human.smart.totalMall.vo.MemberVO;
import human.smart.totalMall.vo.NoticeVO;
import human.smart.totalMall.vo.SearchVO;
import human.smart.totalMall.vo.VocVO;
import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class CustomercenterDAO{
	
	/* MyBatis를 사용할 때 각각의 Mapper 내에 있는 SQL문을 Mapper의 네임스페이스와 
	   SQL문의 id값으로 구분함 => 각 Mapper 파일의 네임스페이스를 상수로 정의해서
	   SqlSession 메소드 호출시 사용함
	 */
	public static final String MAPPER = "human.smart.com.CustomercenterMapper";
	
	//MyBatis를 이용한 DB 연결 및 작업을 담당할 SqlSession 객체를 필드로 정의함
	private final SqlSession sqlSession;
	
	//게시글 입력
	public int vocInsert(VocVO voc) {
		return sqlSession.insert(MAPPER+".vocInsert", voc);
	}
	//게시글 입력
	public int notInsert(NoticeVO not) {
		return sqlSession.insert(MAPPER+".notInsert", not);
	}
	
	//검색관련 데이터를 적용하여 모든 게시글 조회
	public List<NoticeVO> getBoards(SearchVO vo){
		return sqlSession.selectList(MAPPER+".getBoards", vo);
	}
	
	//조회수 업데이트
	public void updateReadCount(int b_idx) {
		sqlSession.update(MAPPER+".updateReadCount",b_idx);
	}
	
	public List<VocVO> getBoard(int m_idx){
		return sqlSession.selectList(MAPPER+".getBoard", m_idx);
	}
	
	//게시글 수정하기
	public int update(NoticeVO vo) {
		return sqlSession.update(MAPPER+".update", vo);
	}
	
	//게시글 삭제 처리
	public int delete(int b_idx) {
		return sqlSession.update(MAPPER+".delete", b_idx);
	}

	//총 게시물수 조회
	public int getTotalCount(SearchVO vo) {
		return sqlSession.selectOne(MAPPER+".getTotalCount", vo);
	}
}
