package human.smart.totalMall.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProductVO {
	private int p_idx;//상품번호
	private int m_idx;//회원 번호
	private String category;//상품카테고리
	private String product_name;//상품이름
	private String product_code;//자체 상품코드
	private String brand;//브랜드/제조사
	private String summary;//상품요약설명
	private String detail;//상품상세설명
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date start_date;//판매기간 시작일
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date end_date;//판매기간 종료일
	private String origin_file_name1;//대표이미지 원본이름
	private String save_file_name1;//대표이미지 저장이름
	private String origin_file_name2;//상세이미지 원본이름
	private String save_file_name2;//상세이미지 저장이름
	private int price;//상품가격
	private int p_status;//상품상태
	private int discount_rate;//할인율
	private int quantity;//수량
	private Date p_reg_date;//등록일
	private Date p_last_modified_date;//수정일
	private int read_cnt;//조회수
	
	
	private MultipartFile uploadFile;
	private MultipartFile uploadFile2;
	
	
	//수량 추가, 총 상품가격, 총 배송비, 총 할인액
	private int c_quantity;
	private int total_product_price;
	private int totalDelivery;
	private int totalDiscount;
	
	
}
