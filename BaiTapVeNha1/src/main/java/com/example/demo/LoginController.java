package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String login(){
        return "Login";
    }
    @PostMapping("/home")
    public String home(Model model, @RequestParam("uname")String name,@RequestParam("psw")String pass){
        if (name.trim().equals("HangNT169")&&pass.trim().equals("123456")){
            return "Home";
        }
        if(name.trim().equals("")){
            model.addAttribute("tk","chua nhap username");
            return "Login";
        }
        if(pass.trim().equals("")){
            model.addAttribute("mk","chua nhap passworld");
            return "Login";
        }
        model.addAttribute("thongBao","Tai khoan mat khau khong chinh xac");
        return "Login";
    }
}
