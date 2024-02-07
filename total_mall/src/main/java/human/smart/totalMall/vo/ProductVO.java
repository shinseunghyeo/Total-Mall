package human.smart.totalMall.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
	private int p_idx;
	private String category_name;
	private String product_name;
	private String product_code;
	private String brand;
	private String summary;
	private String detail;
	private Date start_date;
	private Date end_date;
	private String origin_file_name1;
	private String save_file_name1;
	private String origin_file_name2;
	private String save_file_name2;
	private int price;
	private String sales_unit;
	private Date p_reg_date;
	private Date p_last_modified_date;
	
}
