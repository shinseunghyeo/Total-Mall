package human.smart.totalMall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String home() {
		return "T_TotalMall";
	}
	
	@GetMapping("/T_TotalMall.do")
	public String home2() {
		return "T_TotalMall";
	}
	
}
