package human.smart.service.product;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.CartVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("pCartInsert")
public class ProductCartInsertService implements ProductService {

    private ProductDAO dao;

    @Override
    public int cartInsert(CartVO vo, HttpServletRequest request) {
        int result = 0;

        result = dao.cartInsert(vo);

        return result;
    }

    
}
