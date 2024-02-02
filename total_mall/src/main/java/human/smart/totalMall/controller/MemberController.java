package human.smart.totalMall.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	MemberService mJoin;
	
	
	
	
	
	//로그인 페이지 요청
	@GetMapping("/login.do")
	public String login() {
		return "member/login";
	}
	
	//회원가입 페이지 요청
	@GetMapping("/join.do")
	public String join() {
		return "member/join";//views/member폴더에 대한 경로 추가
	}
	
	//구매자 회원가입 페이지 요청 및 처리1
	@PostMapping("/joinProcess1.do")
	public String join2(HttpServletRequest request, MemberVO memberVO){
		System.out.println("???");
		String[] categorie = request.getParameterValues("categorie");
		System.out.println(categorie);
		return "member/buyerJoin";
	}
	//구매자 회원가입 처리2
	@PostMapping("/joinProcess2.do")
	public String joinProcess2(MemberVO memberVO) {
		String viewPage = "member/buyerJoin";
		
		if(mJoin.join(memberVO)==1) {
			System.out.println("테스트1");
			viewPage = "redirect:/member/login.do";
		}
		
		return viewPage;
	}

}
