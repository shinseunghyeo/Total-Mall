package human.smart.service.member;

import java.sql.SQLException;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.MemberVO;
import lombok.AllArgsConstructor;

@Service("mLogin")
@AllArgsConstructor
public class MemberLoginService implements MemberService {
	private MemberDAO dao;
	private BCryptPasswordEncoder cryptPasswordEncoder;
		
	@Override
	public MemberVO login(String member_id, String member_pw) {
		MemberVO memberVO = null;
		
		try {
			String encodePassword = dao.getPassword(member_id);
			if(encodePassword != null) {
				if(cryptPasswordEncoder.matches(member_pw,encodePassword)) {
					memberVO = dao.login(member_id);
				}
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return memberVO;
	}

}
