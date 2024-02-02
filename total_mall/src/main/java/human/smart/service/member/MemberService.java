package human.smart.service.member;

import human.smart.totalMall.vo.MemberVO;

public interface MemberService {

	default int join(MemberVO memberVO) {return 0;}

}
