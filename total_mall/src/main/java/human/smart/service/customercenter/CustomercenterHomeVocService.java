package human.smart.service.customercenter;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.CustomercenterDAO;
import human.smart.totalMall.vo.NoticeVO;
import human.smart.totalMall.vo.SearchVO;
import human.smart.totalMall.vo.VocVO;
import lombok.AllArgsConstructor;

@Service("homeVoc")
@AllArgsConstructor
public class CustomercenterHomeVocService implements CustomercenterService {
	
	private CustomercenterDAO dao;
	
	@Override
	public List<VocVO> homeVoc(){
		return dao.homeVoc();
	}

}
