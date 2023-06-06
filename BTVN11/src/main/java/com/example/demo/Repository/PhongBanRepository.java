package com.example.demo.Repository;

import com.example.demo.Entity.PhongBan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.UUID;
@Repository
public interface PhongBanRepository extends JpaRepository<PhongBan, UUID> {
    @Query("select pb from PhongBan pb where id = ?1")
    PhongBan detail(UUID id);
}
