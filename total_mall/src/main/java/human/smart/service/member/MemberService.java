package human.smart.service.member;

import java.util.List;

import human.smart.totalMall.vo.MemberVO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.SearchVO;
import human.smart.totalMall.vo.VocVO;

public interface MemberService {

	default int join(MemberVO memberVO) {return 0;}
	default MemberVO login(String member_id, String member_pw) {return null;}
	default MemberVO findId(String member_name, String email) {return null;}
	default MemberVO findPw(String member_id, String email) {return null;}
	default MemberVO findPwProcess(MemberVO memberVO) {return null;}
	default List<ProductVO> getProducts3(SearchVO searchVO){return null;}
	default MemberVO getMember(int m_idx){return null;}
	default List<MemberVO> getMembers(SearchVO vo){return null;}
	default MemberVO buyerUpdateProcess(MemberVO memberVO) {return null;}
	default int cancel(int m_idx) {return 0;}
	default List<VocVO> getInquirylist(){return null;}
	default List<VocVO> getInquirylistp(int m_idx){return null;}
	default int gradeUpdate(MemberVO vo){return 0;}
	default MemberVO sellerUpdateProcess(MemberVO memberVO) {return null;}
	default int cancelUpdate(MemberVO vo){return 0;}

}
