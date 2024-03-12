package human.smart.service.member;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.CartVO;
import lombok.AllArgsConstructor;

@Service("mViewOrderDetails")
@AllArgsConstructor
public class MemberViewOrderDetailsService implements MemberService {
	private MemberDAO dao;
	
	@Override
	public List<CartVO> getViewOrderDetails(int o_idx) {
		
		
		return dao.getViewOrderDetails(o_idx);
	}

}
