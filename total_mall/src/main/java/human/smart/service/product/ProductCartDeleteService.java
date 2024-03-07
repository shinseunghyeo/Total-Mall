package human.smart.service.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.CartVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("pCartDelete")
public class ProductCartDeleteService implements ProductService {

    private ProductDAO dao;

    @Override
    public int cartDelete(CartVO vo) {
        int result = 0;

        result = dao.cartDelete(vo);

        return result;
    }

    
}
