package human.smart.totalMall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import human.smart.service.member.MemberService;
import lombok.Setter;

//Ajax 요청을 처리하는 전용 Controller
@RestController//@Controller + @ResponseBody
@RequestMapping("/member")
public class AjaxController {
	
	@Setter(onMethod_= {@Autowired})
	private MemberService mEmailSend;

	//이메일 인증
	@GetMapping("/emailCheck.do")
	public String emailCheck(String email) {
		//이메일 요청처리를 하는 MemberService클래스 정의: MemberEmailSendService클래스
		//요청 처리 메소드: joinEmail(String email)
		return mEmailSend.joinEmail(email);
	}
}
