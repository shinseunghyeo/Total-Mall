package human.smart.totalMall.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.CartVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("myoList2")
public class ProductMyolist2Service implements ProductService {

    private ProductDAO dao;

    @Override
    public List<CartVO> getOrders2(int m_idx) {
        

        return dao.getOrders2(m_idx);
    }

    
}
