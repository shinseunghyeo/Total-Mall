package human.smart.totalMall.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
public class ProductVO {
	private int p_idx;
	private int m_idx;//회원 번호
	private String category;
	private String product_name;
	private String product_code;
	private String brand;
	private String summary;
	private String detail;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date start_date;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date end_date;
	private String origin_file_name1;
	private String save_file_name1;
	private String origin_file_name2;
	private String save_file_name2;
	private int price;
	private String sales_unit;
	private Date p_reg_date;
	private Date p_last_modified_date;
	
	
	private MultipartFile uploadFile;
}
