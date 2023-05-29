package com.poly.tiennh21.ph23086.Service;

import com.poly.tiennh21.ph23086.Entity.SanPham;

import java.util.List;

public interface SanPhamService {
    List<SanPham> getALl();

    void addSanPham(SanPham sp);

    void updateSanPham(SanPham sp);

    SanPham detailSanPham(Integer id);

    void deleteSanPham(Integer id);

    List<SanPham> getByName(String name);
}
