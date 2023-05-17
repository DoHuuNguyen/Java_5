package com.example.demo.controller;

import com.example.demo.entity.SinhVien;
import com.example.demo.service.SinhVienService;
import com.example.demo.service.Impl.SinhVienServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    @GetMapping("/sinhVien/viewAdd")
    public String goAdd(){
        return "/buoi3/add-sinh-vien";
    }
    @PostMapping("/sinhVien/add")
    public String addSv(Model model,@RequestParam("mssv") String mssv,@RequestParam("ten") String ten,@RequestParam("tuoi") Integer tuoi,@RequestParam("diaChi") String diaChi,@RequestParam("gioiTinh") Boolean gioiTinh){
        sinhVienService.addSv(new SinhVien(mssv,ten,tuoi,diaChi,gioiTinh));
//        sv = sinhVienService.getALl();
//        model.addAttribute("lists",sv);
//        SinhVien svs = SinhVien.builder().mssv(mssv).ten(ten).build();
//        sinhVienService.addSv(svs);
//        sv = sinhVienService.getALl();
//        model.addAttribute("lists",sv);
        return "redirect:/sinhVien";
    }
    @PostMapping("/sinhVien/Search")
    public String searchSv(Model model,@RequestParam("ten") String name){
        model.addAttribute("lists",sinhVienService.getByName(name));
        return "/buoi3/sinhviens";
    }
    @GetMapping("/sinhVien/detail/{ma}")
    public String detailSv(@PathVariable("ma") String mssv,Model model){
        SinhVien sv = sinhVienService.detailSv(mssv);
        model.addAttribute("sv",sv);
        return "/buoi3/detail-sinh-vien";
    }
}
