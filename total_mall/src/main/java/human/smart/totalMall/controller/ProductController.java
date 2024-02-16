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

import human.smart.totalMall.common.PageNav;
import human.smart.totalMall.product.ProductService;
import human.smart.totalMall.vo.CartVO;
import human.smart.totalMall.vo.OrderVO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.Setter;

@Controller
@RequestMapping("/product") // 모든 메서드에 대한 공통 경로 설정
public class ProductController {

    @Autowired
    private ProductService cList, pSearch, pPage, pItem, pPurchaseInsert, pPurchaseList, pInsert, 
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
	public String purchase(OrderVO vo, int m_idx, Model model) {
		int result = pPurchaseInsert.purchaseInsert(vo);
		List<OrderVO> orderList = pPurchaseList.getOrders(m_idx);
		model.addAttribute("orderList", orderList);
		if(result == 1) {
			
		}
		
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