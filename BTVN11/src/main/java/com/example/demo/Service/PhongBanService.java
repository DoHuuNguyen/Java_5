package com.example.demo.Service;

import com.example.demo.Entity.LoaiPhongBan;
import com.example.demo.Entity.PhongBan;

import java.util.List;
import java.util.UUID;

public interface PhongBanService {
    List<PhongBan> getAll();
    List<LoaiPhongBan> listLPB();
    void addPhongBan(PhongBan phongBan);
    void deletePhongBan(UUID id);
    PhongBan detailPhongBan(UUID id);
}
