package human.smart.totalMall.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {
	private int o_idx;
	private int m_idx;
	private int p_idx;
	private int totalprice;
	private String pay;
	private String requests;
	private int c_quantity;
	private int payment_status;
	private Date o_start_date;
	private Date o_update_time;
	
	
}
