package human.smart.service.customercenter;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.CustomercenterDAO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("cTotalCount")
@AllArgsConstructor
public class CustomercenterTotalCountService implements CustomercenterService {
	
	private CustomercenterDAO dao;
	
	@Override
	public int getTotalCount(SearchVO vo) {
		return dao.getTotalCount(vo);
	}
	
	

}
