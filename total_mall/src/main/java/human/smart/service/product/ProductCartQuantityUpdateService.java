package human.smart.service.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.CartVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("pCartQuantityUpdate")
public class ProductCartQuantityUpdateService implements ProductService {

    private ProductDAO dao;

    @Override
    public int cartQuantityUpdate(CartVO vo) {
        int result = 0;

        result = dao.cartQuantityUpdate(vo);

        return result;
    }

    
}
