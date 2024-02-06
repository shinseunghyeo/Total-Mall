package human.smart.totalMall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import human.smart.totalMall.Category.CategoryService;
import human.smart.totalMall.vo.CategoryVO;

@Controller
@RequestMapping("/category") // 모든 메서드에 대한 공통 경로 설정
public class CategoryController {

    @Autowired
    private CategoryService cList;

    @GetMapping("/list.do") // 두 번째 메서드의 URL 변경
    public String list(int k_idx, Model model) {
        CategoryVO vo = cList.getCategory(k_idx);
        model.addAttribute("category", vo);
        return "category/list";
    }
}