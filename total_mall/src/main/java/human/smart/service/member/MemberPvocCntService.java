package human.smart.service.member;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("pvocCnt")
@AllArgsConstructor
public class MemberPvocCntService implements MemberService {
	
	private MemberDAO dao;
	
	@Override
	public int pvocCnt(SearchVO vo) {
		return dao.pvocCnt(vo);
	}
	
	

}
