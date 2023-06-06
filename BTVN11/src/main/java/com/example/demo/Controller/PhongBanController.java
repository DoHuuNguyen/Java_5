package com.example.demo.Controller;

import com.example.demo.Entity.PhongBan;
import com.example.demo.Service.PhongBanService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.UUID;

@Controller
public class PhongBanController {

    @Autowired
    private PhongBanService phongBanService;

    @GetMapping("/phong-ban/hien-thi")
    public String hienThi(Model model){
        model.addAttribute("list",phongBanService.getAll());
        model.addAttribute("listLpb",phongBanService.listLPB());
        model.addAttribute("pb",new PhongBan());
        return "hienthi";
    }
    @PostMapping("/phong-ban/add")
    public String add(@Valid @ModelAttribute("pb") PhongBan pb, BindingResult result,Model model){
        if(result.hasErrors()){
            model.addAttribute("list",phongBanService.getAll());
            model.addAttribute("listLpb",phongBanService.listLPB());
            return "hienthi";
        }
        phongBanService.addPhongBan(pb);
        return "redirect:/phong-ban/hien-thi";
    }
    @GetMapping("/phong-ban/view-update/{id}")
    public String viewUpdate(Model model, @PathVariable("id")UUID id){
        model.addAttribute("pb",phongBanService.detailPhongBan(id));
        model.addAttribute("listLpb",phongBanService.listLPB());
        model.addAttribute("pbn",new PhongBan());
        return "update";
    }
}
