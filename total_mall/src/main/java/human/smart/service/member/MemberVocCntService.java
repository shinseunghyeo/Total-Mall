package human.smart.service.member;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("VocCnt")
@AllArgsConstructor
public class MemberVocCntService implements MemberService {
	
	private MemberDAO dao;
	
	@Override
	public int VocCnt(SearchVO vo) {
		return dao.VocCnt(vo);
	}
	
	

}
