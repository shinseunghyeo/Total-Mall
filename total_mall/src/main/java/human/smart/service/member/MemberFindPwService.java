package human.smart.service.member;

import java.sql.SQLException;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.MemberVO;
import lombok.AllArgsConstructor;

@Service("mFindPw")
@AllArgsConstructor
public class MemberFindPwService implements MemberService {
	private MemberDAO dao;
	
		
	@Override
	public MemberVO findPw(String member_id, String email) {
		MemberVO memberVO = null;
		
		memberVO = dao.findPw(member_id, email);
		
		
		return memberVO;
	}

}
