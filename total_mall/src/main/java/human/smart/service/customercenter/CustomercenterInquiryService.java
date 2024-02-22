package human.smart.service.customercenter;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.CustomercenterDAO;
import human.smart.totalMall.vo.VocVO;
import lombok.AllArgsConstructor;

@Service("cInquiry")
@AllArgsConstructor
public class CustomercenterInquiryService implements CustomercenterService {
	
	private CustomercenterDAO dao;

	@Override
	public List<VocVO> getBoard(int m_idx) {
		return dao.getBoard(m_idx);
	}
}
