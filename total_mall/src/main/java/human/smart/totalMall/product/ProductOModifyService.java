package human.smart.totalMall.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.CartVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("oModify")
public class ProductOModifyService implements ProductService {

    private ProductDAO dao;

    @Override
    public int oModify(CartVO vo) {
        return dao.oModify(vo);

    }

    
}
