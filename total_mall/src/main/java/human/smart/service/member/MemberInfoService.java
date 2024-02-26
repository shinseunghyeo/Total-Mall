package human.smart.service.member;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.MemberVO;
import lombok.AllArgsConstructor;

@Service("mInfo")
@AllArgsConstructor
public class MemberInfoService implements MemberService {
	private MemberDAO dao;

	@Override
	public MemberVO getMember(int m_idx) {
		return dao.getMember(m_idx);
	}

}
