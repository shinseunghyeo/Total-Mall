package human.smart.totalMall.controller;

import java.text.DecimalFormat;
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
import org.springframework.web.bind.annotation.SessionAttribute;

import human.smart.totalMall.common.PageNav;
import human.smart.totalMall.product.ProductService;
import human.smart.totalMall.vo.CartVO;
import human.smart.totalMall.vo.MemberVO;
import human.smart.totalMall.vo.OrderVO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.PvocVO;
import human.smart.totalMall.vo.ReviewVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.Setter;

@Controller
@RequestMapping("/product") // 모든 메서드에 대한 공통 경로 설정
public class ProductController {

    @Autowired
    private ProductService cList, pSearch, pPage, pItem, pInsert, pTotalCount, pReview,
    		pModify, pDiscontinued, pContinued, mypList, pCon, pDiscon, myoList,myoList2,
    		allpList, alloList, myoList_1,
    		bUpdateCount,
    		pCartInsert, pCartList, pCartQuantityUpdate, pCartDelete, pCartPaymentUpdate,
    		pOrderInsert, pCartInsert2, pCartCheck, pCartOidxUpdate;

    @Setter(onMethod_={ @Autowired })
	PageNav pageNav;
    
    // 카테고리 페이지 요청 처리
    @GetMapping("/list.do") // 두 번째 메서드의 URL 변경
    public String list(@ModelAttribute("sVO")SearchVO searchVO, Model model) {
    	List<ProductVO> productList = cList.getProducts(searchVO);
    	model.addAttribute("productList", productList);

        return "product/list";
    }

    // 상세 페이지 요청 처리
    @GetMapping("/item.do")
	public String item(int p_idx, Model model) {
		ProductVO vo = pItem.getProduct(p_idx);
		model.addAttribute("product", vo);
		bUpdateCount.updateReadCount(p_idx);
		
	    // 할인율이 존재할 경우에만 할인된 가격을 계산하여 모델에 추가
	    if (vo.getDiscount_rate() > 0) {
	        // 상품의 가격과 할인율을 가져와서 할인된 가격을 계산합니다.
	        double discountedPrice = calculateDiscountedPrice(vo.getPrice(), vo.getDiscount_rate());
	        // 계산된 할인된 가격을 모델에 추가합니다.
	        model.addAttribute("discountedPrice", (int) discountedPrice);
	    }
	    
	    Map<String, Object> paramMap = new HashMap<>();
	    paramMap.put("p_idx", p_idx);
		
	    paramMap.put("orderBy", 1); 
    	List<ReviewVO> hEvaluationList = pItem.getReview(paramMap);
    	model.addAttribute("hEvaluationList", hEvaluationList);
    	// hEvaluationList의 크기를 구합니다.
    	int hStarsize = hEvaluationList.size();

    	// 모델에 hStarsize를 추가합니다.
    	model.addAttribute("hStarsize", hStarsize);    	// hEvaluationList의 평균을 계산할 변수를 선언합니다.
    	double hEvaluationListAverage = 0.0;

    	// hEvaluationList의 요소에서 star 속성 값을 합산합니다.
    	int sumOfStars = 0;
    	for (ReviewVO review : hEvaluationList) {
    	    sumOfStars += review.getStar();
    	}

    	// hEvaluationList의 크기로 나누어 평균을 계산합니다.
    	if (!hEvaluationList.isEmpty()) {
    	    hEvaluationListAverage = (double) sumOfStars / hEvaluationList.size();
    	}

    	// 소수점 한 자리까지만 표시하기 위해 DecimalFormat을 사용합니다.
    	DecimalFormat df = new DecimalFormat("#.#");
    	hEvaluationListAverage = Double.parseDouble(df.format(hEvaluationListAverage));

    	// 모델에 평균 값을 추가합니다.
    	model.addAttribute("hEvaluationListAverage", hEvaluationListAverage);
    	
    	int averageScore = (int) Math.round(hEvaluationListAverage);

    	// 별표 문자열을 생성합니다.
    	String stars = "";
    	for (int i = 0; i < 5; i++) {
    	    // 현재 별의 점수를 계산합니다.
    	    double currentScore = (i + 1) - averageScore;
    	    if (currentScore <= -0.5) {
    	        // 현재 별이 비어있는 경우
    	        stars += "★"; // 빈 별 추가
    	    } else if (currentScore <= 0) {
    	        // 현재 별이 반 별인 경우
    	        stars += "★"; // 반 별 추가
    	    } else {
    	        // 현재 별이 가득 찬 경우
    	        stars += "☆"; // 별 추가
    	    }
    	}

    	// 모델에 별표 문자열을 추가합니다.
    	model.addAttribute("hEvaluationListStars", stars);

    	paramMap.put("orderBy", 2);
    	List<ReviewVO> lEvaluationList = pItem.getReview(paramMap);
    	model.addAttribute("lEvaluationList", lEvaluationList);

	    paramMap.put("orderBy", 3); 
    	List<ReviewVO> hStarList = pItem.getReview(paramMap);
    	model.addAttribute("hStarList", hStarList);

    	paramMap.put("orderBy", 4); 
    	List<ReviewVO> lStarList = pItem.getReview(paramMap);
    	model.addAttribute("lStarList", lStarList);
		
		return "product/item";
	}
 // 할인된 가격을 계산하는 메소드
    private double calculateDiscountedPrice(double price, double discountRate) {
        return price * (1 - (discountRate / 100));
    }
    // 결제 페이지 요청 처리
    @GetMapping("/purchase.do")
	public String purchase(int p_idx, int m_idx, int c_quantity, int total_product_price,
			int totalDelivery, int totalDiscount, Model model) {
    	ProductVO vo = pItem.getProduct(p_idx);
		vo.setC_quantity(c_quantity);
		vo.setTotal_product_price(total_product_price);
		vo.setTotalDelivery(totalDelivery);
		if(c_quantity == 0) {
			vo.setTotalDiscount(totalDiscount);
		} else {
			vo.setTotalDiscount(totalDiscount*c_quantity);
		}
		model.addAttribute("product", vo);
		
		return "product/purchase";
	}
    
    // 검색 페이지 요청 처리
    @GetMapping("/search.do")
    public String search(@ModelAttribute("sVO")SearchVO searchVO, Model model) {
    	List<ProductVO> productList2 = pSearch.getProducts2(searchVO);
    	model.addAttribute("productList2", productList2);
    	if(searchVO.getPageNum() == 0) {
    		searchVO.setPageNum(1);
    	}
    	pageNav.setTotalRows(pTotalCount.getTotalCount(searchVO));
    	pageNav = pPage.setPageNav(pageNav, searchVO.getPageNum(), searchVO.getPageBlock());
    	model.addAttribute("pageNav", pageNav);

        return "product/search";
    }
    // 리퓨 페이지 요청 처리
    @PostMapping("/review.do") 
	public String review(int p_idx, Model model) {
		ProductVO revvo = pReview.getProRev(p_idx);
    	model.addAttribute("productReview", revvo);

		return "product/review";//views/member폴더에 대한 경로 추가
	}
	
	// 리뷰 프로세스 요청 처리
	@PostMapping("/reviewProcess.do") 
	public String reviewProcess(ReviewVO review, int p_idx, HttpServletRequest request) {
		String viewPage = "reviewProcess/review";//글등록 실패시 JSP페이지
		int result = pInsert.reInsert(review, request);
		if(result == 1) {
			viewPage = "redirect:/product/item.do?p_idx=" + p_idx;
		}
		return viewPage;
	}
	//판매자문의 요청 처리
	@PostMapping("/pvocProcess.do")
	public String pvocProcess(PvocVO pvoc, int p_idx, HttpServletRequest request) {
		String viewPage = "redirect:/product/item.do?p_idx=" + p_idx;
		pInsert.pvocInsert(pvoc, request);
		
		return viewPage;
	}

  //제품등록 페이지 요청 처리
    @GetMapping("/write.do")
	public String write() {
		return "product/write";
	}
    
  //제품등록 요청 처리
    @PostMapping("writeProcess.do")
	public String writeProcess(ProductVO vo, HttpServletRequest request) {
		// 요청 처리 메소드의 매개변수: 글등록 페이지에서 입력된 값, 파일 업로드를 위해서
		// 웹프로그램의 uploads폴더에 대한 실제 경로를 얻기 위해서 request객체 필요

		String viewPage = "redirect:/member/sellermypage.do";// 글등록 실패시 JSP페이지

		// 글등록 요청을 BoardInsertService클래스로 처리
		int result = pInsert.insert(vo, request);

		
		if (result == 1) {
			viewPage = "redirect:/member/sellermypage.do";// 글등록 성공시 JSP페이지
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

		return "product/modify";
	}

	// 상품수정 요청 처리
	@PostMapping("modifyProcess.do")
	public String modifyProcess(ProductVO vo, HttpServletRequest request) {
		// 요청 처리 메소드의 매개변수: 글등록 페이지에서 입력된 값, 파일 업로드를 위해서
		// 웹프로그램의 uploads폴더에 대한 실제 경로를 얻기 위해서 request객체 필요

		String viewPage = "product/modify";// 글수정 실패시 JSP페이지

		// 글등록 요청을 BoardModifyService클래스로 처리
		int result = pModify.modify(vo, request);
		int p_idx = vo.getP_idx();
		if (result == 1) {
			viewPage = "redirect:/product/item.do?p_idx=" + p_idx;// 글수정 성공시 JSP페이지
		}

		return viewPage;
	}

	// 상품 판매 중단 요청 처리
	@GetMapping("/discontinued.do")
	public String discontinued(int p_idx, Model model) {
		// 로그 추가

		int result = pDiscontinued.discontinued(p_idx);

		String viewPage = (result == 1) ? "forward:/product/item.do?p_idx=" + p_idx : "redirect:/product/list.do";

		// 로그 추가

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

		String viewPage = (result == 1) ? "forward:/product/item.do?p_idx=" + p_idx : "redirect:/product/list.do";

		return viewPage;// views/member폴더에 대한 경로 추가

	}
	// 내 상품보기
	@GetMapping("myplist.do")
	public String myplist(@ModelAttribute("sVO") SearchVO searchVO, Model model,
			@SessionAttribute("member") MemberVO member) {
		List<ProductVO> productList3 = mypList.getProducts3(searchVO);
		model.addAttribute("productList3", productList3);

		// MemberVO에서 m_idx 값을 가져와서 설정
		int m_idx = member.getM_idx();
		model.addAttribute("m_idx", m_idx);
		return "product/myplist";
	}

	// 판매중인 상품수 호출
	@RequestMapping("/p_con.do")
	public String p_con(Model model) {
		// 메서드1에서 사용할 데이터를 모델에 담음
		int p_con = pCon.p_con();
		model.addAttribute("p_con", p_con);
		return "forward:/member/sellerhome.do"; // JSP 페이지 이름
	}

	// 판매중단 상품수 호출
	@RequestMapping("/p_discon.do")
	public String p_discon(Model model) {
		// 메서드1에서 사용할 데이터를 모델에 담음
		int p_discon = pDiscon.p_discon();
		model.addAttribute("p_discon", p_discon);
		return "forward:/member/sellerhome.do"; // JSP 페이지 이름
	}
	

	
	//개인회원 전체 주문내역
	@GetMapping("/order_history.do")
	public String orderlist(int m_idx, Model model) {
  		List<CartVO> orderList = myoList.getOrders(m_idx);
		model.addAttribute("orderList", orderList);
		return "product/order_history";
	}
	
	
	// 기업회원 전체 주문내역
	@GetMapping("/order_management.do")
	public String orderlist2(@SessionAttribute("member") MemberVO member, Model model) {
	    // 세션에서 가져온 member가 null이면 로그인 페이지로 이동
	    if (member == null || member.getM_idx() == 0) {
	        return "redirect:/member/login.do";
	    }

	    // m_idx를 이용하여 주문내역 조회
	    int m_idx = member.getM_idx();
	    List<CartVO> orderList2 = myoList2.getOrders2(m_idx);

	    // 모델에 데이터 추가
	    model.addAttribute("m_idx", m_idx);
	    model.addAttribute("orderList2", orderList2);

	    // 주문내역 페이지로 이동
	    return "product/order_management";
	}

	//관리자 전체 상품내역
	@GetMapping("/allplist.do")
	public String allpList(Model model) {
  		List<ProductVO> allList = allpList.getProducts4();
		model.addAttribute("allList", allList);
		return "product/allplist";
	}

	// 기업회원 전체 주문내역
	@GetMapping("/allorderlist.do")
	public String allolist(Model model) {
	   
	    List<CartVO> allorderList = alloList.getOrders3();
	    model.addAttribute("allorderList", allorderList);

	    // 주문내역 페이지로 이동
	    return "product/allorderlist";
	}



	
	
	
  	//장바구니 페이지 요청 처리
  	@GetMapping("/cart.do")
	public String cart(int m_idx, Model model) {
  		List<CartVO> cartList = pCartList.getCarts(m_idx);
		model.addAttribute("cartList", cartList); 
		return "product/cart";
	}
  	
  	//장바구니에 같은 상품이 있는지 확인하기
  	
  	
  	//장바구니에 상품 담기 요청 처리
  	@GetMapping("/cartProcess.do")
	public String cartProcess(int p_idx, CartVO vo, HttpServletRequest request, Model model) {
  		String viewPage = "redirect:item.do?p_idx="+p_idx;//장바구니등록 실패시 JSP페이지
  		
  		CartVO vo2 = pCartCheck.cartCheck(vo);
  		if(vo2 != null) {
  			model.addAttribute("msg2", "상품이 담겨 있습니다.");
  			System.out.println("장바구니에 삼품 없음");
  		} else {
  		
  	  		int result = pCartInsert.cartInsert(vo,request);
  	  		
  	  		if(result == 1) {
  	  			viewPage = "redirect:item.do?p_idx="+p_idx;//장바구니등록 성공시 JSP페이지
  	  			
  	  		}
  		}

  		return viewPage;
	}
  	
  //장바구니 수량 업데이트
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
  	
  	//장바구니 삭제 (수정필요)
  	@GetMapping("/cartDelete.do")
  	public String cartDelete(int m_idx, int p_idx2) {
  		String viewPage ="redirect:cart.do?m_idx="+m_idx;
  		CartVO vo = new CartVO();
  		vo.setM_idx(m_idx);
  		vo.setP_idx(p_idx2);
  		
  		System.out.println(p_idx2);
  		pCartDelete.cartDelete(vo);
  		
  		
  		return viewPage;
  	}
  	
  	//결제완료페이지 요청
  	@GetMapping("/payment.do")
  	public String payment(OrderVO vo, CartVO vo2, Model model, int total_product_price,
  			int total_discount, int total_delivery
  			) {
  		int m_idx = vo.getM_idx();
  		
  		if(vo.getDirect() == 1) {
  			pCartPaymentUpdate.cartPaymentUpdate(m_idx);
  			pOrderInsert.orderInsert(vo);
  		} else if(vo.getDirect() == 0) {
  			pCartInsert2.cartInsert2(vo2);
  			pOrderInsert.orderInsert(vo);
  		}
  		int o_idx = vo.getO_idx();
  		pCartOidxUpdate.cartOidxUpdate(m_idx, o_idx);
  		
  		
  		model.addAttribute("total_product_price", total_product_price);
  		model.addAttribute("total_discount", total_discount);
  		model.addAttribute("total_delivery", total_delivery);
  		return "product/payment";
  	}
  	
}