package human.smart.totalMall.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {
	private int o_idx;
	private int m_idx;
	private int p_idx;
	private String pay;
	private int totalprice;
	private String requests;
	private Date o_start_date;
	private Date o_update_time;
	
	private int c_quantity;
	private int payment_status;
	
	//직접구매, 장바구니구매
	private int direct;
}
