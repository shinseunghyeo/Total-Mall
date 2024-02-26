package human.smart.totalMall.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.ProductVO;
import lombok.AllArgsConstructor;

@Service("Main")
@AllArgsConstructor
public class ProductHomeService implements ProductService {
	
	private ProductDAO dao;

	@Override
    public List<ProductVO> getMtoday(){
        return dao.getMtoday();
    }
    public List<ProductVO> getMkind(){
        return dao.getMkind();
    }
	@Override
    public List<ProductVO> getMcategory(int categoryId){
        return dao.getMcategory(categoryId);
    }
	@Override
    public List<ProductVO> getMchoice(String choiceId){
        return dao.getMchoice(choiceId);
    }
	
}
