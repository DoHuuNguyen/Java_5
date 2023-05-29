package com.example.demo.entity;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString

public class SinhVien {

    @NotEmpty(message = "Không được để trống")
    @Size(min = 5, message = "Tối thiểu 5 ký tự")
    private String mssv;

    @Pattern(regexp = "[a-z A-Z]+")
    private String ten;

    @NotNull
    @Min(20)
    private Integer tuoi;

    private String diaChi;

    private Boolean gioiTinh;
}
