package human.smart.service.customercenter;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.CustomercenterDAO;
import human.smart.totalMall.vo.NoticeVO;
import human.smart.totalMall.vo.SearchVO;
import human.smart.totalMall.vo.VocVO;
import lombok.AllArgsConstructor;

@Service("sellerhomeVoc")
@AllArgsConstructor
public class CustomercenterSellerHomeVocService implements CustomercenterService {
	
	private CustomercenterDAO dao;
	
	@Override
	public List<VocVO> sellerhomeVoc(int m_idx){
		return dao.sellerhomeVoc(m_idx);
	}

}
