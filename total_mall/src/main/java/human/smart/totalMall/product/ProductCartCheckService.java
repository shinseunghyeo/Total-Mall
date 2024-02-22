package human.smart.totalMall.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.CartVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("pCartCheck")
public class ProductCartCheckService implements ProductService {

    private ProductDAO dao;

    @Override
    public CartVO cartCheck(CartVO vo) {
        return dao.cartCheck(vo);
    }

    
}
