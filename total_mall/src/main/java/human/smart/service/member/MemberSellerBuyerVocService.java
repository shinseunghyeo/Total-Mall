package human.smart.service.member;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.VocVO;
import lombok.AllArgsConstructor;

@Service("sellerbuyerVoc")
@AllArgsConstructor
public class MemberSellerBuyerVocService implements MemberService {
	private MemberDAO dao;

	@Override
	public List<VocVO> sellerbuyerVocList(int m_idx) {
		return dao.sellerbuyerVocList(m_idx);
	}

}
