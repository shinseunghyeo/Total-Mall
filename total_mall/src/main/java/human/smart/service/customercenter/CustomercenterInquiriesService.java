package human.smart.service.customercenter;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.CustomercenterDAO;
import human.smart.totalMall.vo.VocVO;
import lombok.AllArgsConstructor;

@Service("cInquiries")
@AllArgsConstructor
public class CustomercenterInquiriesService implements CustomercenterService {
	
	private CustomercenterDAO dao;

	@Override
	public List<VocVO> vocBoard(int v_idx) {
		return dao.vocBoard(v_idx);
	}
	@Override
	public int answerupdate(VocVO voc) {
		return dao.answerupdate(voc);
	}

}
