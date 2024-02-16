package human.smart.totalMall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customercenter")//요청URL중 컨텍스트 패스 다음에 오는 공통 경로
public class CustomerController {

	@GetMapping("/inquiry.do")
	public String inquiry() {
		return "customercenter/inquiry";//views/member폴더에 대한 경로 추가
	}
	@GetMapping("/notice.do")
	public String notice() {
		return "customercenter/notice";//views/member폴더에 대한 경로 추가
	}
	@GetMapping("/QnA.do")
	public String QnA() {
		return "customercenter/QnA";//views/member폴더에 대한 경로 추가
	}
	@GetMapping("/voc.do")
	public String voc() {
		return "customercenter/voc";//views/member폴더에 대한 경로 추가
	}

}
