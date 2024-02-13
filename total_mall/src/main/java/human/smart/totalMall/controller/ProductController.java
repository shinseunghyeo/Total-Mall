package human.smart.totalMall.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import human.smart.totalMall.product.ProductService;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.SearchVO;

@Controller
@RequestMapping("/product") // 모든 메서드에 대한 공통 경로 설정
public class ProductController {

    @Autowired
    private ProductService cList, pInsert;

    @GetMapping("/list.do") // 두 번째 메서드의 URL 변경
    public String list(@ModelAttribute("sVO")SearchVO searchVO, String category, Model model) {
    	List<ProductVO> boardList = cList.getProducts(searchVO);
    	model.addAttribute("boardList", boardList);

        return "Product/list";
    }
    @GetMapping("/item.do") // 임시
    public String item(@ModelAttribute("sVO")SearchVO searchVO, String category, Model model) {
    	List<ProductVO> boardList = cList.getProducts(searchVO);
    	model.addAttribute("boardList", boardList);

        return "Product/item";
    }
    @GetMapping("/serch.do") // 임시
    public String serch(@ModelAttribute("sVO")SearchVO searchVO, String category, Model model) {
    	List<ProductVO> boardList = cList.getProducts(searchVO);
    	model.addAttribute("boardList", boardList);

        return "Product/serch";
    }
    
  //제품등록 페이지 요청 처리
    @GetMapping("/write.do")
	public String write() {
		return "Product/write";
	}
    
  //제품등록 요청 처리
  	@PostMapping("writeProcess.do")
  	public String writeProcess(ProductVO vo, HttpServletRequest request) {
  	//요청 처리 메소드의 매개변수: 글등록 페이지에서 입력된 값, 파일 업로드를 위해서
  	//웹프로그램의 uploads폴더에 대한 실제 경로를 얻기 위해서 request객체 필요
  	
  		String viewPage = "product/write";//글등록 실패시 JSP페이지
  		
  		//글등록 요청을 BoardInsertService클래스로 처리
  		int result = pInsert.insert(vo,request);
  		
  		if(result == 1) {
  			viewPage = "redirect:list.do";//글등록 성공시 JSP페이지 
  		}
  		
  		return viewPage;
  	}
  	
  	
  	//장바구니 페이지 요청 처리
  	@GetMapping("/cart.do")
	public String cart() {
		return "Product/cart";
	}
}