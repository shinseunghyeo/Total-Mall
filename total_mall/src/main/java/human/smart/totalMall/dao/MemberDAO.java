package human.smart.totalMall.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import human.smart.totalMall.vo.CartVO;
import human.smart.totalMall.vo.MemberVO;
import human.smart.totalMall.vo.PvocVO;
import human.smart.totalMall.vo.SalesVO;
import human.smart.totalMall.vo.SearchVO;
import human.smart.totalMall.vo.VocVO;
import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class MemberDAO {
	public static final String MAPPER = "human.smart.totalMall.MemberMapper";
	
	private final SqlSession sqlSession;
	
	//전체매출불러오기
	public List<SalesVO> getSales(){
		return sqlSession.selectList(MAPPER+".getSales");
	}
	
	//회원가입하기
	public int join(MemberVO vo) throws SQLException{
		return sqlSession.insert(MAPPER+".join",vo);
	}
	//로그인 처리하기
	public MemberVO login(String member_id) throws SQLException{
		return sqlSession.selectOne(MAPPER+".login", member_id);
	}
	//비밀번호 가져오기
	public String getPassword(String member_id) {
		return sqlSession.selectOne(MAPPER+".getPassword", member_id);
	}
	//아이디 찾기
	public MemberVO findId(String member_name, String email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_name", member_name);
		map.put("email", email);
		
		return sqlSession.selectOne(MAPPER+".findId", map);
	}
	
	//비밀번호 찾기
	public MemberVO findPw(String member_id, String email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("email", email);
		
		return sqlSession.selectOne(MAPPER+".findPw", map);
	}
	
	//비밀번호 변경하기
	public MemberVO findPwProcess(MemberVO vo) throws SQLException{
		MemberVO newVO = null;		
		if(sqlSession.update(MAPPER+".findPwProcess", vo) == 1) {//비밀번호 업데이트 성공
			newVO = getMember(vo.getM_idx());
		}
		return newVO;
	}
	
	//한명의 회원정보 가져오기
	public MemberVO getMember(int m_idx){
		return sqlSession.selectOne(MAPPER+".getMember", m_idx);
	}
	
	//회원정보 전체 가져오기
	public List<MemberVO> getMembers(SearchVO vo){
		return sqlSession.selectList(MAPPER+".getMembers", vo);
	}
	
	//회원정보 전체 가져오기 합계
	public int MembersCnt(SearchVO vo) {
		return sqlSession.selectOne(MAPPER+".MembersCnt", vo);
	}
		
	//회원등급 변경
	public int gradeUpdate(MemberVO vo) {
		return sqlSession.update(MAPPER+".gradeUpdate", vo);
	}
	
	//개인회원 회원정보 수정하기
	public MemberVO BuyerUpdateProcess(MemberVO vo) throws SQLException{
		MemberVO newVO = null;
		
		if(sqlSession.update(MAPPER+".buyerUpdateProcess", vo) == 1) {
			newVO = getMember(vo.getM_idx());
		}
		return newVO;
	}
	//기업회원 회원정보 수정하기
	public MemberVO SellerUpdateProcess(MemberVO vo) throws SQLException{
		MemberVO newVO = null;
		
		if(sqlSession.update(MAPPER+".sellerUpdateProcess", vo) == 1) {
			newVO = getMember(vo.getM_idx());
		}
		return newVO;
	}
	
	//회원탈퇴여부 변경
	public int cancelUpdate(MemberVO vo) {
		return sqlSession.update(MAPPER+".cancelUpdate", vo);
	}
	//회원 탈퇴하기
	public int cancel(int m_idx) throws SQLException {
		return sqlSession.update(MAPPER+".cancel", m_idx);
	}

	//관리자가 받는 문의사항 전체 불러오기
	public List<VocVO> getInquirylist(SearchVO vo){
		return sqlSession.selectList(MAPPER+".getInquirylist", vo);
	}
	
	//관리자가 받는 문의사항 전체 불러오기 합계
	public int adminvocCnt(SearchVO vo) {
		return sqlSession.selectOne(MAPPER+".adminvocCnt", vo);
	}
	
	//기업회원이 받는 문의사항 불러오기
	public List<PvocVO> getInquirylistp(SearchVO vo){
		return sqlSession.selectList(MAPPER+".getInquirylistp", vo);
	}
	
	//기업회원이 받는 문의사항 불러오기 합계
	public int pvocCnt(SearchVO vo) {
		return sqlSession.selectOne(MAPPER+".pvocCnt", vo);
	}
	
	//개인회원이 기업회원한테 쓴 문의사항 불러오기
	public List<PvocVO> buyerInquirylist(SearchVO vo){
		return sqlSession.selectList(MAPPER+".buyerInquirylist", vo);
	}
	
	//관리자가 받는 문의사항 전체 불러오기 합계
	public int buyerInqCnt(SearchVO vo) {
		return sqlSession.selectOne(MAPPER+".buyerInqCnt", vo);
	}
	
	//관리자 홈 회원 현황
	public List<MemberVO> memberCnt(){
		return sqlSession.selectList(MAPPER+".memberCnt");
	}
	
	//개인회원, 기업회원이 관리자한테 한 문의 불러오기
	public List<VocVO> sellerbuyerVocList(SearchVO vo){
		return sqlSession.selectList(MAPPER+".sellerbuyerVocList", vo);
	}
	
	//개인회원, 기업회원이 관리자한테 한 문의 불러오기 합계
	public int VocCnt(SearchVO vo) {
		return sqlSession.selectOne(MAPPER+".VocCnt", vo);
	}
	
	//주문상세보기 페이지 처리하기
	public List<CartVO> getViewOrderDetails(int o_idx){
		return sqlSession.selectList(MAPPER+".getViewOrderDetails", o_idx);
	}
	
	
}
