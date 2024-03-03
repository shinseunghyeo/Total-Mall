package human.smart.service.customercenter;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.CustomercenterDAO;
import human.smart.totalMall.vo.NoticeVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("homeNotice")
@AllArgsConstructor
public class CustomercenterHomeNoticeService implements CustomercenterService {
	
	private CustomercenterDAO dao;
	
	@Override
	public List<NoticeVO> homeNotice(){
		return dao.homeNotice();
	}

}
