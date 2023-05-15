package com.example.demo.service.impl;

import com.example.demo.entity.GiangVien;
import com.example.demo.service.GiangVienService;

import java.util.ArrayList;
import java.util.List;

public class GiangVienServiceImpl implements GiangVienService {

    private List<GiangVien> gvs = new ArrayList<>();

    public GiangVienServiceImpl() {
        gvs.add(new GiangVien("1", "HangNT196", "Hằng", 18, false, "Hà Lội"));
        gvs.add(new GiangVien("2", "NguyenVV4", "Nguyên", 22, true, "Hà Lội"));
        gvs.add(new GiangVien("3", "PhongTT35", "Phong", 18, true, "Hà Lội"));
        gvs.add(new GiangVien("4", "KhanhPG", "Khánh", 18, true, "Hà Lội"));
        gvs.add(new GiangVien("5", "TienNH21", "Tiến", 18, true, "Hà Lội"));
    }

    @Override
    public List<GiangVien> getAll() {
        return gvs;
    }

    @Override
    public List<GiangVien> getByName(String name) {
        List<GiangVien> list = new ArrayList<>();
        for (GiangVien gv : gvs) {
            if (gv.getTen().startsWith(name)) {
                list.add(gv);
            }
        }
        return list;
    }

    @Override
    public List<GiangVien> getByGioiTinh() {
        List<GiangVien> list = new ArrayList<>();
        for (GiangVien gv : gvs) {
            if (gv.getGioiTinh()==false) {
                list.add(gv);
            }
        }
        return list;
    }
}
