package human.smart.service.member;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.MemberVO;
import human.smart.totalMall.vo.ProductVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@Service("memberCnt")
@AllArgsConstructor
public class MemberCountService implements MemberService {
	
	private MemberDAO dao;

	@Override
	public List<MemberVO> memberCnt(){
		return dao.memberCnt();
	}
	
}
