package human.smart.totalMall.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	private int m_idx;
	private String categorie;
	private String member_id;
	private String member_pw;
	private String member_name;
	private String handphone;
	private String email;
	private String address1;
	private String address2;
	private String address3;
	private String representative_name;
	private String company_number;
	private String mutual;
	private String mail_order_number;
	private String account1;
	private String account2;
	private String depositor_name;
	private int grade;
	private Date reg_date;
	private Date last_modified_date;
	private int cancel_or_not;

}
