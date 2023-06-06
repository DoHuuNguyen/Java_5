package com.example.demo.Service.Impl;

import com.example.demo.Entity.LoaiPhongBan;
import com.example.demo.Entity.PhongBan;
import com.example.demo.Repository.LoaiPhongBanRepository;
import com.example.demo.Repository.PhongBanRepository;
import com.example.demo.Service.PhongBanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class PhongBanServiceImpl implements PhongBanService {

    @Autowired
    private PhongBanRepository phongBanRepository;

    @Autowired
    private LoaiPhongBanRepository loaiPhongBanRepository;

    @Override
    public List<PhongBan> getAll() {
        return phongBanRepository.findAll();
    }

    @Override
    public List<LoaiPhongBan> listLPB() {
        return loaiPhongBanRepository.findAll();
    }

    @Override
    public void addPhongBan(PhongBan phongBan) {
        phongBanRepository.save(phongBan);
    }

    @Override
    public void deletePhongBan(UUID id) {

    }

    @Override
    public PhongBan detailPhongBan(UUID id) {
        return phongBanRepository.detail(id);
    }
}
