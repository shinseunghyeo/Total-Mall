package human.smart.service.customercenter;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.CustomercenterDAO;
import human.smart.totalMall.vo.NoticeVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("cNotice")
@AllArgsConstructor
public class CustomercenterNoticeService implements CustomercenterService {
	
	private CustomercenterDAO dao;
	
	@Override
	public List<NoticeVO> getBoards(SearchVO vo){
		vo.setStartIdx((vo.getPageNum()-1)*10);
		return dao.getBoards(vo);
	}

}
