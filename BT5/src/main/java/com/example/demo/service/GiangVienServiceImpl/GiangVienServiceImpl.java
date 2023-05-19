package com.example.demo.service.GiangVienServiceImpl;

import com.example.demo.entity.GiangVien;
import com.example.demo.service.GiangVienService;

import java.util.ArrayList;
import java.util.List;

public class GiangVienServiceImpl implements GiangVienService {

    private List<GiangVien> gvList = new ArrayList<>();

    public GiangVienServiceImpl() {
        gvList.add(new GiangVien("PH23086", "Đỗ Hữu Nguyện", 20, "Tuyên Quang"));
    }

    @Override
    public List<GiangVien> getAll() {
        return gvList;
    }

    @Override
    public void addGiangVien(GiangVien gv) {
        gvList.add(gv);
    }

    private int getIndex(String ma) {
        for (int i = 0; i < gvList.size(); i++) {
            GiangVien gv = gvList.get(i);
            if (gv.getMa().equalsIgnoreCase(ma)) {
                return i;
            }
        }

        return -1;
    }

    @Override
    public void updateGiangVien(GiangVien gv) {
        gvList.set(getIndex(gv.getMa()), gv);
    }

    @Override
    public GiangVien detailGiangVien(String ma) {
        for (GiangVien gv : gvList
        ) {
            if (gv.getMa().equalsIgnoreCase(ma)) {
                return gv;
            }
        }
        return null;
    }

    @Override
    public void deleteGiangVien(String ma) {
        gvList.remove(getIndex(ma));
    }

    @Override
    public List<GiangVien> search(String ten, Integer min, Integer max) {
        List<GiangVien> gv = new ArrayList<>();
        if (ten.isBlank() == true) {
            if (min == null) {
                for (GiangVien gvs : gvList
                ) {
                    if (gvs.getTuoi() <= max) {
                        gv.add(gvs);
                    }

                }
            } else if (max == null) {
                for (GiangVien gvs : gvList
                ) {
                    if (gvs.getTuoi() >= min) {
                        gv.add(gvs);
                    }

                }
            } else {
                for (GiangVien gvs : gvList
                ) {
                    if (gvs.getTuoi() >= min && gvs.getTuoi() <= max) {
                        gv.add(gvs);
                    }

                }
            }
        } else {
            for (GiangVien gvs : gvList
            ) {
                if (gvs.getTen().equalsIgnoreCase(ten) && gvs.getTuoi() >= min && gvs.getTuoi() <= max) {
                    gv.add(gvs);
                }

            }
        }
        return gv;
    }

}
