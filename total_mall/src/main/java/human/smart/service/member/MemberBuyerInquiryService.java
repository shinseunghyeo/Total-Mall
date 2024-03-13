package human.smart.service.member;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.PvocVO;
import lombok.AllArgsConstructor;

@Service("buyerInquiry")
@AllArgsConstructor
public class MemberBuyerInquiryService implements MemberService {
	private MemberDAO dao;

	@Override
	public List<PvocVO> buyerInquirylist(String member_id) {
		return dao.buyerInquirylist(member_id);
	}

}
