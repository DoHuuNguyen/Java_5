package com.example.demo.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class GiangVien {
    private String id;
    private String ma;
    private String ten;
    private Integer tuoi;
    private Boolean gioiTinh;
    private String diaChi;
}
