package com.example.demo.service;

import com.example.demo.entity.SinhVien;

import java.util.List;

public interface SinhVienService {
    List<SinhVien> getALl();

    List<SinhVien> getByName(String name);

    void addSv(SinhVien sv);

    void deleteSv(String ma);

    SinhVien detailSv(String ma);


}
