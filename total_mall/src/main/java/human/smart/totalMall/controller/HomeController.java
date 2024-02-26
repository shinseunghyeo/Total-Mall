package human.smart.totalMall.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import human.smart.totalMall.product.ProductService;
import human.smart.totalMall.vo.MemberVO;
import human.smart.totalMall.vo.ProductVO;

@Controller
public class HomeController {

	@Autowired
    private ProductService Main;

	@GetMapping("/")
	public String home(Model model) {
    	List<ProductVO> mainMeatmall = Main.getMcategory(1);
    	model.addAttribute("mainmeat", mainMeatmall);
    	List<ProductVO> mainDecorationmall = Main.getMcategory(2);
    	model.addAttribute("mainDecoration", mainDecorationmall);
    	List<ProductVO> mainHobbymall = Main.getMcategory(3);
    	model.addAttribute("mainHobby", mainHobbymall);
    	List<ProductVO> mainDailynecessitiesmall = Main.getMcategory(4);
    	model.addAttribute("mainDailynecessities", mainDailynecessitiesmall);
    	List<ProductVO> mainClothingmall = Main.getMcategory(5);
    	model.addAttribute("mainClothing", mainClothingmall);
    	List<ProductVO> mainBooksmall = Main.getMcategory(6);
    	model.addAttribute("mainBooks", mainBooksmall);
    	List<ProductVO> mainFurnituremall = Main.getMcategory(7);
    	model.addAttribute("mainFurniture", mainFurnituremall);
    	List<ProductVO> mainHomeappliancemall = Main.getMcategory(8);
    	model.addAttribute("mainHomeappliance", mainHomeappliancemall);
    	List<ProductVO> mainSportsmall = Main.getMcategory(9);
    	model.addAttribute("mainSports", mainSportsmall);
    	
		return "TotalMall";
	}
	
	@GetMapping("/TotalMall.do")
    public String mainproduct(HttpSession session, Model model) {
//	    	List<ProductVO> mainTodaymall = Main.getMtoday(3);
//	    	model.addAttribute("maintoday", mainTodaymall);
        // 컨트롤러에서 member.m_idx 가져오기
		MemberVO member = (MemberVO) session.getAttribute("member");

		   // 세션에 회원 정보가 있는지 확인합니다.
	    if (member != null) {
	        // 세션에서 회원 ID를 가져옵니다.
	        String memberId = member.getCategorie(); 
	        
	        // memberId를 사용하여 필요한 작업을 수행합니다.
	        List<ProductVO> mainChoicemall = Main.getMchoice(memberId);
	        model.addAttribute("mainchoice", mainChoicemall);
	    } else {
	        List<ProductVO> mainChoicemall = Main.getMchoice("none");
	        model.addAttribute("mainchoice", mainChoicemall);
	    }

    	List<ProductVO> mainMeatmall = Main.getMcategory(1);
    	model.addAttribute("mainmeat", mainMeatmall);
    	List<ProductVO> mainDecorationmall = Main.getMcategory(2);
    	model.addAttribute("mainDecoration", mainDecorationmall);
    	List<ProductVO> mainHobbymall = Main.getMcategory(3);
    	model.addAttribute("mainHobby", mainHobbymall);
    	List<ProductVO> mainDailynecessitiesmall = Main.getMcategory(4);
    	model.addAttribute("mainDailynecessities", mainDailynecessitiesmall);
    	List<ProductVO> mainClothingmall = Main.getMcategory(5);
    	model.addAttribute("mainClothing", mainClothingmall);
    	List<ProductVO> mainBooksmall = Main.getMcategory(6);
    	model.addAttribute("mainBooks", mainBooksmall);
    	List<ProductVO> mainFurnituremall = Main.getMcategory(7);
    	model.addAttribute("mainFurniture", mainFurnituremall);
    	List<ProductVO> mainHomeappliancemall = Main.getMcategory(8);
    	model.addAttribute("mainHomeappliance", mainHomeappliancemall);
    	List<ProductVO> mainSportsmall = Main.getMcategory(9);
    	model.addAttribute("mainSports", mainSportsmall);
    	
		return "TotalMall";
	}
	
}
