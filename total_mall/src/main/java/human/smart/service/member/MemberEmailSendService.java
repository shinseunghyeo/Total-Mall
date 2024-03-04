package human.smart.service.member;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

@Service("mEmailSend")
@AllArgsConstructor
public class MemberEmailSendService implements MemberService {
	private JavaMailSenderImpl mailSender;
	
	@Override
	public String joinEmail(String email) {
		//Math.random()의 값의 범위: 0 <= r(난수) < 1
		//1 <= r < 10 난수 발생시키기: (int)(Math.random()*9) +1
		//인증번호 6자리를 난수를 이용해서 생성하기
		//인증번호 범위: 111111 <= authNumber < 1000000 => (int)(Math.random()*888889) + 111111
		int authNumber = (int)(Math.random()*888889) + 111111;
		
		String setFrom = "dpfjs133@gmail.com";
		String toMail = email;
		String title = "회원가입 인증 메일입니다.";
		String content = "홈페이지를 방문해주셔서 감사합니다.<br><br>"
				         + "인증번호: "+authNumber
				         + "<br>"
				         +"해당 인증번호를 인증번호 확인란에 입력해 주세요.";
		
		mailSend(setFrom, toMail, title, content);
		
		return Integer.toString(authNumber);
	}

	private void mailSend(String setFrom, String toMail, String title, String content) {
		MimeMessage message = mailSender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			//true: multipart 형식의 메시지 전달
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);//true: html형식으로 전송 (값을 입력하지 않으면 텍스트로 전송)
			mailSender.send(message);
			
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

}
