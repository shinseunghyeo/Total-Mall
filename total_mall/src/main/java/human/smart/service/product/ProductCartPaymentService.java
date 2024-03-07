package human.smart.service.product;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.CartVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("pCartPaymentUpdate")
public class ProductCartPaymentService implements ProductService {

    private ProductDAO dao;

    @Override
    public int cartPaymentUpdate(int m_idx) {
        int result = 0;

        result = dao.cartPaymentUpdate(m_idx);

        return result;
    }

    
}
