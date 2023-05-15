package com.example.demo.controller;

import com.example.demo.entity.GiangVien;
import com.example.demo.service.GiangVienService;
import com.example.demo.service.impl.GiangVienServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class GiangVienController {
    private GiangVienService giangVienService = new GiangVienServiceImpl();

    private List<GiangVien> gv = new ArrayList<>();

    @GetMapping("/giang-vien/hien-thi")
    public String hienThiGiangVien(Model model) {
        model.addAttribute("lists", giangVienService.getAll());
        return "hien-thi";
    }

    @GetMapping("/giang-vien/hien-thi/giang-vien-nu")
    public String giangVienNu(Model model) {
        model.addAttribute("lists", giangVienService.getByGioiTinh());
        return "hien-thi";
    }

    @PostMapping("giang-vien/hien-thi/tim-kiem")
    public String timKiemGiangVien(Model model, @RequestParam("ten") String name) {
        model.addAttribute("lists", giangVienService.getByName(name));
        return "hien-thi";
    }
}
