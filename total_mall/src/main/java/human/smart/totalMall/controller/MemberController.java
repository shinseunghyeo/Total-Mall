package human.smart.totalMall.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import human.smart.service.member.MemberService;
import human.smart.totalMall.vo.MemberVO;
import lombok.Setter;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Setter(onMethod_={ @Autowired })
	MemberService mJoin, mLogin, mFindId, mFindPw, mFindPwProcess;
	
	
	
	
	
	//로그인 페이지 요청
	@GetMapping("/login.do")
	public String login() {
		return "member/login";
	}
	//로그인 처리 요청
	@PostMapping("/loginProcess.do")
	public String loginProcess(String member_id, String member_pw,
								HttpServletRequest request, Model model) {
		String viewPage = "member/login";
		
		MemberVO memberVO = mLogin.login(member_id, member_pw);
		
		if(memberVO != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", memberVO);
			viewPage = "redirect:/TotalMall.do";
		}else {
			model.addAttribute("msg", "아이디 또는 비밀번호가 맞지 않습니다.");
		}
			
		
		return viewPage;
	}
	
	//로그아웃 처리 요청
	@GetMapping("/logout.do")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/TotalMall.do";
	}
	
	//회원가입 페이지 요청
	@GetMapping("/join.do")
	public String join() {
		return "member/join";//views/member폴더에 대한 경로 추가
	}
	
	//구매자 회원가입 페이지 요청 및 처리1
	@PostMapping("/buyerJoinProcess1.do")
	public String joinProcess1(HttpServletRequest request, MemberVO memberVO, Model model){
		//체크박스 값 받아와서 ,로 구분 후 String타입으로 변경
		String[] categories = request.getParameterValues("categorie");
		String categorie = String.join(",", categories);
		//테스트용
		System.out.println(categorie);
		//카테고리를 String타입으로 변경한 것을 memberVO객체에 저장
		model.addAttribute("categorie", memberVO);
		return "member/buyerJoin";
	}
	
	
	//구매자 회원가입 처리2
	@PostMapping("/buyerJoinProcess2.do")
	public String joinProcess2(MemberVO memberVO, Model model) {
		String viewPage = "member/buyerJoin";
		
		if(mJoin.join(memberVO)==1) {
			viewPage = "redirect:/member/login.do";
		}
		
		return viewPage;
	}
	
	//판매자 회원가입 페이지 요청 및 처리1
	@PostMapping("/sellerJoinProcess1.do")
	public String sellerJoinProcess1(HttpServletRequest request, MemberVO memberVO, Model model){
		
		return "member/sellerJoin";
	}
	
	//판매자 회원가입 페이지 요청 및 처리2
	@PostMapping("/sellerJoinProcess2.do")
	public String sellerJoinProcess2(HttpServletRequest request, MemberVO memberVO, Model model){
		model.addAttribute("memberVO", memberVO);
		return "member/sellerJoin2";
	}
	
	//판매자 회원가입 페이지 요청 및 처리3
	@PostMapping("/sellerJoinProcess3.do")
	public String sellerJoinProcess3(HttpServletRequest request, MemberVO memberVO, Model model){
		String viewPage = "member/sellerJoin2";
		if(mJoin.join(memberVO)==1) {
			viewPage = "redirect:/member/login.do";
		}
		return viewPage;
	}
	
	//아이디/비밀번호찾기 페이지 요청
	@GetMapping("/findidpw.do")
	public String findidpw() {
		return "member/findidpw";
	}
	
	//아이디 찾기 처리
	@PostMapping("/findId.do")
	public String findId(String member_name, String email,Model model) {
		String viewPage = "member/findidpw";
		
		MemberVO memberVO = mFindId.findId(member_name, email);
		if(memberVO != null) {
			model.addAttribute("memberVO", memberVO);
			viewPage = "member/findid";
		}else {
			model.addAttribute("msg", "이름과 이메일에 맞는 아이디가 없습니다.");
		}
		
		return viewPage;
	}
	
	//비밀번호 찾기 처리
	@PostMapping("/findPw.do")
	public String findPw(String member_id, String email, Model model) {
		String viewPage = "member/findidpw";
		MemberVO memberVO = mFindPw.findPw(member_id, email);
		
		
		if(memberVO != null) {
			model.addAttribute("memberVO", memberVO);
			viewPage = "member/findPw";
		}else {
			model.addAttribute("msg2", "아이디와 이메일에 맞는 아이디가 없습니다.");
		}
		
		return viewPage;
	}
	
	//비밀번호 변경 처리
	@PostMapping("/findPwProcess.do")
	public String findPwProcess(MemberVO memberVO) {
		String viewPage = "member/findPw";
		
		MemberVO newVO = mFindPwProcess.findPwProcess(memberVO);
		if(newVO != null) {
			viewPage = "redirect:/TotalMall.do";
		}
		return viewPage;
	}
}
