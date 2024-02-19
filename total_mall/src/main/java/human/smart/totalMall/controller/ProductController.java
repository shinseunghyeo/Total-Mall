package human.smart.totalMall.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import human.smart.totalMall.common.PageNav;
import human.smart.totalMall.product.ProductService;
import human.smart.totalMall.vo.CartVO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.Setter;

@Controller
@RequestMapping("/product") // 모든 메서드에 대한 공통 경로 설정
public class ProductController {

    @Autowired
    private ProductService cList, pSearch, pPage, pItem, pInsert,
    		pModify, pDiscontinued, pContinued, 
    		pCartInsert, pCartList, pCartQuantityUpdate, pCartDelete;

    @Setter(onMethod_={ @Autowired })
	PageNav pageNav;
    
    @GetMapping("/list.do") // 두 번째 메서드의 URL 변경
    public String list(@ModelAttribute("sVO")SearchVO searchVO, Model model) {
    	List<ProductVO> productList = cList.getProducts(searchVO);
    	model.addAttribute("productList", productList);

        return "Product/list";
    }
    @GetMapping("/item.do") // 임시
	public String item(int p_idx, Model model) {
		ProductVO vo = pItem.getProduct(p_idx);
		model.addAttribute("product", vo);
		
		return "Product/item";		
	}
    @GetMapping("/purchase.do") // 임시
	public String purchase(int p_idx, int m_idx, int c_quantity, int total_product_price,
			int totalDelivery, int totalDiscount, Model model) {
    	ProductVO vo = pItem.getProduct(p_idx);
		vo.setC_quantity(c_quantity);
		vo.setTotal_product_price(total_product_price);
		vo.setTotalDelivery(totalDelivery);
		vo.setTotalDiscount(totalDiscount);
		model.addAttribute("product", vo);
		
		return "Product/purchase";
	}
    
    
    @GetMapping("/search.do") // 임시
    public String search(@ModelAttribute("sVO")SearchVO searchVO, Model model) {
    	List<ProductVO> productList2 = pSearch.getProducts2(searchVO);
    	model.addAttribute("productList2", productList2);
    	if(searchVO.getPageNum() == 0) {
    		searchVO.setPageNum(1);
    	}
    	
    	pageNav = pPage.setPageNav(pageNav, searchVO.getPageNum(), searchVO.getPageBlock());
    	
    	model.addAttribute("pageNav", pageNav);

        return "Product/search";
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
	// 상품수정 페이지 카테고리
	@ModelAttribute("categoryMap")
	public Map<String, String> getCategoryMap() {
		// 영어값과 한글값을 매핑한 Map 생성
		Map<String, String> categoryMap = new HashMap<>();
		categoryMap.put("meat", "식품 - 고기");
		categoryMap.put("vegetables", "식품 - 야채");
		categoryMap.put("fruits", "식품 - 과일");
		categoryMap.put("frozen", "식품 - 냉동");
		categoryMap.put("kitchen", "홈데코 - 주방");
		categoryMap.put("curtain", "홈데코 - 커튼");
		categoryMap.put("games", "취미 - 게임");
		categoryMap.put("lego", "취미 - 레고");
		categoryMap.put("petsupplies", "취미 - 펫용품");
		categoryMap.put("dailynecessities", "생필품 - 생필품");
		categoryMap.put("bodyhair", "생필품 - 바디헤어");
		categoryMap.put("men", "의류 - 남성");
		categoryMap.put("women", "의류 - 여성");
		categoryMap.put("education", "도서 - 교육");
		categoryMap.put("novels", "도서 - 소설");
		categoryMap.put("overseas", "도서 - 해외");
		categoryMap.put("living", "가구 - 생활");
		categoryMap.put("bedding", "가구 - 침상");
		categoryMap.put("homeAppliances", "가전 - 가전");
		categoryMap.put("digital", "가전 - 디지털");
		categoryMap.put("soccer", "스포츠 - 축구");
		categoryMap.put("golf", "스포츠 - 골프");

		return categoryMap;
	}

	// 상품수정 페이지 요청 처리
	@GetMapping("/modify.do")
	public String modify(int p_idx, Model model) {
		// 요청과 함께 전달되는 값: b_idx
		// 전달되는 값을 @RequestParam("b_idx")을 이용해서 전달값의 이름과
		// 다른 매개변수에 할당 받을 수 있음(값의 이름을 바꿀 수 있다)
		// public String view(@RequestParam("b_idx") int bIdx, Model model) {

		// 게시글의 내용을 가져오는 것을 BoardViewService클래스를 이용해서 처리함
		ProductVO vo = pItem.getProduct(p_idx);

		model.addAttribute("product", vo);

		return "Product/modify";
	}

	// 상품수정 요청 처리
	@PostMapping("modifyProcess.do")
	public String modifyProcess(ProductVO vo, HttpServletRequest request) {
		// 요청 처리 메소드의 매개변수: 글등록 페이지에서 입력된 값, 파일 업로드를 위해서
		// 웹프로그램의 uploads폴더에 대한 실제 경로를 얻기 위해서 request객체 필요

		String viewPage = "Product/modify";// 글수정 실패시 JSP페이지

		// 글등록 요청을 BoardModifyService클래스로 처리
		int result = pModify.modify(vo, request);

		if (result == 1) {
			viewPage = "redirect:list.do";// 글수정 성공시 JSP페이지
		}

		return viewPage;
	}

	// 상품 판매 중단 요청 처리
	@GetMapping("/discontinued.do")
	public String discontinued(int p_idx, Model model) {
	    // 로그 추가
	    System.out.println("Discontinued method called with p_idx: " + p_idx);

	    int result = pDiscontinued.discontinued(p_idx);

	    String viewPage = (result == 1) ? "redirect:/Product/list.do" : "redirect:/Product/item.do?p_idx=" + p_idx;

	    // 로그 추가
	    System.out.println("Redirecting to: " + viewPage);

	    return viewPage;
	}
	
	// 상품 판매 재개 요청 처리
		@GetMapping("/continued.do")
		public String continued(int p_idx, Model model) {
			// 요청과 함께 전달되는 값: b_idx
			// 전달되는 값을 @RequestParam("b_idx")을 이용해서 전달값의 이름과
			// 다른 매개변수에 할당 받을 수 있음(값의 이름을 바꿀 수 있다)
			// public String view(@RequestParam("b_idx") int bIdx, Model model) {

			// 게시글 삭제하는 것을 BoardDeleteService클래스를 이용해서 처리함
			int result = pContinued.continued(p_idx);

			String viewPage = (result == 1) ? "redirect:/Product/list.do" : "redirect:/Product/item.do?p_idx=" + p_idx;

			return viewPage;// views/member폴더에 대한 경로 추가

		}
  	
  	//장바구니 페이지 요청 처리
  	@GetMapping("/cart.do")
	public String cart(int m_idx, Model model) {
  		List<CartVO> cartList = pCartList.getCarts(m_idx);
		model.addAttribute("cartList", cartList);
		return "Product/cart";
	}
  	
  	//장바구니에 상품 담기 요청 처리
  	@GetMapping("/cartProcess.do")
	public String cartProcess(int p_idx,  CartVO vo, HttpServletRequest request, Model model) {
  		String viewPage = "redirect:item.do";//장바구니등록 실패시 JSP페이지
  		
  		//글등록 요청을 BoardInsertService클래스로 처리
  		int result = pCartInsert.cartInsert(vo,request);
  		
  		if(result == 1) {
  			System.out.println("성공");
  			viewPage = "redirect:item.do?p_idx="+p_idx;//장바구니등록 성공시 JSP페이지
  			
  		}
  		
  		return viewPage;
	}
  	
  	@GetMapping("/cartQuantityUpdate.do")
  	public String cartQuantityUpdate(int m_idx, int p_idx, int c_quantity) {
  		String viewPage ="redirect:cart.do?m_idx="+m_idx;
  		CartVO vo = new CartVO();
  		vo.setM_idx(m_idx);
  		vo.setP_idx(p_idx);
  		vo.setC_quantity(c_quantity);
  		
  		System.out.println(m_idx+""+p_idx+""+c_quantity);
  		System.out.println("실패");
  		int result = pCartQuantityUpdate.cartQuantityUpdate(vo);
  		if(result == 1) {
  			viewPage ="redirect:cart.do?m_idx="+m_idx;
  			System.out.println("성공");
  		}
  		return viewPage;
  	}
  	
  	@GetMapping("/cartDelete.do")
  	public String cartDelete(int m_idx, int p_idx2) {
  		String viewPage ="redirect:cart.do?m_idx="+m_idx;
  		CartVO vo = new CartVO();
  		vo.setM_idx(m_idx);
  		vo.setP_idx(p_idx2);
  		System.out.println(p_idx2);
  		
  		int result = pCartDelete.cartDelete(vo);
  		
  		
  		return viewPage;
  	}
  	
}