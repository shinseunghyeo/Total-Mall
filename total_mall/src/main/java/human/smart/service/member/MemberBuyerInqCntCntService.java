package human.smart.service.member;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("buyerInqCnt")
@AllArgsConstructor
public class MemberBuyerInqCntCntService implements MemberService {
	
	private MemberDAO dao;
	
	@Override
	public int buyerInqCnt(SearchVO vo) {
		return dao.buyerInqCnt(vo);
	}
	
	

}
