package human.smart.service.member;

import java.sql.SQLException;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.MemberVO;
import lombok.AllArgsConstructor;

@Service("mCancel")
@AllArgsConstructor
public class MemberCancelService implements MemberService {
	private MemberDAO dao;
	
		
	@Override
	public int cancel(int m_idx) {
		int result = 0;//계정삭제 실패시 결과값
		
		try {
			result=dao.cancel(m_idx);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
