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
            if (gv.getGioiTinh() == false) {
                list.add(gv);
            }
        }
        return list;
    }

    @Override
    public GiangVien detailGiangVien(String id) {
        for (GiangVien gv : gvs
        ) {
            if (gv.getId().equalsIgnoreCase(id)) {
                return gv;
            }
        }
        return null;
    }

    public int getIndex(String id) {
        for (int i = 0; i < gvs.size(); i++) {
            GiangVien gv = gvs.get(i);
            if (gv.getId().equalsIgnoreCase(id)) {
                return i;
            }
        }
        return -1;
    }

    @Override
    public void deleteGiangVien(String id) {
        GiangVien gv = detailGiangVien(id);
        gvs.remove(gv);
    }

    @Override
    public void addGiangVien(GiangVien gv) {
        gvs.add(gv);
    }

    @Override
    public void updateGiangVien(GiangVien gv) {
        System.out.println(gv);
        int index = getIndex(gv.getId());
        System.out.println(index);
        gvs.set(index, gv);
//        GiangVien giangVien = detailGiangVien(gv.getId());
//        System.out.println(giangVien);
//        gvs.set(Integer.valueOf(giangVien.getId()),gv);
    }
}
