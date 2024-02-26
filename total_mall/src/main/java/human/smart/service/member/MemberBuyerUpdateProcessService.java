package human.smart.service.member;

import java.sql.SQLException;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.MemberVO;
import lombok.AllArgsConstructor;

@Service("mBuyerUpdateProcess")
@AllArgsConstructor
public class MemberBuyerUpdateProcessService implements MemberService {
	private MemberDAO dao;
	private BCryptPasswordEncoder cryptPasswordEncoder;
	
	@Override
	public MemberVO buyerUpdateProcess(MemberVO memberVO) {
		MemberVO newVO = null;//회원가입 실패시 결과값
		String member_pw = memberVO.getMember_pw();
		System.out.println("member_pw:"+member_pw);
		try {
			
			//회원정보 중 아이디를 이용해서 암호화된 비밀번호 가져오기
			String encodePassword = dao.getPassword(memberVO.getMember_id());
			
			//회원정보 수정페이지에서 새 비밀번호를 입력한 경우
			if(member_pw.length() != 0) {
				String newPassword = cryptPasswordEncoder.encode(member_pw);
				memberVO.setMember_pw(newPassword);
				
			}else {//새 비밀번호를 입력하지 않은 경우
				memberVO.setMember_pw(encodePassword);
			}
			
			
			newVO=dao.BuyerUpdateProcess(memberVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return newVO;
	}

}