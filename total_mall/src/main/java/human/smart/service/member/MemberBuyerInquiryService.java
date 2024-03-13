package human.smart.service.member;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.PvocVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("buyerInquiry")
@AllArgsConstructor
public class MemberBuyerInquiryService implements MemberService {
	private MemberDAO dao;

	@Override
	public List<PvocVO> buyerInquirylist(SearchVO vo) {
		vo.setStartIdx((vo.getPageNum()-1)*10);
		return dao.buyerInquirylist(vo);
	}

}
