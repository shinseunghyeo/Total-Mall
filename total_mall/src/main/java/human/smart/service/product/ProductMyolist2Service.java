package human.smart.service.product;

import java.util.List;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.CartVO;
import human.smart.totalMall.vo.SearchVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("myoList2")
public class ProductMyolist2Service implements ProductService {

    private ProductDAO dao;

    @Override
    public List<CartVO> getOrders2(SearchVO searchVO) {
    	searchVO.setStartIdx((searchVO.getPageNum()-1)*10);

        return dao.getOrders2(searchVO);
    }

    
}
