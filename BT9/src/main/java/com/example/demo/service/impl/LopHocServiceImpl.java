package com.example.demo.service.impl;

import com.example.demo.entity.LopHoc;
import com.example.demo.repository.LopHocRepository;
import com.example.demo.service.LopHocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class LopHocServiceImpl implements LopHocService {
    @Autowired
    private LopHocRepository lopHocRepository;

    @Override
    public List<LopHoc> getAll() {
        return lopHocRepository.findAll();
    }

    @Override
    public void addLopHoc(LopHoc lopHoc) {
        lopHocRepository.save(lopHoc);
    }

    @Override
    public void deleteLopHoc(Long id) {
        lopHocRepository.deleteById(id);
    }

    @Override
    public List<LopHoc> search(String ten, String diaDiem) {
        return lopHocRepository.search(ten, diaDiem);
    }

    @Override
    public LopHoc detail(Long id) {
        return lopHocRepository.detail(id);
    }

}
