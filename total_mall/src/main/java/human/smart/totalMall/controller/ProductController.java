package human.smart.totalMall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import human.smart.totalMall.product.ProductService;
import human.smart.totalMall.vo.ProductVO;

@Controller
@RequestMapping("/product") // 모든 메서드에 대한 공통 경로 설정
public class ProductController {

    @Autowired
    private ProductService cList;

    @GetMapping("/list.do") // 두 번째 메서드의 URL 변경
    public String list(String category, Model model) {
        ProductVO vo = cList.getProduct(category);
        model.addAttribute("category", vo);
        return "Product/list";
    }
}