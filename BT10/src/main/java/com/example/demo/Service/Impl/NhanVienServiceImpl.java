package com.example.demo.Service.Impl;

import com.example.demo.Entity.ChucVu;
import com.example.demo.Entity.CuaHang;
import com.example.demo.Entity.NhanVien;
import com.example.demo.Repository.ChucVuRepository;
import com.example.demo.Repository.CuaHangRepository;
import com.example.demo.Repository.NhanVienRepository;
import com.example.demo.Service.NhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class NhanVienServiceImpl implements NhanVienService {

    @Autowired
    private NhanVienRepository nhanVienRepository;

    @Autowired
    private CuaHangRepository cuaHangRepository;

    @Autowired
    private ChucVuRepository chucVuRepository;

    @Override
    public List<NhanVien> getAll() {
        return nhanVienRepository.findAll();
    }

    @Override
    public void addNhanVien(NhanVien nv) {
        nhanVienRepository.save(nv);
    }

//    @Override
//    public Optional<NhanVien> detailNhanVien(String id) {
//        return nhanVienRepository.findById(Long.parseLong(id));
//    }
//
//    @Override
//    public void removeNhanVien(String id) {
//        nhanVienRepository.deleteById(Long.parseLong(id));
//    }

    @Override
    public List<ChucVu> listCV() {
        return chucVuRepository.findAll();
    }

    @Override
    public List<CuaHang> listCH() {
        return cuaHangRepository.findAll();
    }
}
