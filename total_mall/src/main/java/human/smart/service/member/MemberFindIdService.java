package human.smart.service.member;

import java.sql.SQLException;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.MemberVO;
import lombok.AllArgsConstructor;

@Service("mFindId")
@AllArgsConstructor
public class MemberFindIdService implements MemberService {
	private MemberDAO dao;
	
		
	@Override
	public MemberVO findId(String member_name, String email) {
		MemberVO memberVO = null;
		
		memberVO = dao.findId(member_name, email);
		
		
		return memberVO;
	}

}
