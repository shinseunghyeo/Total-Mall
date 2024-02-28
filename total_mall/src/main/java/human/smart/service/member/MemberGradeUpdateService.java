package human.smart.service.member;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.MemberVO;
import lombok.AllArgsConstructor;

@Service("mGrade")
@AllArgsConstructor
public class MemberGradeUpdateService implements MemberService {
	private MemberDAO dao;

	@Override
	public int gradeUpdate(MemberVO vo) {
		return dao.gradeUpdate(vo);
	}

}
