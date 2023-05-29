package com.example.demo.service;

import com.example.demo.entity.SinhVien;

import java.util.List;

public interface SinhVienService {
    List<SinhVien> getALl();

    void addSV(SinhVien sv);
}
