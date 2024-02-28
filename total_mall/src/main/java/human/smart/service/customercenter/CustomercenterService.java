package human.smart.service.customercenter;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import human.smart.totalMall.common.CCPageNav;
import human.smart.totalMall.vo.NoticeVO;
import human.smart.totalMall.vo.SearchVO;
import human.smart.totalMall.vo.VocVO;

public interface CustomercenterService {
	default List<NoticeVO> getBoards(SearchVO vo){return null;}
	default CCPageNav setCCPageNav(CCPageNav pageNav, int pageNum, int pageBlock){return null;}
	default int vocInsert(VocVO voc, HttpServletRequest request) {return 0;}
	default int notInsert(NoticeVO not, HttpServletRequest request) {return 0;}
	default List<VocVO> getBoard(int m_idx) {return null;}
	default void updateReadCount(int b_idx) {}
	default int update(NoticeVO vo, HttpServletRequest request) {return 0;}
	default int delete(int b_idx) {return 0;}
	default void download(String originfile_name, String savefile_name, HttpServletRequest request,
			HttpServletResponse response) {}
	default int getTotalCount(SearchVO vo) {return 0;}
}
