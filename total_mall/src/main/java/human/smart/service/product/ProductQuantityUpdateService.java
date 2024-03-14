package human.smart.service.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.CartVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("pQuantityUpdate")
public class ProductQuantityUpdateService implements ProductService {

    private ProductDAO dao;

    @Override
    public int quantityUpdate(CartVO vo2) {
        int result = 0;

        result = dao.quantityUpdate(vo2);

        return result;
    }

    
}
