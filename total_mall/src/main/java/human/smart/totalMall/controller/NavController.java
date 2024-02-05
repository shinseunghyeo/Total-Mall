package human.smart.totalMall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/nav")//요청URL중 컨텍스트 패스 다음에 오는 공통 경로
public class NavController {

	@GetMapping("/Attendance.do")
	public String Attendance() {
		return "nav/Attendance";//views/member폴더에 대한 경로 추가
	}
	@GetMapping("/DronPage.do")
	public String DronPage() {
		return "nav/DronPage";//views/member폴더에 대한 경로 추가
	}
	@GetMapping("/DrowingPage.do")
	public String DrowingPage() {
		return "nav/DrowingPage";//views/member폴더에 대한 경로 추가
	}
	@GetMapping("/EventPage.do")
	public String EventPage() {
		return "nav/EventPage";//views/member폴더에 대한 경로 추가
	}
	@GetMapping("/ThousandPage.do")
	public String ThousandPage() {
		return "nav/ThousandPage";//views/member폴더에 대한 경로 추가
	}
	@GetMapping("/Timemall.do")
	public String Timemall() {
		return "nav/Timemall";//views/member폴더에 대한 경로 추가
	}
	@GetMapping("/TotalboomPage.do")
	public String TotalboomPage() {
		return "nav/TotalboomPage";//views/member폴더에 대한 경로 추가
	}
	@GetMapping("/WinterPage.do")
	public String WinterPage() {
		return "nav/WinterPage";//views/member폴더에 대한 경로 추가
	}

}
