package com.example.demo.Service;

import com.example.demo.Entity.ChucVu;
import com.example.demo.Entity.CuaHang;
import com.example.demo.Entity.NhanVien;

import java.util.List;
import java.util.Optional;

public interface NhanVienService {

    List<NhanVien> getAll();

    void addNhanVien(NhanVien nv);

    //    Optional<NhanVien> detailNhanVien(String id);
//    void removeNhanVien(String id);
    List<ChucVu> listCV();

    List<CuaHang> listCH();
}
