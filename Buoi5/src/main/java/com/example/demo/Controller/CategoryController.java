package com.example.demo.Controller;

import com.example.demo.Service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CategoryController {
    @Autowired
    private CategoryService categoryService;

    @GetMapping("/hien-thi")
    public String load(Model model) {
        model.addAttribute("list", categoryService.getAll());
        return "hien-thi";
    }
}
