package human.smart.service.member;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("MembersCnt")
@AllArgsConstructor
public class MemberMemberCntService implements MemberService {
	
	private MemberDAO dao;
	
	@Override
	public int MembersCnt(SearchVO vo) {
		return dao.MembersCnt(vo);
	}
	
	

}
