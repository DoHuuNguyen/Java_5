package com.example.demo.Service;

import com.example.demo.Entity.Category;

import java.util.List;

public interface CategoryService {

    List<Category> getAll();

    void addCategory(Category category);

    void updateCategory(Category category);

    void deleteCategory(Long id);
}
