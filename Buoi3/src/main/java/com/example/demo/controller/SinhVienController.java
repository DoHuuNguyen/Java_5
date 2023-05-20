package com.example.demo.controller;

import com.example.demo.entity.SinhVien;
import com.example.demo.service.SinhVienService;
import com.example.demo.service.impl.SinhVienServiceImpl;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class SinhVienController {
    private SinhVienService sinhVienService = new SinhVienServiceImpl();

    private List<SinhVien> sv = new ArrayList<>();

    @GetMapping("/sinhVien")
    public String hienThiSinhVien(Model model){
        sv = sinhVienService.getALl();
        model.addAttribute("lists",sv);
        return "/buoi3/sinhviens";
    }

    //c1:
    @GetMapping("/sinhVien/view-add")
    public String viewAdd(Model model){
        model.addAttribute("sv",new SinhVien());
        return "/buoi5/add-sinh-vien";
    }
    @PostMapping("/sinhVien/add")
    public String addSinhVien(@Valid @ModelAttribute("sv") SinhVien sinhvien, BindingResult result){
        if(result.hasErrors()){
            return "/buoi5/add-sinh-vien";
        }
        sinhVienService.addSV(sinhvien);
        return "redirect:/sinhVien";
    }

}
