package com.example.demo.service.Impl;

import com.example.demo.entity.SinhVien;
import com.example.demo.service.SinhVienService;

import java.util.ArrayList;
import java.util.List;

public class SinhVienServiceImpl implements SinhVienService {
    private List<SinhVien> sinhViens = new ArrayList<>();

    public SinhVienServiceImpl() {
        sinhViens.add(new SinhVien("Ph23086", "Đỗ Hữu Nguyện", 20, "Tuyên Quang", true));
        sinhViens.add(new SinhVien("Ph23087", "Sơn", 20, "Tuyên Quang", true));
        sinhViens.add(new SinhVien("Ph23088", "Văn", 20, "Tuyên Quang", true));
        sinhViens.add(new SinhVien("Ph23089", "Phước", 20, "Tuyên Quang", true));
        sinhViens.add(new SinhVien("Ph23090", "Đỗ Hữu Nguyện", 20, "Tuyên Quang", true));
    }

    @Override
    public List<SinhVien> getALl() {
        return sinhViens;
    }

    @Override
    public List<SinhVien> getByName(String name) {
        List<SinhVien> list = new ArrayList<>();
        for (SinhVien sv : sinhViens) {
            if (sv.getTen().startsWith(name)) {
                list.add(sv);
            }

        }
        return list;
    }

    @Override
    public void addSv(SinhVien sv) {
        sinhViens.add(sv);
    }

    @Override
    public void deleteSv(String ma) {
        SinhVien sv = detailSv(ma);
        sinhViens.remove(sv);
    }

    @Override
    public SinhVien detailSv(String ma) {
        for (SinhVien sv : sinhViens
             ) {if(sv.getMssv().equalsIgnoreCase(ma)){
                 return sv;
        }

        }
        return null;
    }
}
