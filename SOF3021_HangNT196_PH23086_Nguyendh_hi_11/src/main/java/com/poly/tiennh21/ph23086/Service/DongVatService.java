package com.poly.tiennh21.ph23086.Service;

import com.poly.tiennh21.ph23086.Entity.DongVat;

import java.util.List;

public interface DongVatService {
    List<DongVat> getAll();

    void addDongVat(DongVat dv);

    void updateDongVat(DongVat dv);

    void deleteDongVat(String ma);

    DongVat detail(String ma);
}
