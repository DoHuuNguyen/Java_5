package com.poly.tiennh21.ph23086.Controller;

import com.poly.tiennh21.ph23086.Entity.DongVat;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class DongVatController {

    private DongVatService dongVatService = new DongVatServiceImpl();

    @GetMapping("/dong-vat/hien-thi-tat-ca")
    public String hienThi(Model model) {
        model.addAttribute("dv", new DongVat());
        model.addAttribute("list", dongVatService.getAll());
        return "hien-thi";
    }

    @PostMapping("/dong-vat/add")
    public String addDongVat(@Valid @ModelAttribute("dv") DongVat dongVat, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("list", dongVatService.getAll());
            return "hien-thi";
        }
        dongVatService.addDongVat(dongVat);
        return "redirect:/dong-vat/hien-thi-tat-ca";
    }

    @GetMapping("/dong-vat/delete/{ma}")
    public String deleteDongVat(@PathVariable("ma") String ma) {
        dongVatService.deleteDongVat(ma);
        return "redirect:/dong-vat/hien-thi-tat-ca";
    }

    @GetMapping("/dong-vat/view-update/{ma}")
    public String viewUpdate(@PathVariable("ma") String ma, Model model) {
        model.addAttribute("dv", new DongVat());
        model.addAttribute("dvs", dongVatService.detail(ma));
        return "view-update";
    }

    @PostMapping("/dong-vat/update")
    public String update(@Valid @ModelAttribute("dv") DongVat dv, BindingResult result, Model model) {
        return "";
    }
}
