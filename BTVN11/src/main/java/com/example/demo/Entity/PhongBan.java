package com.example.demo.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Entity
@Table(name = "phong_ban")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter

public class PhongBan {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private UUID id;

    @JoinColumn(name = "loai_phong_ban_id",referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY)
    private LoaiPhongBan loaiPhongBan;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten")
    private String ten;

    @Column(name = "so_luong_phong_ban")
    private Integer soLuongPhongBan;

    @Column(name = "so_luong_nhan_vien")
    private int soLuongNhanVien;

    @Column(name = "trang_thai")
    private Integer trangThai;

}
