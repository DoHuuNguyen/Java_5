package com.example.demo.controller;

import com.example.demo.entity.GiangVien;
import com.example.demo.service.GiangVienService;
import com.example.demo.service.GiangVienServiceImpl.GiangVienServiceImpl;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class GiangVienController {

    private GiangVienService giangVienService = new GiangVienServiceImpl();

    @GetMapping("/giangVien/hienThi")
    public String hienThiGiangVien(Model model) {
        model.addAttribute("giangVien",new GiangVien());
        model.addAttribute("list", giangVienService.getAll());
        return "/hien-thi";
    }
    @PostMapping("/giangVien/add")
    public String addGiangVien(@Valid @ModelAttribute("giangVien") GiangVien gv, BindingResult result,Model model) {
        if(result.hasErrors()){
            model.addAttribute("list", giangVienService.getAll());
            return "/hien-thi";
        }

        giangVienService.addGiangVien(gv);
        return "redirect:/giangVien/hienThi";
    }

    @GetMapping("/giangVien/detail/{ma}")
    public String detailGiangVien(Model model, @PathVariable("ma") String ma) {
        GiangVien gv = giangVienService.detailGiangVien(ma);
        model.addAttribute("giangVien",new GiangVien());
        model.addAttribute("gv", gv);
        model.addAttribute("list", giangVienService.getAll());
        return "/hien-thi";
    }

    @GetMapping("/giangVien/view-update/{ma}")
    public String viewUpdateGiangVien(Model model, @PathVariable("ma") String ma) {
        GiangVien gv = giangVienService.detailGiangVien(ma);
        model.addAttribute("giangVien",new GiangVien());
        model.addAttribute("gv", gv);
        return "view-update";
    }

    @PostMapping("/giangVien/update")
    public String updateGiangVien(@Valid @ModelAttribute("giangVien") GiangVien gv,BindingResult result) {
        if(result.hasErrors()){
            return "view-update";
        }
        giangVienService.updateGiangVien(gv);
        return "redirect:/giangVien/hienThi";
    }

    @GetMapping("/giangVien/delete/{ma}")
    public String deleteGiangVien(@PathVariable("ma") String ma) {
        giangVienService.deleteGiangVien(ma);
        return "redirect:/giangVien/hienThi";
    }
//    @PostMapping("/giangVien/search")
//    public String searchGiangVien(@RequestParam("ten") String ten,
//                                  @RequestParam("min") Integer min,
//                                  @RequestParam("max") Integer max,
//                                  Model model){
//        if(ten.isBlank()==true){
//            if(min == null){
//                model.addAttribute("list",giangVienService.search("", null, max));
//            }else if(max == null){
//                model.addAttribute("list",giangVienService.search("", min, null));
//            }else{
//                model.addAttribute("list",giangVienService.search("", null, max));
//            }
//        }model.addAttribute("list",giangVienService.search(ten, min, max));
//        model.addAttribute("giangVien",new GiangVien());
//        return "/hien-thi";
//    }
}
