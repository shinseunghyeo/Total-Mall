package human.smart.service.member;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.MemberVO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("mManage")
@AllArgsConstructor
public class MemberManagementService implements MemberService {
	
	private MemberDAO dao;

	@Override
	public List<MemberVO> getMembers(SearchVO vo){
		vo.setStartIdx((vo.getPageNum()-1)*5);
		return dao.getMembers(vo);
	}
	
}
