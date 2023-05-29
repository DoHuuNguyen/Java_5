package com.example.demo.controller;

import com.example.demo.entity.LopHoc;
import com.example.demo.service.LopHocService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
public class LopHocController {

    @Autowired
    private LopHocService lopHocService;

    @GetMapping("/lop-hoc/hien-thi")
    public String hienThi(Model model){
        model.addAttribute("list",lopHocService.getAll());
        model.addAttribute("lp", new LopHoc());
        return "hien-thi";
    }
    @PostMapping("/lop-hoc/add")
    public String addLopHoc(@Valid @ModelAttribute("lp") LopHoc lopHoc, BindingResult result, Model model){
        if(result.hasErrors()){
            model.addAttribute("list",lopHocService.getAll());
            return "hien-thi";
        }
        lopHocService.addLopHoc(lopHoc);
        return "redirect:/lop-hoc/hien-thi";
    }
    @PostMapping("/lop-hoc/search")
    public String search(Model model, @RequestParam("ten") String ten,@RequestParam("diaDiem") String diaDiem){
        model.addAttribute("list",lopHocService.search(ten, diaDiem));
        model.addAttribute("lp", new LopHoc());
        return "hien-thi";
    }
    @GetMapping("/lop-hoc/remove/{id}")
    public String remove(@PathVariable("id") Long id){
        lopHocService.deleteLopHoc(id);
        return "redirect:/lop-hoc/hien-thi";
    }
    @GetMapping("/lop-hoc/edit/{id}")
    public String edit(@PathVariable("id") Long id,Model model){
        model.addAttribute("list",lopHocService.getAll());
        model.addAttribute("lp", new LopHoc());
        model.addAttribute("lophoc", lopHocService.detail(id));
        return "hien-thi";
    }
}
