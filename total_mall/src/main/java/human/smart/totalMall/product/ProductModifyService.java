package human.smart.totalMall.product;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.ProductVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("pModify")
public class ProductModifyService implements ProductService {

    private ProductDAO dao;

    @Override
    public int modify(ProductVO vo, HttpServletRequest request) {
        int result = 0;

        saveFile(vo.getUploadFile(), "1", request, vo);
        saveFile(vo.getUploadFile2(), "2", request, vo);

        result = dao.modify(vo);

        return result;
    }

    private void saveFile(MultipartFile uploadFile, String prefix, HttpServletRequest request, ProductVO vo) {
        if (uploadFile != null && uploadFile.getSize() != 0) {
            //1. 저장 디렉토리에 저장할 새로운 파일명 만들기
            String originFileName = uploadFile.getOriginalFilename();
            String ext = originFileName.substring(originFileName.lastIndexOf("."));
            String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
            String saveFileName = now + "_" + prefix + ext;

            //2. 저장된 경로에 파일 저장하기
            String saveDirectory = request.getServletContext().getRealPath("resources/uploads/");
            String fullPath = saveDirectory + saveFileName;

            try {
                uploadFile.transferTo(new File(fullPath));
            } catch (Exception e) {
                System.out.println("파일 저장 중 예외 발생");
                e.printStackTrace();
            }

            //3. 다른 폼의 전달값을 ProductVO에 저장하기
            if ("1".equals(prefix)) {
                vo.setOrigin_file_name1(originFileName);
                vo.setSave_file_name1(saveFileName);
            } else if ("2".equals(prefix)) {
                vo.setOrigin_file_name2(originFileName);
                vo.setSave_file_name2(saveFileName);
            }
        }
    }
}
