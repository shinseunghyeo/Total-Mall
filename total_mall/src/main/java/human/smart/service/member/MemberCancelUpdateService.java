package human.smart.service.member;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.MemberVO;
import lombok.AllArgsConstructor;

@Service("cancelUpdate")
@AllArgsConstructor
public class MemberCancelUpdateService implements MemberService {
	private MemberDAO dao;

	@Override
	public int cancelUpdate(MemberVO vo) {
		return dao.cancelUpdate(vo);
	}

}
