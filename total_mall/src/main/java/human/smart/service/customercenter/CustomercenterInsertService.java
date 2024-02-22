package human.smart.service.customercenter;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import human.smart.totalMall.dao.CustomercenterDAO;
import human.smart.totalMall.vo.NoticeVO;
import human.smart.totalMall.vo.VocVO;
import lombok.AllArgsConstructor;

@Service("cInsert")
@AllArgsConstructor
public class CustomercenterInsertService implements CustomercenterService {
	
	private CustomercenterDAO dao;
	
	@Override
	public int vocInsert(VocVO voc, HttpServletRequest request) {
		int result = 0;
		
		MultipartFile uploadFile = voc.getUploadFile();
		
		if(uploadFile.getSize() != 0) {//게시글 등록시 파일을 업로드한 경우
			
			//1.저장 디렉터리에 저장할 새로운 파일명 만들기
			String originFileName = uploadFile.getOriginalFilename();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
			String saveFileName = now+ext;
			
			//2.지정된 경로에 파일 저장하기
			String saveDirectory = request.getServletContext().getRealPath("resources/uploads/");
			String fullPath = saveDirectory + saveFileName;
			
			try {
				uploadFile.transferTo(new File(fullPath));
			} catch (Exception e) {
				System.out.println("파일 저장 중 예외 발생");
				e.printStackTrace();
			}
			
			//3. 다른 폼의 전달값을 BoardVO에 저장하기
			voc.setOriginfile_name(originFileName);
			voc.setSavefile_name(saveFileName);
		}
		
		result = dao.vocInsert(voc);
		
		return result;
	}
	@Override
	public int notInsert(NoticeVO not, HttpServletRequest request) {
		int result = 0;
		
		MultipartFile uploadFile = not.getUploadFile();
		
		if(uploadFile.getSize() != 0) {//게시글 등록시 파일을 업로드한 경우
			
			//1.저장 디렉터리에 저장할 새로운 파일명 만들기
			String originFileName = uploadFile.getOriginalFilename();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
			String saveFileName = now+ext;
			
			//2.지정된 경로에 파일 저장하기
			String saveDirectory = request.getServletContext().getRealPath("resources/uploads/");
			String fullPath = saveDirectory + saveFileName;
			
			try {
				uploadFile.transferTo(new File(fullPath));
			} catch (Exception e) {
				System.out.println("파일 저장 중 예외 발생");
				e.printStackTrace();
			}
			
			//3. 다른 폼의 전달값을 BoardVO에 저장하기
			not.setOriginfile_name(originFileName);
			not.setSavefile_name(saveFileName);
		}
		
		result = dao.notInsert(not);
		
		return result;
	}
	

}
