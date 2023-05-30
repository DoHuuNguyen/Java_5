package com.example.demo.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Table(name = "category")
public class Category {

    @Id
    @Column(name = "id")
    private String ID;

    @Column(name = "category_code")
    private String code;

    @Column(name = "category_name")
    private String name;
}
