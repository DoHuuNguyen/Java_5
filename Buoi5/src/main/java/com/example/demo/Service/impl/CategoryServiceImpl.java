package com.example.demo.Service.impl;

import com.example.demo.Entity.category;
import com.example.demo.Service.CategoryService;
import com.example.demo.repository.CategoryReopsitory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {
    //Gọi bean, Gọi tầng
    @Autowired
    private CategoryReopsitory categoryReopsitory;

    @Override
    public List<category> getAll() {
        return categoryReopsitory.findAll();
    }

    @Override
    public void addCategory(category category) {
        categoryReopsitory.save(category);
    }

    @Override
    public void updateCategory(category category) {
        categoryReopsitory.save(category);
    }

    @Override
    public void deleteCategory(Long id) {
        categoryReopsitory.deleteById(id);
    }
    //GetALL ==> findAll
    //Thêm ==> save
    //Update ==> save
    //Xóa ==> delete
}
