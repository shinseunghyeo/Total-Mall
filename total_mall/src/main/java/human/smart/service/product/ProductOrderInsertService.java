package human.smart.service.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.OrderVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("pOrderInsert")
public class ProductOrderInsertService implements ProductService {

    private ProductDAO dao;

    @Override
    public int orderInsert(OrderVO vo) {
        int result = 0;

        result = dao.orderInsert(vo);

        return result;
    }

    
}
