package human.smart.totalMall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String home() {
		return "TotalMall";
	}
	
	@GetMapping("/TotalMall.do")
	public String home2() {
		return "TotalMall";
	}
	
}
