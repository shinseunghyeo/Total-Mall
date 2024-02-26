package human.smart.totalMall.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class CartVO { 
	private int c_idx;
	private int p_idx;
	private int m_idx;
	private int o_idx;
	private int c_quantity;
	private Date c_start_date;
	private Date c_update_time;
	
	//결제여부
	private int payment_or_not;
	
	//추가
	private String product_name;
	private int price;
	private int discount_rate;
	private String save_file_name1;
}
