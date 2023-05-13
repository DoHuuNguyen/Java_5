package com.example.demo.B1_overView;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
    @GetMapping("/login")
    public String Login(){

        return "Login";
    }
    @PostMapping("/ketqua")
    public String xuLyLogin(Model model,@RequestParam("uname")String name,@RequestParam("psw")String pass){
        //lay gia trị ở ô input (view) sang controller
        //java4: request.getParameter("ten cua ô input")
        //java5: @requetParam
        model.addAttribute("name",name);
        model.addAttribute("pass",pass);
        model.addAttribute(pass);
        return "ketqua";
    }
}
