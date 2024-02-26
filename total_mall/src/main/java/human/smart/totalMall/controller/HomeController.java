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
	public String home(HttpSession session, Model model) {
		//오늘의 상품
    	List<ProductVO> mainTodaymall = Main.getMtoday();
    	model.addAttribute("maintoday", mainTodaymall);

    	//추천 카테고리 상품
		MemberVO member = (MemberVO) session.getAttribute("member");
		    // 세션에 회원 정보가 있는지 확인합니다.
	    if (member != null && member.getGrade() ==1) {
	        // 세션에서 회원 ID를 가져옵니다.
	        String memberId = member.getCategorie();
			String[] memberId2 = memberId.split(",");
	        // memberId를 사용하여 필요한 작업을 수행합니다.
	        List<ProductVO> mainChoicemall = Main.getMchoice(memberId2[0]);
	        model.addAttribute("mainchoice", mainChoicemall);
	        List<ProductVO> mainChoicemall2 = Main.getMchoice(memberId2[1]);
	        model.addAttribute("mainchoice2", mainChoicemall2);
	        List<ProductVO> mainChoicemall3 = Main.getMchoice(memberId2[2]);
	        model.addAttribute("mainchoice3", mainChoicemall3);
	    } else {
	        List<ProductVO> mainChoicemall = Main.getMchoice("food");
	        model.addAttribute("mainchoice", mainChoicemall);
	        List<ProductVO> mainChoicemall2 = Main.getMchoice("homeDeco");
	        model.addAttribute("mainchoice2", mainChoicemall2);
	        List<ProductVO> mainChoicemall3 = Main.getMchoice("hobby");
	        model.addAttribute("mainchoice3", mainChoicemall3);
	    }
	    
	    //카테고리별 상품
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
		//오늘의 상품
    	List<ProductVO> mainTodaymall = Main.getMtoday();
    	model.addAttribute("maintoday", mainTodaymall);
    	
		//착한 상품
    	List<ProductVO> mainKindmall = Main.getMkind();
    	model.addAttribute("mainkind", mainKindmall);

    	//추천 카테고리 상품
		MemberVO member = (MemberVO) session.getAttribute("member");
		    // 세션에 회원 정보가 있는지 확인합니다.
	    if (member != null && member.getGrade() ==1) {
	        // 세션에서 회원 ID를 가져옵니다.
	        String memberId = member.getCategorie();
			String[] memberId2 = memberId.split(",");
	        // memberId를 사용하여 필요한 작업을 수행합니다.
	        List<ProductVO> mainChoicemall = Main.getMchoice(memberId2[0]);
	        model.addAttribute("mainchoice", mainChoicemall);
	        List<ProductVO> mainChoicemall2 = Main.getMchoice(memberId2[1]);
	        model.addAttribute("mainchoice2", mainChoicemall2);
	        List<ProductVO> mainChoicemall3 = Main.getMchoice(memberId2[2]);
	        model.addAttribute("mainchoice3", mainChoicemall3);
	    } else {
	        List<ProductVO> mainChoicemall = Main.getMchoice("food");
	        model.addAttribute("mainchoice", mainChoicemall);
	        List<ProductVO> mainChoicemall2 = Main.getMchoice("homeDeco");
	        model.addAttribute("mainchoice2", mainChoicemall2);
	        List<ProductVO> mainChoicemall3 = Main.getMchoice("hobby");
	        model.addAttribute("mainchoice3", mainChoicemall3);
	    }

	    //카테고리별 상품
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
