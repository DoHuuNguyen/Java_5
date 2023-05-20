package com.example.demo.service.impl;

import com.example.demo.entity.SinhVien;
import com.example.demo.service.SinhVienService;

import java.util.ArrayList;
import java.util.List;

public class SinhVienServiceImpl implements SinhVienService {
    private List<SinhVien> sinhViens = new ArrayList<>();

    public SinhVienServiceImpl() {
        sinhViens.add(new SinhVien("Ph23086", "Đỗ Hữu Nguyện", 20, "Tuyên Quang", true));
        sinhViens.add(new SinhVien("Ph23087", "Đỗ Hữu Nguyện", 20, "Tuyên Quang", true));
        sinhViens.add(new SinhVien("Ph23088", "Đỗ Hữu Nguyện", 20, "Tuyên Quang", true));
        sinhViens.add(new SinhVien("Ph23089", "Đỗ Hữu Nguyện", 20, "Tuyên Quang", true));
        sinhViens.add(new SinhVien("Ph23090", "Đỗ Hữu Nguyện", 20, "Tuyên Quang", true));
    }

    @Override
    public List<SinhVien> getALl() {
        return sinhViens;
    }

    @Override
    public void addSV(SinhVien sv) {
        sinhViens.add(sv);
    }
}
