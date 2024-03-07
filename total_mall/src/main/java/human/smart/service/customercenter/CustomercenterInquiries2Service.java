package human.smart.service.customercenter;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.CustomercenterDAO;
import human.smart.totalMall.vo.PvocVO;
import lombok.AllArgsConstructor;

@Service("cInquiries2")
@AllArgsConstructor
public class CustomercenterInquiries2Service implements CustomercenterService {
	
	private CustomercenterDAO dao;

	@Override
	public List<PvocVO> vocBoard2(int v_idx) {
		return dao.vocBoard2(v_idx);
	}
	@Override
	public int answerupdate2(PvocVO voc) {
		return dao.answerupdate2(voc);
	}

}
