<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>NhanVienUpdate</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<form:form action="/nhan-vien/update/${nhanVien.id}" method="post" modelAttribute="nhanVien">
    Ma:<form:input path="ma" class="form-control"/> <br>
    Ten:<form:input path="ten" class="form-control"/><br>
    TenDem:<form:input path="tenDem" class="form-control"/><br>
    Ho:<form:input path="ho" class="form-control"/><br>
    GioiTinh:<form:radiobutton path="gioiTinh" value="Nam"/>Nam
    <form:radiobutton path="gioiTinh" value="Nu"/>Nu <br>
    NgaySinh:<form:input type="date" path="ngaySinh" class="form-control"/><br>
    DiaChi:<form:input path="diaChi" class="form-control"/><br>
    sdt:<form:input path="sdt" class="form-control"/><br>
    MatKhau:<form:input path="matKhau" class="form-control"/><br>
    IdCH:
    <form:select path="cuaHang" class="form-control">
        <c:forEach items="${listCH}" var="ch">
            <form:option value="${ch.id}" selected="${ch.id==nhanVien.cuaHang.id?'true':''}">${ch.ma}</form:option>
        </c:forEach>
    </form:select> <br>
    IdCV:
    <form:select path="chucVu" class="form-control">
        <c:forEach items="${listCV}" var="cv">
            <form:option value="${cv.id}" selected="${cv.id==nhanVien.chucVu.id?'true':''}">${cv.ma}</form:option>
        </c:forEach>
    </form:select> <br>
    TrangThai:<form:radiobutton path="trangThai" value="1"/>ConLam
    <form:radiobutton path="trangThai" value="0"/>NghiLam<br>
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