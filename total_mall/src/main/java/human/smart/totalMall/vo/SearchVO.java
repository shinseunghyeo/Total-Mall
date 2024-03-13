package human.smart.totalMall.vo;

import lombok.Data;

//list.jsp에서 검색관련 데이터를 저장할 수 있는 DTO
@Data
public class SearchVO {
	private String searchField;
	private String searchWord;
	private String category;
	private String service;
	private String n_idx;
	private int m_idx;
	//보완된 SQL문으로 인해 추가함
	private int pageNum;
	private int pageBlock;
	private int startIdx;//BoardMapper.xml에서 게시물 목록을 가져올 때 limit함수의 매개값으로 사용
	//BoardListService클래스의 getBoards() 메소드에서 startIdx 값을 (pageNum-1)*10으로 세팅해줌

}
