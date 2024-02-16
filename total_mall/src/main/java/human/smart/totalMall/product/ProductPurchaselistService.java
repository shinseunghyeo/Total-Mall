package human.smart.totalMall.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.OrderVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("pPurchaseList")
public class ProductPurchaselistService implements ProductService {

    private ProductDAO dao;

    @Override
    public List<OrderVO> getOrders(int m_idx) { 
        

        return dao.getOrders(m_idx);
    }

    
}
