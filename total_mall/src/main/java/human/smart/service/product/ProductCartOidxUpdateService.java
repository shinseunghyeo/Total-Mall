package human.smart.service.product;

import java.sql.SQLException;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("pCartOidxUpdate")
public class ProductCartOidxUpdateService implements ProductService {

    private ProductDAO dao;

    @Override
    public int cartOidxUpdate(int m_idx, int o_idx) {
        int result = 0;

        try {
			result = dao.cartOidxUpdate(m_idx, o_idx);
		} catch (SQLException e) {
			e.printStackTrace();
		}

        return result;
    }


}