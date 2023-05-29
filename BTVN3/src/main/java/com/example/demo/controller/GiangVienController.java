package com.example.demo.controller;

import com.example.demo.entity.GiangVien;
import com.example.demo.service.GiangVienService;
import com.example.demo.service.impl.GiangVienServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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

    @GetMapping("/giang-vien/detail/{id}")
    public String detailGiangVien(@PathVariable("id") String id, Model model) {
        GiangVien gv = giangVienService.detailGiangVien(id);
        model.addAttribute("gv", gv);
        return "detail-giang-vien";
    }

    @GetMapping("/giang-vien/remove/{id}")
    public String deleteGiangVien(@PathVariable("id") String id, Model model) {
        giangVienService.deleteGiangVien(id);
        model.addAttribute("lists", giangVienService.getAll());
        return "hien-thi";
    }

    @GetMapping("/giang-vien/view-add")
    public String viewAddGiangVien() {
        return "add-giang-vien";
    }

    @PostMapping("/giang-vien/add")
    public String addGiangVien(@RequestParam("id") String id, @RequestParam("ma") String ma, @RequestParam("ten") String ten,
                               @RequestParam("tuoi") String tuoi, @RequestParam("diaChi") String diaChi, @RequestParam("gioiTinh") String gioiTinh,
                               Model model) {
        if (id.trim().isEmpty() == true) {
            model.addAttribute("thongBaoId", "Bạn Chưa Nhập Id");
            return "add-giang-vien";
        }
        if (ma.trim().isEmpty() == true) {
            model.addAttribute("thongBaoMa", "Bạn Chưa Nhập Mã");
            return "add-giang-vien";
        }
        if (ten.trim().isEmpty() == true) {
            model.addAttribute("thongBaoTen", "Bạn Chưa Nhập Tên");
            return "add-giang-vien";
        }
        if (tuoi.trim().isEmpty() == true) {
            model.addAttribute("thongBaoTuoi", "Bạn Chưa Nhập Tuổi");
            return "add-giang-vien";
        }
        if (diaChi.trim().isEmpty() == true) {
            model.addAttribute("thongBaoDiaChi", "Bạn Chưa Nhập Địa Chỉ");
            return "add-giang-vien";
        }
        giangVienService.addGiangVien(GiangVien.builder()
                .id(id)
                .ma(ma)
                .ten(ten)
                .diaChi(diaChi)
                .tuoi(Integer.valueOf(tuoi))
                .gioiTinh(Boolean.valueOf(gioiTinh))
                .build());
        return "redirect:/giang-vien/hien-thi";
    }

    @GetMapping("/giang-vien/view-update/{id}")
    public String viewUpdateGiangVien(Model model, @PathVariable("id") String id) {
        GiangVien gv = giangVienService.detailGiangVien(id);
        model.addAttribute("gv", gv);
        return "update-giang-vien";
    }

    @PostMapping("/giang-vien/update/{id}")
    public String updateGiangVien(@PathVariable("id") String id, @RequestParam("ma") String ma, @RequestParam("ten") String ten, @RequestParam("tuoi") String tuoi,
                                  @RequestParam("diaChi") String diaChi, @RequestParam("gioiTinh") String gioiTinh,
                                  Model model) {
        if (id.trim().isEmpty() == true) {
            model.addAttribute("thongBaoId", "Bạn Chưa Nhập Id");
            return "add-giang-vien";
        }
        if (ma.trim().isEmpty() == true) {
            model.addAttribute("thongBaoMa", "Bạn Chưa Nhập Mã");
            return "add-giang-vien";
        }
        if (ten.trim().isEmpty() == true) {
            model.addAttribute("thongBaoTen", "Bạn Chưa Nhập Tên");
            return "add-giang-vien";
        }
        if (tuoi.trim().isEmpty() == true) {
            model.addAttribute("thongBaoTuoi", "Bạn Chưa Nhập Tuổi");
            return "add-giang-vien";
        }
        if (diaChi.trim().isEmpty() == true) {
            model.addAttribute("thongBaoDiaChi", "Bạn Chưa Nhập Địa Chỉ");
            return "add-giang-vien";
        }
        giangVienService.updateGiangVien(GiangVien.builder()
                .id(id)
                .ma(ma)
                .ten(ten)
                .gioiTinh(Boolean.valueOf(gioiTinh))
                .diaChi(diaChi)
                .tuoi(Integer.valueOf(tuoi))
                .build());
        return "redirect:/giang-vien/hien-thi";
    }
}
