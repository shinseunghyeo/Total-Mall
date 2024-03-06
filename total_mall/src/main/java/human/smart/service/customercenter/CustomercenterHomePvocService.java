package human.smart.service.customercenter;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.CustomercenterDAO;
import human.smart.totalMall.vo.PvocVO;
import lombok.AllArgsConstructor;

@Service("homePvoc")
@AllArgsConstructor
public class CustomercenterHomePvocService implements CustomercenterService {
	
	private CustomercenterDAO dao;
	
	@Override
	public List<PvocVO> homePvoc(int m_idx){
		return dao.homePvoc(m_idx);
	}

}
