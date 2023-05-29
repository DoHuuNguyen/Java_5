package com.example.demo.Service;

import com.example.demo.Entity.category;

import java.util.List;

public interface CategoryService {

    List<category> getAll();

    void addCategory(category category);

    void updateCategory(category category);

    void deleteCategory(Long id);
}
