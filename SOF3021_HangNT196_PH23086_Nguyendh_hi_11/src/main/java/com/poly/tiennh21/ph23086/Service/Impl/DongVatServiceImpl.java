package com.poly.tiennh21.ph23086.Service.Impl;

import com.poly.tiennh21.ph23086.Entity.DongVat;
import com.poly.tiennh21.ph23086.Service.DongVatService;

import java.util.ArrayList;
import java.util.List;

public class DongVatServiceImpl implements DongVatService {
    private List<DongVat> dongVatList = new ArrayList<>();

    public DongVatServiceImpl() {
        dongVatList.add(new DongVat("DV1", "Thỏ", true, 10.0, "CV01"));
        dongVatList.add(new DongVat("DV2", "Voi", false, 100.0, "CV01"));
        dongVatList.add(new DongVat("DV3", "Hổ", true, 50.0, "CV01"));
        dongVatList.add(new DongVat("DV4", "Mèo", false, 10.0, "CV01"));
    }

    @Override
    public List<DongVat> getAll() {
        return dongVatList;
    }

    @Override
    public void addDongVat(DongVat dv) {
        dongVatList.add(dv);
    }

    @Override
    public void updateDongVat(DongVat dv) {
        for (int i = 0; i < dongVatList.size(); i++) {
            DongVat dongVat = dongVatList.get(i);
            if (dongVat.getMa().equalsIgnoreCase(dv.getTen())) {
                dongVatList.set(i, dv);
            }
        }
    }

    @Override
    public DongVat detail(String ma) {
        for (DongVat dv : dongVatList
        ) {
            if (dv.getMa().equals(ma)) {
                return dv;
            }
        }
        return null;
    }

    @Override
    public void deleteDongVat(String ma) {
        dongVatList.remove(detail(ma));
    }
}
