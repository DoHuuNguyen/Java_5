package com.poly.tiennh21.ph23086.Entity;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString

public class SanPham {

    @NotNull(message = "Không được để trống")
    private Integer id;

    @NotBlank(message = "Không được để trống")
    private String ma;

    @NotBlank(message = "Không được để trống")
    private String ten;

    private String loai;

    @NotNull(message = "Không được để trống")
    @Min(value = 150, message = "Phải lớn hơn 150")
    private Integer gia;
}
