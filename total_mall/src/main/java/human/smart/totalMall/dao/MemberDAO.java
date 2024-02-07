package human.smart.totalMall.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import human.smart.totalMall.vo.MemberVO;
import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class MemberDAO {
	public static final String MAPPER = "human.smart.totalMall.MemberMapper";
	
	private final SqlSession sqlSession;
	
	//회원가입하기
	public int join(MemberVO vo) throws SQLException{
		return sqlSession.insert(MAPPER+".join",vo);
	}
	//로그인 처리하기
	public MemberVO login(String member_id) throws SQLException{
		return sqlSession.selectOne(MAPPER+".login", member_id);
	}
	//비밀번호 가져오기
	public String getPassword(String member_id) {
		return sqlSession.selectOne(MAPPER+".getPassword", member_id);
	}
}
