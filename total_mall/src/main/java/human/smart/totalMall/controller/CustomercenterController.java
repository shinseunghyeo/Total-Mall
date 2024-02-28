package human.smart.totalMall.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import human.smart.totalMall.common.CCPageNav;
import human.smart.totalMall.vo.MemberVO;
import human.smart.totalMall.vo.NoticeVO;
import human.smart.totalMall.vo.SearchVO;
import human.smart.totalMall.vo.VocVO;
import lombok.Setter;

@Controller
@RequestMapping("/customercenter")
public class CustomercenterController {

	@Setter(onMethod_={ @Autowired }) CustomercenterService cPage,cNotice, cTotalCount, 
	cInsert, cInquiry;
	@Setter(onMethod_={ @Autowired }) CCPageNav CCpageNav;
	
	//공지사항 페이지 요청 처리
	@GetMapping("/notice.do")
	public String notice(@ModelAttribute("sVO") SearchVO searchVO, Model model) {

		if(searchVO.getPageNum() == 0) {
			searchVO.setPageNum(1);
		}			

		List<NoticeVO> noticeList = cNotice.getBoards(searchVO);
		model.addAttribute("noticeList", noticeList);

		CCpageNav.setTotalRows(cTotalCount.getTotalCount(searchVO));
		CCpageNav = cPage.setCCPageNav(CCpageNav, searchVO.getPageNum(), searchVO.getPageBlock());
		model.addAttribute("CCpageNav", CCpageNav);

		return "customercenter/notice";//views/member폴더에 대한 경로 추가
	}
	//공지사항 글쓰기 페이지 요청 처리
	@GetMapping("/write.do")
	public String write() {
		return "customercenter/write";
	}
	//공지사항 글쓰기 요청 처리
	@PostMapping("/writeProcess.do")
	public String writeProcess(NoticeVO not, HttpServletRequest request) {
		String viewPage = "customercenter/write";//글등록 실패시 JSP페이지
		int result = cInsert.notInsert(not, request);
		if(result == 1) {
			viewPage = "redirect:notice.do?service";//글등록 성공시 JSP페이지
		}
		
		return viewPage;
	}

	//문의내역 요청 처리
	@GetMapping("/inquiry.do")
	public String inquiry(@SessionAttribute("member") MemberVO member, Model model) {
		int m_idx = member.getM_idx();
		List<VocVO> voc = cInquiry.getBoard(m_idx);
		
		model.addAttribute("inquiry", voc);
		return "customercenter/inquiry";//views/member폴더에 대한 경로 추가
		
	}

	//자주 묻는 질문 페이지 요청 처리
	@GetMapping("/QnA.do")
	public String QnA() {
		return "customercenter/QnA";//views/member폴더에 대한 경로 추가
	}

	//관리자 문의하기 페이지 요청 처리
	@GetMapping("/voc.do")
	public String voc() {
		return "customercenter/voc";//views/member폴더에 대한 경로 추가
	}

	//관리자문의 요청 처리
	@PostMapping("/vocProcess.do")
	public String vocProcess(VocVO voc, HttpServletRequest request) {
		String viewPage = "customercenter/voc";//글등록 실패시 JSP페이지
		int result = cInsert.vocInsert(voc, request);
		if(result == 1) {
			viewPage = "redirect:voc.do";//글등록 성공시 JSP페이지
		}
		
		return viewPage;
	}
	
//	@GetMapping("/update.do")
//	public String update(int b_idx, Model model) {
//		//요청과 함께 전달되는 값: b_idx
//		//전달되는 값을 @RequestParam("b_idx")을 이용해서 전달값의 이름과 다른 매개변수에
//	    //할당받을 수 있음
//			
//		//게시글의 내용을 가져오는 것을 BoardViewService클래스를 이용해서 처리함
//		BoardVO vo = bView.getBoard(b_idx);
//		
//		model.addAttribute("board", vo);
//			
//		return "board/update";
//		
//	}
//	
//	//글등록 요청 처리
//	@PostMapping("/updateProcess.do")
//	public String updateProcess(BoardVO vo, HttpServletRequest request) {
//	//요청 처리 메소드의 매개변수: 글등록 페이지에서 입력된 값, 파일 업로드를 위해서
//	//웹 프로그램의 uploads폴더에 대한 실제 경로를 얻기 위해서 request객체 필요	
//		
//		String viewPage = "board/update";//글수정 실패시 JSP페이지
//		
//		//글 등록 요청을 BoardUpdateService클래스로 처리
//		int result = bUpdate.update(vo, request);
//		
//		if(result == 1) {
//			viewPage = "redirect:list.do";//글수정 성공시 JSP페이지
//		}
//		
//		return viewPage;
//	}
//
//	//글삭제 요청 처리
//	@GetMapping("/delete.do")
//	public String delete(int b_idx) {
//		//요청과 함께 전달되는 값: b_idx
//		//전달되는 값을 @RequestParam("b_idx")을 이용해서 전달값의 이름과 다른 매개변수에
//	    //할당받을 수 있음
//			
//		//게시글 삭제하는 것을 BoardDeleteService클래스를 이용해서 처리함
//		int result = bDelete.delete(b_idx);
//		
//		String viewPage = "board/view";//글삭제 실패시 JSP페이지
//		if(result == 1) {
//			viewPage = "redirect:/board/list.do";
//		}
//			
//			
//		return viewPage;
//		
//	}
//	
//	
//	//파일 다운로드 요청 처ㅣ
//	@GetMapping("/download.do")
//	public void download(String originfile_name, String savefile_name, 
//			HttpServletRequest request, HttpServletResponse response) {
//		//요청을 처리한 후 응답페이지를 보여주지 않고 직접 response객체에 파일을 출력함
//		//반환형을 void로 정의함
//		//파일 다운로드를 BoardDownloadService클래스에서 처리하기 위해서는 추가적으로 request, response
//		//객체가 필요하므로 요청에 대해 처리하는 메소드의 매개변수로 추가해줌
//		bDownload.download(originfile_name, savefile_name,request, response);
//	}
	

}
