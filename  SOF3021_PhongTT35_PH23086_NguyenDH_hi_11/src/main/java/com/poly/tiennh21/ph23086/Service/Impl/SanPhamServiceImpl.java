package com.poly.tiennh21.ph23086.Service.Impl;

import com.poly.tiennh21.ph23086.Entity.SanPham;
import com.poly.tiennh21.ph23086.Service.SanPhamService;

import java.util.ArrayList;
import java.util.List;

public class SanPhamServiceImpl implements SanPhamService {

    private List<SanPham> sanPhamList = new ArrayList<>();

    public SanPhamServiceImpl() {
        sanPhamList.add(new SanPham(1, "PH1", "Sơn", "Loại 1", 10000));
        sanPhamList.add(new SanPham(2, "PH2", "Quần", "Loại 2", 10000));
        sanPhamList.add(new SanPham(3, "PH3", "Áo", "Loại 3", 10000));
        sanPhamList.add(new SanPham(4, "PH4", "Túi", "Loại 1", 10000));
        sanPhamList.add(new SanPham(5, "PH5", "Dép", "Loại 4", 10000));
    }

    @Override
    public List<SanPham> getALl() {
        return sanPhamList;
    }

    @Override
    public void addSanPham(SanPham sp) {
        sanPhamList.add(sp);
    }

    @Override
    public void updateSanPham(SanPham sp) {
        for (int i = 0; i < sanPhamList.size(); i++) {
            if (sanPhamList.get(i).getId().equals(sp.getId())) {
                sanPhamList.set(i, sp);
            }
        }
    }

    @Override
    public SanPham detailSanPham(Integer id) {
        for (SanPham sp : sanPhamList
        ) {
            if (sp.getId().equals(id)) {
                return sp;
            }
        }
        return null;
    }

    @Override
    public void deleteSanPham(Integer id) {
        sanPhamList.remove(detailSanPham(id));
    }

    @Override
    public List<SanPham> getByName(String name) {
        List<SanPham> sp = new ArrayList<>();
        for (SanPham sps : sanPhamList
             ) {
            if(sps.getTen().endsWith(name)){
                sp.add(sps);
            }
        }
        return sp;
    }
}
