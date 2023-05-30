package com.example.demo.Service.impl;

import com.example.demo.Entity.Product;
import com.example.demo.Service.ProductService;
import com.example.demo.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<Product> getAll() {
        List<Product> list = productRepository.findAll();
        return productRepository.findAll();
    }
}
