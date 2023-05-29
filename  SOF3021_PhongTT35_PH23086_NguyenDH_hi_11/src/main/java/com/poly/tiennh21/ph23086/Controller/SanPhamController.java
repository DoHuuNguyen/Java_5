package com.poly.tiennh21.ph23086.Controller;

import com.poly.tiennh21.ph23086.Entity.SanPham;
import com.poly.tiennh21.ph23086.Service.Impl.SanPhamServiceImpl;
import com.poly.tiennh21.ph23086.Service.SanPhamService;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SanPhamController {
    private SanPhamService sanPhamService = new SanPhamServiceImpl();

    @GetMapping("/san-pham/hien-thi")
    public String viewAll(Model model) {
        model.addAttribute("sanPham", new SanPham());
        model.addAttribute("list", sanPhamService.getALl());
        return "hien-thi";
    }

    @PostMapping("/san-pham/add")
    public String addSanPham(@Valid @ModelAttribute("sanPham") SanPham sp, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("list", sanPhamService.getALl());
            return "hien-thi";
        }
        sanPhamService.addSanPham(sp);
        return "redirect:/san-pham/hien-thi";
    }

    @GetMapping("/san-pham/detail/{id}")
    public String detailSanPham(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("sanPham", new SanPham());
        model.addAttribute("sp", sanPhamService.detailSanPham(id));
        model.addAttribute("list", sanPhamService.getALl());
        return "hien-thi";
    }

    @GetMapping("/san-pham/view-update/{id}")
    public String viewUpdate(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("sanPham", new SanPham());
        model.addAttribute("sp", sanPhamService.detailSanPham(id));
        return "view-update";
    }

    @PostMapping("/san-pham/update")
    public String updateSanPham(@Valid @ModelAttribute("sanPham") SanPham sp, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "view-update";
        }
        sanPhamService.updateSanPham(sp);
        return "redirect:/san-pham/hien-thi";
    }

    @GetMapping("/san-pham/delete/{id}")
    public String deleteSanPham(@PathVariable("id") Integer id) {
        sanPhamService.deleteSanPham(id);
        return "redirect:/san-pham/hien-thi";
    }

    @PostMapping("/san-pham/search")
    public String searchByName(@RequestParam("ten") String name, Model model) {
        model.addAttribute("sanPham", new SanPham());
        model.addAttribute("list", sanPhamService.getByName(name));
        return "hien-thi";
    }
}
