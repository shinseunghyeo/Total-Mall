package human.smart.service.product;

import org.springframework.stereotype.Service;

import human.smart.totalMall.dao.ProductDAO;
import human.smart.totalMall.vo.CartVO;
import lombok.AllArgsConstructor;

@AllArgsConstructor 
@Service("parcel")
public class ProductParcelService implements ProductService {

    private ProductDAO dao;

    @Override
    public int parcel(CartVO vo) { 
        return dao.parcel(vo);
    }

    
}
