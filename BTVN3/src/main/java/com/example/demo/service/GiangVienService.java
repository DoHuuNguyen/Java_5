package com.example.demo.service;

import com.example.demo.entity.GiangVien;

import java.util.List;

public interface GiangVienService {
    List<GiangVien> getAll();
    List<GiangVien> getByName(String name);
    List<GiangVien> getByGioiTinh();
}
