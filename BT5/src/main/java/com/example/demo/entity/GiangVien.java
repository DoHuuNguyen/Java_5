package com.example.demo.entity;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class GiangVien {
    @NotBlank(message = "Không được để trống !")
    private String ma;
    @NotBlank(message = "Không được để trống !")
    private String ten;
    @NotNull(message = "Không được để trống !")
    @Min(value = 25, message = "Tuổi phải lớn hơn 25")
    private Integer tuoi;
    @NotBlank(message = "Không được để trống !")
    private String queQuan;

}
