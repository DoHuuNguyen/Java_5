<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>KhachHang</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<h1>Quan Ly Khach Hang</h1>
<form:form action="/khach-hang/add" method="post" modelAttribute="khachHang">
    Ma:<form:input path="ma" class="form-control"/> <br>
    <form:errors path="ma" cssStyle="color: red"/> <br>
    Ten:<form:input path="ten" class="form-control"/><br>
    <form:errors path="ten" cssStyle="color: red"/> <br>
    TenDem:<form:input path="tenDem" class="form-control"/><br>
    <form:errors path="tenDem" cssStyle="color: red"/> <br>
    Ho:<form:input path="ho" class="form-control"/><br>
    <form:errors path="ho" cssStyle="color: red"/> <br>
    NgaySinh:<form:input type="date" path="ngaySinh" class="form-control"/><br>
    sdt:<form:input path="sdt" class="form-control"/><br>
    <form:errors path="sdt" cssStyle="color: red"/> <br>
    DiaChi:<form:input path="diaChi" class="form-control"/><br>
    <form:errors path="diaChi" cssStyle="color: red"/> <br>
    ThanhPho:<form:input path="thanhPho" class="form-control"/><br>
    <form:errors path="thanhPho" cssStyle="color: red"/> <br>
    QuocGia:<form:select path="quocGia" class="form-control">
    <form:option value="HaNoi">HaNoi</form:option>
    <form:option value="Lao">Lao</form:option>
</form:select><br>
    MatKhau:<form:input path="matKhau" class="form-control"/><br>
    <form:errors path="matKhau" cssStyle="color: red"/> <br>
    <form:button type="dubmit" class="btn btn-success">Add</form:button>
</form:form>
<table border="1px" class="table">
    <thead>
    <tr>
        <td>Ma</td>
        <td>HoVaTen</td>
        <td>NgaySinh</td>
        <td>sdt</td>
        <td>DiaChi</td>
        <td>ThanhPho</td>
        <td>QuocGia</td>
        <td colspan="2">
            Avtion
        </td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listKH.content}" var="kh">
        <tr>
            <td>${kh.ma}</td>
            <td>${kh.ho} ${kh.tenDem} ${kh.ten}</td>
            <td>${kh.ngaySinh}</td>
            <td>${kh.sdt}</td>
            <td>${kh.diaChi}</td>
            <td>${kh.thanhPho}</td>
            <td>${kh.quocGia}</td>
            <td>
                <a class="btn btn-outline-danger"  href="/khach-hang/remove/${kh.id}">Delete</a>
                <a class="btn btn-outline-warning"  href="/khach-hang/detail/${kh.id}">Update</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<nav>
    <ul>
        <c:forEach begin="0" end="${listKH.totalPages -1}" varStatus="loop">
            <li>
                <a href="/khach-hang/hien-thi?page=${loop.begin + loop.count -1}">
                        ${loop.begin + loop.count}
                </a>
            </li>
        </c:forEach>
    </ul>
</nav>
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