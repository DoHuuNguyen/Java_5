<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>KhachHangUpdate</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<form:form action="/khach-hang/update/${khachHang.id}" method="post" modelAttribute="khachHang">
    Ma:<form:input path="ma" class="form-control"/><br>
    Ten:<form:input path="ten" class="form-control"/><br>
    TenDem:<form:input path="tenDem" class="form-control"/><br>
    Ho:<form:input path="ho" class="form-control"/><br>
    NgaySinh:<form:input type="date" path="ngaySinh" class="form-control"/><br>
    sdt:<form:input path="sdt" class="form-control"/><br>
    DiaChi:<form:input path="diaChi" class="form-control"/><br>
    ThanhPho:<form:input path="thanhPho" class="form-control"/><br>
    QuocGia:<form:select path="quocGia" class="form-control"><br>
    <form:option value="HaNoi">HaNoi</form:option>
    <form:option value="Lao">Lao</form:option>
</form:select><br>
    MatKhau:<form:input path="matKhau" class="form-control"/><br>
    <form:button type="submit" class="btn btn-success">Update</form:button>
</form:form>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>