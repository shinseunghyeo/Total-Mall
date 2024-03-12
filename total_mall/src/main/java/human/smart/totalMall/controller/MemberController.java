package human.smart.totalMall.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import human.smart.service.customercenter.CustomercenterService;
import human.smart.service.member.MemberService;
import human.smart.service.product.ProductService;
import human.smart.totalMall.common.PageNav;
import human.smart.totalMall.vo.CartVO;
import human.smart.totalMall.vo.MemberVO;
import human.smart.totalMall.vo.NoticeVO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.PvocVO;
import human.smart.totalMall.vo.ReviewVO;
import human.smart.totalMall.vo.SalesVO;
import human.smart.totalMall.vo.SearchVO;
import human.smart.totalMall.vo.VocVO;
import lombok.Setter;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Setter(onMethod_={ @Autowired })
	MemberService mJoin, mLogin, mFindId, mFindPw, mFindPwProcess,mManage, mInfo, mBuyerUpdateProcess, mSellerUpdateProcess, mCancel, Inquiry,
				  mGrade, cancelUpdate, sList, memberCnt, buyerInquiry, sellerbuyerVoc, mViewOrderDetails;
	
	@Setter(onMethod_={ @Autowired })
	ProductService myoList, pTotalCount,pPage,myoList2, allpList, alloList, 
	myoList_1, todayProduct, statusP, myReview, statusO, statusO2, statusP2, allorderCnt, pPage2;
	
	
	@Setter(onMethod_={ @Autowired })
	PageNav pageNav;

	@Setter(onMethod_={ @Autowired }) CustomercenterService homeNotice, homeVoc, homePvoc,
	sellerhomeVoc;
	
	//전체 매출 페이지 요청
	@GetMapping("/allSales.do")
	public String allSales(Model model) {
		List<SalesVO> salesList = sList.getSales();
		
		model.addAttribute("salesList", salesList);
		
		return "member/allSales";
	}
	
	//로그인 페이지 요청
	@GetMapping("/login.do")
	public String login() {
		return "member/login";
	}
	//로그인 처리 요청
	@PostMapping("/loginProcess.do")
	public String loginProcess(String member_id, String member_pw, boolean rememberId,
								HttpServletRequest request,HttpServletResponse response, Model model) {
		String viewPage = "member/login";
		
		MemberVO memberVO = mLogin.login(member_id, member_pw);
		
		if(memberVO != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", memberVO);
			viewPage = "redirect:/TotalMall.do";
		}else {
			model.addAttribute("msg", "아이디 또는 비밀번호가 맞지 않습니다.");
		}
		if(rememberId) {
			Cookie cookie = new Cookie("member_id", member_id);
			cookie.setMaxAge(24 * 60 * 60); //쿠키기간설정 하루로
			response.addCookie(cookie);
		} else {
			Cookie cookie = new Cookie("member_id", member_id);
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
			
		
		return viewPage;
	}
	
	//로그아웃 처리 요청
	@GetMapping("/logout.do")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/TotalMall.do";
	}
	
	//회원가입 페이지 요청
	@GetMapping("/join.do")
	public String join() {
		return "member/join";//views/member폴더에 대한 경로 추가
	}
	
	//구매자 회원가입 페이지 요청 및 처리1
	@PostMapping("/buyerJoinProcess1.do")
	public String joinProcess1(HttpServletRequest request, MemberVO memberVO, Model model){
		//체크박스 값 받아와서 ,로 구분 후 String타입으로 변경
		String[] categories = request.getParameterValues("categorie");
		String categorie = String.join(",", categories);
		//테스트용
		String[] categorie2 = categorie.split(",");
		System.out.println(categorie2[0]);
		System.out.println(categorie2[1]);
		System.out.println(categorie2[2]);
		
		System.out.println(categorie);
		//카테고리를 String타입으로 변경한 것을 memberVO객체에 저장
		model.addAttribute("categorie", memberVO);
		return "member/buyerJoin";
	}
	
	
	//구매자 회원가입 처리2
	@PostMapping("/buyerJoinProcess2.do")
	public String joinProcess2(MemberVO memberVO, Model model) {
		String viewPage = "member/buyerJoin";
		
		if(mJoin.join(memberVO)==1) {
			viewPage = "redirect:/member/login.do";
		}
		
		return viewPage;
	}
	
	//판매자 회원가입 페이지 요청 및 처리1
	@PostMapping("/sellerJoinProcess1.do")
	public String sellerJoinProcess1(HttpServletRequest request, MemberVO memberVO, Model model){
		
		return "member/sellerJoin";
	}
	
	//판매자 회원가입 페이지 요청 및 처리2
	@PostMapping("/sellerJoinProcess2.do")
	public String sellerJoinProcess2(HttpServletRequest request, MemberVO memberVO, Model model){
		model.addAttribute("memberVO", memberVO);
		return "member/sellerJoin2";
	}
	
	//판매자 회원가입 페이지 요청 및 처리3
	@PostMapping("/sellerJoinProcess3.do")
	public String sellerJoinProcess3(HttpServletRequest request, MemberVO memberVO, Model model){
		String viewPage = "member/sellerJoin2";
		if(mJoin.join(memberVO)==1) {
			viewPage = "redirect:/member/login.do";
		}
		return viewPage;
	}
	
	//아이디/비밀번호찾기 페이지 요청
	@GetMapping("/findidpw.do")
	public String findidpw() {
		return "member/findidpw";
	}
	
	//아이디 찾기 처리
	@PostMapping("/findId.do")
	public String findId(String member_name, String email,Model model) {
		String viewPage = "member/findidpw";
		
		MemberVO memberVO = mFindId.findId(member_name, email);
		if(memberVO != null) {
			model.addAttribute("memberVO", memberVO);
			viewPage = "member/findid";
		}else {
			model.addAttribute("msg", "이름과 이메일에 맞는 아이디가 없습니다.");
		}
		
		return viewPage;
	}
	
	//비밀번호 찾기 처리
	@PostMapping("/findPw.do")
	public String findPw(String member_id, String email, Model model) {
		String viewPage = "member/findidpw";
		MemberVO memberVO = mFindPw.findPw(member_id, email);
		
		
		if(memberVO != null) {
			model.addAttribute("memberVO", memberVO);
			viewPage = "member/findPw";
		}else {
			model.addAttribute("msg2", "아이디와 이메일에 맞는 아이디가 없습니다.");
		}
		
		return viewPage;
	}
	
	//비밀번호 변경 처리
	@PostMapping("/findPwProcess.do")
	public String findPwProcess(MemberVO memberVO) {
		String viewPage = "member/findPw";
		
		MemberVO newVO = mFindPwProcess.findPwProcess(memberVO);
		if(newVO != null) {
			viewPage = "redirect:/TotalMall.do";
		}
		return viewPage;
	}
	
	//개인회원 회원정보 변경
	@PostMapping("/buyerUpdateProcess.do")
	public String buyerUpdateProcess(MemberVO memberVO, HttpServletRequest request, Model model) {
		
		String[] categories = request.getParameterValues("categorie");
		String categorie = String.join(",", categories);
		memberVO.setCategorie(categorie);
		MemberVO newVO = mBuyerUpdateProcess.buyerUpdateProcess(memberVO);
		
		if(newVO != null) {
			HttpSession session = request.getSession();
			session.removeAttribute("member");
			session.setAttribute("member", newVO);
		}
		return "member/buyermypage";
	}
	
	//개인회원 회원탈퇴
	@GetMapping("/cancelProcess.do")
	public String cancelProcess(HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("member");
		int m_idx = vo.getM_idx();
		
		String viewPage = "member/buyermypage";//계정삭제 실패시 JSP페이지
		
		//MemberCancelService클래스를 이용한 계정삭제 처리
		if(mCancel.cancel(m_idx) == 1) {
			session.invalidate(); //세션 초기화
			viewPage = "redirect:/TotalMall.do";
		}
		
		return viewPage;//views/member폴더에 대한 경로 추가
	}
	//기업회원 회원정보 변경
	@PostMapping("/sellerUpdateProcess.do")
	public String sellerUpdateProcess(MemberVO memberVO, HttpServletRequest request, Model model) {
		
		MemberVO newVO = mSellerUpdateProcess.sellerUpdateProcess(memberVO);
		
		if(newVO != null) {
			HttpSession session = request.getSession();
			session.removeAttribute("member");
			session.setAttribute("member", newVO);
		}
		return "redirect:/member/sellermypage.do";
	}
	//주문 상태 맵
	@ModelAttribute("p_or_notMap")
	public Map<String, String> p_or_notMap() {
		// 숫자값과 등급값을 매핑한 Map 생성
		Map<String, String> p_or_notMap = new HashMap<>();
		p_or_notMap.put("0", "장바구니");
		p_or_notMap.put("1", "결제중");
		p_or_notMap.put("2", "결제완료");
		p_or_notMap.put("3", "상품 준비중");
		p_or_notMap.put("4", "배송지시");
		p_or_notMap.put("5", "배송중");
		p_or_notMap.put("6", "배송완료");
		
		p_or_notMap.put("11", "교환요청");
		p_or_notMap.put("12", "취소요청");
		p_or_notMap.put("13", "반품요청");
		p_or_notMap.put("14", "교환완료");
		p_or_notMap.put("15", "취소완료");
		p_or_notMap.put("16", "반품완료");

		return p_or_notMap;
	}

	//관리자 홈 회원 현황
	@RequestMapping("/memberCnt.do")
	public String memberCnt(Model model) {
		// 메서드1에서 사용할 데이터를 모델에 담음
		
		 List<MemberVO> memberCntlist = memberCnt.memberCnt();
		 model.addAttribute("memberCntlist", memberCntlist);
		return "forward:/member/adminhome.do"; // JSP 페이지 이름
	}
	
/////////////////////////////// 기업회원 마이페이지 홈 ///////////////////////////////	
	
//기업회원 마이페이지 처리
@GetMapping("/sellermypage.do")
public String sellerMypage(@SessionAttribute("member") MemberVO member, Model model) {
	
	if (member == null || member.getM_idx() == 0) {
	    return "redirect:/member/login.do";
	}
	int m_idx = member.getM_idx();
	
	
List<ProductVO> statusPlist = statusP.statusP(m_idx);//상품 상태에 따른 합계 조회
List<PvocVO> homePVList = homePvoc.homePvoc(m_idx);
List<CartVO> statusOlist = statusO.statusO(m_idx);
List<CartVO> statusO2list = statusO2.statusO2(m_idx);
List<VocVO> sellerhomeVList = sellerhomeVoc.sellerhomeVoc(m_idx);

model.addAttribute("statusPlist", statusPlist);//상품 상태에 따른 합계 조회
model.addAttribute("homePVList", homePVList);
model.addAttribute("statusOlist", statusOlist);
model.addAttribute("statusO2list", statusO2list);
model.addAttribute("sellerhomeVList", sellerhomeVList);
return "member/sellermypage";
}

//기업회원 마이페이지 홈
@GetMapping("sellerhome.do")
public String sellerHome(@SessionAttribute("member") MemberVO member, Model model) {
	if (member == null || member.getM_idx() == 0) {
	    return "redirect:/member/login.do";
	}
	int m_idx = member.getM_idx();
	
List<ProductVO> statusPlist = statusP.statusP(m_idx);//상품 상태에 따른 합계 조회
List<PvocVO> homePVList = homePvoc.homePvoc(m_idx);
List<CartVO> statusOlist = statusO.statusO(m_idx);
List<CartVO> statusO2list = statusO2.statusO2(m_idx);
List<VocVO> sellerhomeVList = sellerhomeVoc.sellerhomeVoc(m_idx);

model.addAttribute("statusPlist", statusPlist);//상품 상태에 따른 합계 조회
model.addAttribute("homePVList", homePVList);
model.addAttribute("statusOlist", statusOlist);
model.addAttribute("statusO2list", statusO2list);
model.addAttribute("sellerhomeVList", sellerhomeVList);
return "member/sellerhome";
}

//기업회원 마이페이지에 출력
@GetMapping("/sellermypage/member/sellerhome.do")
public String sellerHome() {
return "forward:/member/sellerhome.do";
}

//상품 상태에 따른 합계 조회 맵
@ModelAttribute("statusPMap")
public Map<String, String> statusPMap() {
	// 숫자값과 등급값을 매핑한 Map 생성
	Map<String, String> statusPMap = new HashMap<>();
	statusPMap.put("0", "판매중");
	statusPMap.put("1", "판매중단");
	statusPMap.put("2", "품절");
	statusPMap.put("3", "판매기한만료");
	return statusPMap;
}

/////////////////////////////// 기업회원 마이페이지 메뉴 ///////////////////////////////	
//기업회원 상품등록페이지 처리
@GetMapping("/sellermypage/product/write.do")
public String insert() {
	return "forward:/product/write.do";
}
//기업회원 상품등록페이지 처리
@GetMapping("/sellermypage/product/item.do")
public String item(HttpSession session) {
	 ProductVO vo = (ProductVO) session.getAttribute("vo");
	 int p_idx = vo.getP_idx();
	return "forward:/product/item.do?p_idx="+p_idx;
}

//기업회원 회원정보수정페이지 처리
@GetMapping("/sellermypage/member/sellerupdate.do")
public String sellerUpdate() {
	return "member/sellerupdate";
}

//기업회원 상품관리 페이지 처리	
@GetMapping("/sellermypage/product/myplist.do")
public String myplist(HttpSession session, Model model) {
    // 세션에서 MemberVO를 가져옵니다.
    MemberVO member = (MemberVO) session.getAttribute("member");

    // MemberVO가 null이 아니고, m_idx 값이 있다면
    if (member != null) {
        int m_idx = member.getM_idx();
        model.addAttribute("m_idx", m_idx);
        return "forward:/product/myplist.do?m_idx=" + m_idx;
    } else {
        // 세션에 MemberVO가 없으면 로그인 페이지로 이동하거나 다른 적절한 처리를 수행합니다.
        return "redirect:/login"; // 로그인 페이지로 리다이렉트하는 예시
    }
}

//기업회원 주문관리 페이지 처리	
@GetMapping("/sellermypage/product/order_management.do")
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

	return "forward:/product/order_management.do?m_idx=" + m_idx;
}




//문의사항 리스트(관리자, 기업회원, 개인회원 공통)
@GetMapping("/inquirylist.do")
public String getInquirylist(@SessionAttribute("member") MemberVO member, Model model) {
	if (member == null || member.getM_idx() == 0) {
	    return "redirect:/member/login.do";
	}
	int m_idx = member.getM_idx();
	model.addAttribute("m_idx", m_idx);
	
	List<VocVO> voclist = Inquiry.getInquirylist();
	model.addAttribute("inquirylist", voclist);
	List<PvocVO> pvoclist = Inquiry.getInquirylistp(m_idx);
	model.addAttribute("pinquirylist", pvoclist);
	List<VocVO> sellerbuyerVocList = sellerbuyerVoc.sellerbuyerVocList(m_idx);
	model.addAttribute("sellerbuyerVocList", sellerbuyerVocList);
	
	String member_id = member.getMember_id();
	
	model.addAttribute("member_id", member_id);
	
	List<PvocVO> buyerInquirylist = buyerInquiry.buyerInquirylist(member_id);
	model.addAttribute("buyerInquirylist", buyerInquirylist);
	
	return "member/inquirylist";
}

//문의사항 리스트(관리자, 기업회원, 개인회원 공통)
@GetMapping("/inquirylist2.do")
public String getInquirylist3(@SessionAttribute("member") MemberVO member, Model model) {
	if (member == null || member.getM_idx() == 0) {
	    return "redirect:/member/login.do";
	}
	int m_idx = member.getM_idx();
	model.addAttribute("m_idx", m_idx);
	
	List<VocVO> sellerbuyerVocList = sellerbuyerVoc.sellerbuyerVocList(m_idx);
	model.addAttribute("sellerbuyerVocList", sellerbuyerVocList);
	
	
	return "member/inquirylist2";
}



//기업회원 문의사항 리스트 처리(ajax)
@GetMapping("sellermypage/member/inquirylist.do")
public String getInquirylist2(@SessionAttribute("member") MemberVO member,Model model) {
	if (member == null || member.getM_idx() == 0) {
	    return "redirect:/member/login.do";
	}
	int m_idx = member.getM_idx();
	model.addAttribute("m_idx", m_idx);
	
	List<PvocVO> pvoclist = Inquiry.getInquirylistp(m_idx);
	model.addAttribute("pinquirylist", pvoclist);
	
	return "member/inquirylist";
}


//기업회원 고객센터 문의사항 리스트 처리(ajax)
@GetMapping("sellermypage/member/inquirylist2.do")
public String getInquirylist4(@SessionAttribute("member") MemberVO member, Model model) {
	if (member == null || member.getM_idx() == 0) {
	    return "redirect:/member/login.do";
	}
	int m_idx = member.getM_idx();
	model.addAttribute("m_idx", m_idx);
	
	List<VocVO> sellerbuyerVocList = sellerbuyerVoc.sellerbuyerVocList(m_idx);
	model.addAttribute("sellerbuyerVocList", sellerbuyerVocList);
	
	
	return "member/inquirylist2";
}

	
/////////////////////////////// 개인회원 마이페이지 홈 ///////////////////////////////		

//개인회원 마이페이지 처리
@GetMapping("/buyermypage.do")
public String buyerMypage(Model model,@SessionAttribute("member") MemberVO member) {
int m_idx = member.getM_idx();
List<CartVO> orderList_1 = myoList_1.getOrders_1(m_idx);
model.addAttribute("orderList_1", orderList_1);
return "member/buyermypage";
}

//개인회원 홈 주문내역
@GetMapping("buyerhome.do")
public String orderlist_1(int m_idx, Model model) {
List<CartVO> orderList_1 = myoList_1.getOrders_1(m_idx);
model.addAttribute("orderList_1", orderList_1);
return "member/buyerhome";
}

//개인회원 마이페이지 홈(ajax)
@GetMapping("/buyermypage/member/buyerhome.do")
public String buyerhome(Model model,@SessionAttribute("member") MemberVO member) {
int m_idx = member.getM_idx();

model.addAttribute("m_idx", m_idx);
return "forward:/member/buyerhome.do?m_idx="+m_idx;
}
/////////////////////////////// 개인회원 마이페이지 ///////////////////////////////	


// 개인회원 전체주문 처리(ajax)
@GetMapping("/buyermypage/product/order_history.do")
public String orderlist(Model model,@SessionAttribute("member") MemberVO member) {
// 세션에서 m_idx 가져오기

int m_idx = member.getM_idx();
// 세션에서 m_idx가 있을 경우, m_idx를 모델에 추가
model.addAttribute("m_idx", m_idx);

// "forward:/product/order_history.do"로 리다이렉트
return "forward:/product/order_history.do?m_idx="+m_idx;


}

//개인회원 리뷰 모아보기
@GetMapping("/buyermypage/product/myreview.do")
public String myreview(@SessionAttribute("member") MemberVO member, Model model) {
	if (member == null || member.getM_idx() == 0) {
	    return "redirect:/member/login.do";
	}
	int m_idx = member.getM_idx();
	List<ReviewVO> myreview = myReview.myreview(m_idx);

model.addAttribute("myreview", myreview); 
return "forward:/product/myreview.do?m_idx="+m_idx;
}



//개인회원 회원정보 설정
@GetMapping("/buyermypage/member/buyerupdate.do")
public String buyerUpdate() {
return "member/buyerupdate";
}

//개인회원 주소록 설정
@GetMapping("/buyermypage/member/buyeraddress.do")
public String buyerAddress() {
return "member/buyeraddress";
}

//개인회원 상품 문의/답변 설정
@GetMapping("/buyermypage/member/inquirylist.do")
public String inquirylist(@SessionAttribute("member") MemberVO member, Model model) {
	
	String member_id = member.getMember_id();
	model.addAttribute("member_id", member_id);
	
	List<PvocVO> buyerInquirylist = buyerInquiry.buyerInquirylist(member_id);
	model.addAttribute("buyerInquirylist", buyerInquirylist);
	
	
return "member/inquirylist";
}

//개인회원 고객센터 문의사항 리스트 처리(ajax)
@GetMapping("buyermypage/member/inquirylist2.do")
public String getInquirylist5(@SessionAttribute("member") MemberVO member, Model model) {
	if (member == null || member.getM_idx() == 0) {
	    return "redirect:/member/login.do";
	}
	int m_idx = member.getM_idx();
	model.addAttribute("m_idx", m_idx);
	
	List<VocVO> sellerbuyerVocList = sellerbuyerVoc.sellerbuyerVocList(m_idx);
	model.addAttribute("sellerbuyerVocList", sellerbuyerVocList);
	
	
	return "member/inquirylist2";
}

/////////////////////////////// 관리자 마이페이지 홈 ///////////////////////////////		
//관리자 마이페이지 처리
@GetMapping("adminmypage.do")
public String adminMypage(Model model) {
	int toProduct = todayProduct.todayProduct();
	List<NoticeVO> homeNList = homeNotice.homeNotice();
	List<VocVO> homeVList = homeVoc.homeVoc();
	List<ProductVO> statusP2list = statusP2.statusP2();
	List<MemberVO> memberCntlist = memberCnt.memberCnt();
	
	
	model.addAttribute("todayProduct", toProduct);
	model.addAttribute("homeNList", homeNList);
	model.addAttribute("homeVList", homeVList);
	model.addAttribute("statusP2list", statusP2list);
	model.addAttribute("memberCntlist", memberCntlist);
return "member/adminmypage";
}

//관리자 홈페이지 처리
@GetMapping("adminhome.do")
public String adminhome(Model model) {
	int toProduct = todayProduct.todayProduct();
	List<NoticeVO> homeNList = homeNotice.homeNotice();
	List<VocVO> homeVList = homeVoc.homeVoc();
	List<ProductVO> statusP2list = statusP2.statusP2();
	List<MemberVO> memberCntlist = memberCnt.memberCnt();
	
	 
	model.addAttribute("todayProduct", toProduct);	
	model.addAttribute("homeNList", homeNList);
	model.addAttribute("homeVList", homeVList);
	model.addAttribute("statusP2list", statusP2list);
	model.addAttribute("memberCntlist", memberCntlist);
return "member/adminhome";
}

//관리자 마이페이지 홈(ajax)
@GetMapping("/adminmypage/member/adminhome.do")
public String adminhome2(Model model) {

return "forward:/member/adminhome.do";
}

//관리자, 기업회원 공통 문의사항 상태
@ModelAttribute("voc_stateMap")
public Map<String, String> voc_stateMap() {
	// 숫자값과 등급값을 매핑한 Map 생성
	Map<String, String> voc_stateMap = new HashMap<>();
	voc_stateMap.put("1", "답변중");
	voc_stateMap.put("2", "답변완료");

	return voc_stateMap;
}
/////////////////////////////// 관리자 마이페이지 ///////////////////////////////	


//회원관리 처리
@GetMapping("member_management.do")
public String member_management(@ModelAttribute("sVO")SearchVO searchVO, Model model) {
List<MemberVO> memberList = mManage.getMembers(searchVO);
List<MemberVO> memberCntlist = memberCnt.memberCnt();
model.addAttribute("memberList", memberList);
model.addAttribute("memberCntlist", memberCntlist);
if(searchVO.getPageNum() == 0) {
searchVO.setPageNum(1);
}
pageNav.setTotalRows(pTotalCount.getTotalCount(searchVO));
pageNav = pPage.setPageNav(pageNav, searchVO.getPageNum(), searchVO.getPageBlock());
model.addAttribute("pageNav", pageNav);
return "member/member_management";
}

//회원 등급 변경
@PostMapping("gradeUpdate.do")
public String gradeUpdate(@ModelAttribute("memberVO")MemberVO vo, Model model) {
	int m_idx = vo.getM_idx();
	int gradeUpdate = mGrade.gradeUpdate(vo);
	
	String viewPage = (gradeUpdate == 1) ? "redirect:/member/member_management.do" : "redirect:/member/member_management.do";

	return viewPage;// views/member폴더에 대한 경로 추가
}

//회원 탈퇴/복구 변경
@PostMapping("cancelUpdate.do")
public String cancelUpdate(@ModelAttribute("memberVO")MemberVO vo, Model model) {
	int cUpdate = cancelUpdate.cancelUpdate(vo);
	int m_idx = vo.getM_idx();
	String viewPage = (cUpdate == 1) ? "redirect:/member/member_management.do" : "redirect:/member/member_management.do";

	System.out.println("cancelUpdate 메서드 호출됨");
    System.out.println("m_idx: " + m_idx);
    System.out.println("cancelUpdate 결과: " + cancelUpdate);
	
	return viewPage;// views/member폴더에 대한 경로 추가
}


//관리자 회원관리 처리(ajax)
@GetMapping("/adminmypage/member/member_management.do")
public String member_management2() {
return "forward:/member/member_management.do";
}

//관리자 개별회원정보
@GetMapping("/member_info.do")
public String getMember(int m_idx,Model model) {

MemberVO vo = mInfo.getMember(m_idx);
model.addAttribute("member", vo);

List<String> categorieList = vo.getCategorie() != null ? Arrays.asList(vo.getCategorie().split(",")) : null;
model.addAttribute("categorieList", categorieList);


return "member/member_info";
}

//회원 등급
@ModelAttribute("gradeMap")
public Map<String, String> getGradeMap() {
	// 숫자값과 등급값을 매핑한 Map 생성
	Map<String, String> gradeMap = new HashMap<>();
	gradeMap.put("1", "개인회원 - Wellcome");
	gradeMap.put("2", "개인회원 - Bronze");
	gradeMap.put("3", "개인회원 - Silver");
	gradeMap.put("4", "개인회원 - Gold");
	gradeMap.put("5", "개인회원 - Platinum");
	gradeMap.put("6", "미정");
	gradeMap.put("7", "미정");
	gradeMap.put("8", "관리자");
	gradeMap.put("9", "기업회원");
	gradeMap.put("0", "총 회원 수");

	return gradeMap;
}

//탈퇴 여부
@ModelAttribute("c_or_nMap")
public Map<String, String> getC_or_nMap() {
	// 숫자값과 등급값을 매핑한 Map 생성
	Map<String, String> c_or_nMap = new HashMap<>();
	c_or_nMap.put("0", "등록된 회원");
	c_or_nMap.put("1", "탈퇴한 회원");
	return c_or_nMap;
}

//카테고리
@ModelAttribute("categorieMap")
public Map<String, String> getCategorieMap() {

	Map<String, String> categorieMap = new HashMap<>();
	categorieMap.put("food","식품");
	categorieMap.put("homeDeco","홈데코");
	categorieMap.put("hobby","취미");
	categorieMap.put("dailyNecessity","생필품");
	categorieMap.put("clothes","의류");
	categorieMap.put("book","도서");
	categorieMap.put("furniture","가구");
	categorieMap.put("homeAppliances","가전");
	categorieMap.put("sports","스포츠");

	return categorieMap;
}

//관리자 전체 상품내역 처리(ajax)
@GetMapping("adminmypage/product/allplist.do")
public String allpList(Model model) {
		List<ProductVO> allList = allpList.getProducts4();
	model.addAttribute("allList", allList);
	return "product/allplist";
}

//관리자 전체 주문내역 처리(ajax)
@GetMapping("adminmypage/product/allorderlist.do")
public String allolist(SearchVO searchVO, Model model) {
	if(searchVO.getPageNum() == 0) {
		searchVO.setPageNum(1);
	}
	
	int totalRows = allorderCnt.allorderCnt(searchVO);
	
	System.out.println("totalRows:"+totalRows);
	
	PageNav pageNav = new PageNav();
	
	pageNav.setTotalRows(totalRows);//해당 페이지의 총 페이지 수 메소드
	pageNav = pPage2.setPageNav(pageNav, searchVO.getPageNum(), searchVO.getPageBlock());
	model.addAttribute("pageNav", pageNav);

	
	System.out.println("allorderCnt:"+pageNav.getTotalRows());
	System.out.println("startIdx"+pageNav.getStartNum());
    List<CartVO> allorderList = alloList.getOrders3(searchVO);
    model.addAttribute("allorderList", allorderList);
// 주문내역 페이지로 이동
return "product/allorderlist";
}



//전체 매출 페이지 요청(ajax)
@GetMapping("adminmypage/member/allSales.do")
public String allSales2(Model model) {
	List<SalesVO> salesList = sList.getSales();
	
	model.addAttribute("salesList", salesList);
	
	return "member/allSales";
}


//관리자 문의사항 리스트 처리(ajax)
@GetMapping("adminmypage/member/inquirylist.do")
public String getInquirylist1(Model model) {
	List<VocVO> voclist = Inquiry.getInquirylist();
	model.addAttribute("inquirylist", voclist);
	
	return "member/inquirylist";
}


//택배사 이름 맵
@ModelAttribute("parcel_companyMap")
public Map<String, String> parcel_companyMap() {
	// 영어값과 한글값을 매핑한 Map 생성
	Map<String, String> parcel_companyMap = new HashMap<>();
	parcel_companyMap.put("1", "CJ대한통운");
	parcel_companyMap.put("2", "한진택배");
	parcel_companyMap.put("3", "롯데택배");
	parcel_companyMap.put("4", "로젠택배");
	parcel_companyMap.put("5", "일양로지스");
	parcel_companyMap.put("6", "DHL");
	parcel_companyMap.put("7", "FedEx");
	parcel_companyMap.put("8", "대신택배");
	parcel_companyMap.put("9", "경동택배");
	parcel_companyMap.put("10", "합동택배");
	parcel_companyMap.put("11", "CU편의점택배");
	parcel_companyMap.put("12", "GS Postbox 택배");
	parcel_companyMap.put("13", "TNT Express");
	parcel_companyMap.put("14", "천일택배");
	parcel_companyMap.put("15", "건영택배");
	parcel_companyMap.put("16", "GSM nton");
	parcel_companyMap.put("17", "ECMS Express");
	parcel_companyMap.put("18", "굿투럭");
	parcel_companyMap.put("19", "GSI Express");
	parcel_companyMap.put("20", "우리택배");
	return parcel_companyMap;
}


//택배사 주소 맵
@ModelAttribute("parcelMap")
public Map<String, String> parcelMap() {
    // 영어값과 한글값을 매핑한 Map 생성
    Map<String, String> parcelMap = new HashMap<>();
    parcelMap.put("1", "http://nexs.cjgls.com/web/info.jsp?slipno=");
    parcelMap.put("2", "https://www.hanjin.com/kor/CMS/DeliveryMgr/WaybillResult.do?\r\n"
    		+ "mCode=MN038&schLang=KR&wblnumText2=");
    parcelMap.put("3", "https://www.lotteglogis.com/open/tracking?InvNo=");
    parcelMap.put("4", "https://www.ilogen.com/web/personal/trace/");
    parcelMap.put("5", "https://www.ilyanglogis.com/functionality/popup_result.asp?hawb_no=");
    parcelMap.put("6", "https://www.dhl.com/kr-ko/home/tracking.html?tracking-id=");
    parcelMap.put("7", "https://www.fedex.com/fedextrack/?trknbr=");
    parcelMap.put("8", "https://www.ds3211.co.kr/freight/internalFreightSearch.ht?billno=");
    parcelMap.put("9", "https://kdexp.com/newDeliverySearch.kd?barcode=");
    parcelMap.put("10", "https://hdexp.co.kr/deliverySearch2.hd?barcode=");
    parcelMap.put("11", "https://www.cupost.co.kr/postbox/delivery/localResult.cupost?invoice_no=");
    parcelMap.put("12", "https://www.cvsnet.co.kr/invoice/tracking.do?invoice_no=");
    parcelMap.put("13", "https://www.tnt.com/express/ko_kr/site/shipping-tools/tracking.html?searchType=con&cons=");
    parcelMap.put("14", "http://www.chunil.co.kr/HTrace/HTrace.jsp?transNo=");
    parcelMap.put("15", "https://www.kunyoung.com/goods/goods_01.php?mulno=");
    parcelMap.put("16", "http://expressweb.co.kr/member/loginTracing.do?fwdCode=gexp&bound=AI&langCode=KOR&HBLNO=");
    parcelMap.put("17", "https://www.ecmsglobal.com/ko-kr/tracking.html?orderNumber=");
    parcelMap.put("18", "http://www.goodstoluck.co.kr/tracking/tracking.php?Txt_word=");
    parcelMap.put("19", "https://gsiexpress.com/track_pop.php?track_type=ship_num&query_num=");
    parcelMap.put("20", "http://www.honamlogis.co.kr/page/index.php?pid=tracking_number&SLIP_BARCD=");
    return parcelMap;
}

	//주문상세보기 페이지 요청
	@GetMapping("/ViewOrderDetails.do")
	public String ViewOrderDetails(int o_idx, Model model) {
		List<CartVO> orderList = mViewOrderDetails.getViewOrderDetails(o_idx);
		CartVO firstCartVO = orderList.get(0);
		int m_idx = firstCartVO.getMMIdx();
		MemberVO vo = mInfo.getMember(m_idx);
		
		int totalSum = 0;
		for (CartVO cartVO : orderList) {
		    int itemPrice = cartVO.getPrice() * cartVO.getC_quantity();
		    totalSum += itemPrice;
		}
		
		int totalDiscount = 0;
		for (CartVO cartVO : orderList) {
		    int itemDiscount = (int)((cartVO.getPrice()*cartVO.getC_quantity())/100.0*cartVO.getDiscount_rate());
		    totalDiscount += itemDiscount;
		}
		int orderListSize = orderList.size();
		
		
		model.addAttribute("totalProductPrice", totalSum);
		model.addAttribute("totalDiscount", totalDiscount);
		model.addAttribute("orderListSize", orderListSize);
		model.addAttribute("member2", vo);
		model.addAttribute("orderList", orderList);
		return "member/ViewOrderDetails";
	}



}
