package com.example.demo.service;

import com.example.demo.entity.LopHoc;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface LopHocService {
    List<LopHoc> getAll();
    void addLopHoc(LopHoc lopHoc);
    void deleteLopHoc(Long id);
    List<LopHoc> search(String ten, String diaDiem);
    LopHoc detail(Long id);
}
