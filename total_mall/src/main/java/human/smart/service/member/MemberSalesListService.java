package human.smart.service.member;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.MemberDAO;
import human.smart.totalMall.vo.SalesVO;
import lombok.AllArgsConstructor;

@Service("sList")
@AllArgsConstructor
public class MemberSalesListService implements MemberService {
	private MemberDAO dao;
	
	@Override
	public List<SalesVO> getSales(){
		return dao.getSales();
	}

}