package human.smart.service.member;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("adminvocCnt")
@AllArgsConstructor
public class MemberAdminvocCntService implements MemberService {
	
	private MemberDAO dao;
	
	@Override
	public int adminvocCnt(SearchVO vo) {
		return dao.adminvocCnt(vo);
	}
	
	

}
