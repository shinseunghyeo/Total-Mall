package human.smart.totalMall.vo;

import java.util.Date;

import lombok.Data;

@Data
public class SalesVO { 
	private int totalPrice; //총가격
	private int record_count; //건수
	private Date order_date; //일자별
}
