package com.example.demo.Controller;

import com.example.demo.Entity.NhanVien;
import com.example.demo.Service.NhanVienService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class NhanVienController {

    @Autowired
    private NhanVienService nhanVienService;

    @GetMapping("/nhan-vien/hien-thi")
    public String view(Model model) {
        Date date = new Date();
        model.addAttribute("datenow", date.getYear());
        model.addAttribute("listCh", nhanVienService.listCH());
        model.addAttribute("listCv", nhanVienService.listCV());
        model.addAttribute("list", nhanVienService.getAll());
        model.addAttribute("nv", new NhanVien());
        List<Integer> abc = new ArrayList<>();
        for (int i = 1980; i < 2020; i++) {
            abc.add(i);
        }
        model.addAttribute("nam1", abc);
        return "hien-thi";
    }

    @PostMapping("/nhan-vien/add")
    public String add(@ModelAttribute("nv") NhanVien nv, @RequestParam("nam") String nam) {
        System.out.println(nam);
        nhanVienService.addNhanVien(nv);
        return "redirect:/nhan-vien/hien-thi";
    }

}
