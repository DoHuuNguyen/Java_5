package com.example.demo.Repository;

import com.example.demo.Entity.LoaiPhongBan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;
@Repository
public interface LoaiPhongBanRepository extends JpaRepository<LoaiPhongBan, UUID> {
}
