package com.example.demo.repository;


import com.example.demo.Entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryReopsitory extends JpaRepository<Category, Long> {
    //CRUD 1 Bảng --> không phải viết ==> có sẵn
    //Tự custom
    //c1: Query creation
    //c2: raw sql

    //c1
    // List<category>findcategoryByAndNameAndID(String categoryNam, Long id);

    //c2.1: JPQL (JPA Query language) <=> tương tự gần giống hql
    //Native == false(default)
    @Query("select c from Category c where c.name like ?2 and c.ID = ?1")
    List<Category> search(Long id, String category_name);

    //c2.2: Native query => truy vấn trên sql
    //Native == true
    @Query(value = "select * from category c where c.catecory_name = ?2 and c.id = ?1", nativeQuery = true)
    List<Category> search1(Long id, String category_name);
}
