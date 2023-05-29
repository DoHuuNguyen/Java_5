package com.example.demo.B1_overView;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
//tat ca cac class trong con deu là bean đc Spring quan lý
// khi đánh dau la @Controller => Class nay là tầng Controller
//Dung de trao doi giữa client va server


public class HelloController {
    // Client và server giao tiep thong qua http
    // có 4 loai http co ban:
    // get      <=> Read
    // post     <=> Create
    // push     <=> Update
    // delete   <=> Delete
    // Với java 4 và 5 dùng 2 loại get và post
    // get dùng để hiển thị và lấy dữ liệu
    // post dùng để sử lý

    // Khi dùg @Controller => Mô hình trong project MVC (Model - view - controller)
    // => Tất cả các request trong controller luôn luôn trả về 1 View <=> return string
    // c1: GetMapping
//    @GetMapping("/demo")
    //c2: @RequestMapping
    @RequestMapping(value = "/demo", method = RequestMethod.GET)
    public String hienThiHelloWorld(Model model) {
        //Truyền giá trị từ phía controller sang view
        //Java4: request.setAttribute("ten bien day sang JSP")
        //gia tri muon truyen sang:  1 list, 1 doi tuong
        //Java5: Model
        model.addAttribute("name", "Đỗ Hữu Nguyện");
        model.addAttribute("sdt", "0395046998");
        return "a";
    }
}
