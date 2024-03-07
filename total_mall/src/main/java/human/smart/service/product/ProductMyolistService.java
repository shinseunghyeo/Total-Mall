package human.smart.service.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.CartVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("myoList")
public class ProductMyolistService implements ProductService {

    private ProductDAO dao;

    @Override
    public List<CartVO> getOrders(int m_idx) {
        

        return dao.getOrders(m_idx);
    }

    
}
