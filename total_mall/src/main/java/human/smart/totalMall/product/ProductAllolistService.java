package human.smart.totalMall.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.CartVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("alloList")
public class ProductAllolistService implements ProductService {

    private ProductDAO dao;

    @Override
    public List<CartVO> getOrders3() {
        

        return dao.getOrders3();
    }

    
}
