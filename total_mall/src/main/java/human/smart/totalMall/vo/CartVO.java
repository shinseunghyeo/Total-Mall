package human.smart.totalMall.vo;

import java.util.Date;

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
	private Date o_update_time;
	private int totalprice;
	
	//결제여부
	private int payment_or_not;
	
	//추가
	private String product_name;
	private int price;
	private int discount_rate;
	private String save_file_name1;
	
	 // 추가: mMIdx 필드
    private int mMIdx;
}
