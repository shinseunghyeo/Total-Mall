package human.smart.service.member;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.PvocVO;
import human.smart.totalMall.vo.SearchVO;
import human.smart.totalMall.vo.VocVO;
import lombok.AllArgsConstructor;

@Service("Inquiry")
@AllArgsConstructor
public class MemberInquiryService implements MemberService {
	private MemberDAO dao;

	@Override
	public List<VocVO> getInquirylist(SearchVO vo) {
		vo.setStartIdx((vo.getPageNum()-1)*10);
		return dao.getInquirylist(vo);
	}
	
	@Override
	public List<PvocVO> getInquirylistp(SearchVO vo) {
		vo.setStartIdx((vo.getPageNum()-1)*10);
		return dao.getInquirylistp(vo);
	}

}
