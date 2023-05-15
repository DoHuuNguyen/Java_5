package com.example.demo.controller;

import com.example.demo.entity.SinhVien;
import com.example.demo.service.SinhVienService;
import com.example.demo.service.impl.SinhVienServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
}
