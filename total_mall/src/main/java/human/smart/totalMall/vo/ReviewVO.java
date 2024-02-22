package human.smart.totalMall.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ReviewVO {
	private int r_idx; //게시글 번호
	private int m_idx; //회원 번호
	private int p_idx; //상품 번호
	private String member_id; //작성자 아이디
	private String member_name; //작성자 이름
	private int star; //평점
	private String content; //내용
	private String originfile_name; //원본 파일명
	private String savefile_name; //저장 파일명
	private Date post_date; //작성일
	private Date update_date; //수정일
	private int del_or_not; //삭제 여부
	//BoardVO클래스를 writeProcess.do 요청을 처리하기 위해
	//첨부파일을 MultipartFile 타입으로 추가 정의함
	private MultipartFile uploadFile;


}
