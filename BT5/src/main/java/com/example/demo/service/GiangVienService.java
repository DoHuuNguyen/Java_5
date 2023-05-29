package com.example.demo.service;

import com.example.demo.entity.GiangVien;

import java.util.List;

public interface GiangVienService {
    List<GiangVien> getAll();

    void addGiangVien(GiangVien gv);

    void updateGiangVien(GiangVien gv);

    GiangVien detailGiangVien(String ma);

    void deleteGiangVien(String ma);

    List<GiangVien> search(String ten, Integer min, Integer max);
}
