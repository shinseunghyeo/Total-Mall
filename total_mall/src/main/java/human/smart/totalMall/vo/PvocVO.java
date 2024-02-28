package human.smart.totalMall.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class PvocVO {
	private int v_idx; //게시글 번호
	private int m_idx; //회원 번호
	private int p_idx; //상품 번호
	private String product_name; //상품명
	private String writer; //작성자
	private String email; //작성자 이메일
	private String content; //내용
	private String originfile_name; //원본 파일명
	private String savefile_name; //저장 파일명
	private Date post_date; //작성일
	private Date update_date; //수정일
	private int voc_state; //삭제 여부
	//BoardVO클래스를 writeProcess.do 요청을 처리하기 위해
	//첨부파일을 MultipartFile 타입으로 추가 정의함
	private MultipartFile uploadFile;
}
