package com.example.demo.Controller;

import com.example.demo.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping("/product/hien-thi")
    public String view(Model model){
        model.addAttribute("list", productService.getAll());
        return "product-view";
    }

}
