package human.smart.totalMall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import human.smart.totalMall.product.ProductService;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.SearchVO;

@Controller
public class HomeController {

//	@Autowired
//    private ProductService Main;

	@GetMapping("/")
	public String home() {
		return "TotalMall";
	}
	
	@GetMapping("/TotalMall.do")
	public String home2() {
//	    public String mainproduct(int m_idx, Model model) {
//	    	List<ProductVO> mainChoicemall = Main.getMchoice(m_idx);
//	    	model.addAttribute("mainchoice", mainChoicemall);
//
//	    	List<ProductVO> mainMeatmall = Main.getMcategory(1);
//	    	model.addAttribute("mainmeat", mainMeatmall);
//	    	List<ProductVO> mainDecorationmall = Main.getMcategory(2);
//	    	model.addAttribute("mainDecoration", mainDecorationmall);
//	    	List<ProductVO> mainHobbymall = Main.getMcategory(3);
//	    	model.addAttribute("mainHobby", mainHobbymall);
//	    	List<ProductVO> mainDailynecessitiesmall = Main.getMcategory(4);
//	    	model.addAttribute("mainDailynecessities", mainDailynecessitiesmall);
//	    	List<ProductVO> mainClothingmall = Main.getMcategory(5);
//	    	model.addAttribute("mainClothing", mainClothingmall);
//	    	List<ProductVO> mainBooksmall = Main.getMcategory(6);
//	    	model.addAttribute("mainBooks", mainBooksmall);
//	    	List<ProductVO> mainFurnituremall = Main.getMcategory(7);
//	    	model.addAttribute("mainFurniture", mainFurnituremall);
//	    	List<ProductVO> mainHomeappliancemall = Main.getMcategory(8);
//	    	model.addAttribute("mainHomeappliance", mainHomeappliancemall);
//	    	List<ProductVO> mainSportsmall = Main.getMcategory(9);
//	    	model.addAttribute("mainSports", mainSportsmall);
//
//	    	List<ProductVO> mainTodaymall = Main.getMtoday(3);
//	    	model.addAttribute("maintoday", mainTodaymall);
		return "TotalMall";
	}
	
}
