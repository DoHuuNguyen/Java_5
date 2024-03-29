package com.example.demo.repository;


import com.example.demo.entity.LopHoc;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LopHocRepository extends JpaRepository<LopHoc, Long> {
    @Query("select l from LopHoc l where l.name like ?1 or l.diaDiem like ?2")
    List<LopHoc> search(String ten, String diaDiem);

    @Query("select l from LopHoc l where l.id = ?1 ")
    LopHoc detail(Long id);
}
