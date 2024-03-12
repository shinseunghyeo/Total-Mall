package human.smart.service.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.CartVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("alloList")
public class ProductAllolistService implements ProductService {

    private ProductDAO dao;

    @Override
    public List<CartVO> getOrders3(SearchVO vo) {
    	vo.setStartIdx((vo.getPageNum()-1)*10);

        return dao.getOrders3(vo);
    }

    
}
