package human.smart.service.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.CartVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("myoList_1")
public class ProductMyolist_1Service implements ProductService {

    private ProductDAO dao;

    @Override
    public List<CartVO> getOrders_1(int m_idx) {
        

        return dao.getOrders_1(m_idx);
    }

    
}
