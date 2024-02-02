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
	
	public int join(MemberVO vo) throws SQLException{
		return sqlSession.insert(MAPPER+".join",vo);
	}
}
