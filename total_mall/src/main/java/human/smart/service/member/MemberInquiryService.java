package human.smart.service.member;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.PvocVO;
import human.smart.totalMall.vo.VocVO;
import lombok.AllArgsConstructor;

@Service("Inquiry")
@AllArgsConstructor
public class MemberInquiryService implements MemberService {
	private MemberDAO dao;

	@Override
	public List<VocVO> getInquirylist() {
		return dao.getInquirylist();
	}
	@Override
	public List<PvocVO> getInquirylistp(int m_idx) {
		return dao.getInquirylistp(m_idx);
	}

}
