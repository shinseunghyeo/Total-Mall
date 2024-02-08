package human.smart.service.member;

import human.smart.totalMall.vo.MemberVO;

public interface MemberService {

	default int join(MemberVO memberVO) {return 0;}
	default MemberVO login(String member_id, String member_pw) {return null;}
	default MemberVO findId(String member_id, String email) {return null;}
	default MemberVO findPw(String member_id, String email) {return null;}
	default MemberVO findPwProcess(MemberVO memberVO) {return null;}

}
