<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="java.sql.Date" %>
<!doctype html>
<html lang="en">
<head>
    <title>Nhân Viên</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<form:form method="post" action="/nhan-vien/add" modelAttribute="nv">
    Mã: <form:input path="ma" class="form-control"/> <br>

    Họ: <form:input path="ho" class="form-control"/><br>

    Tên Đệm: <form:input path="tenDem" class="form-control"/><br>

    Tên: <form:input path="ten" class="form-control"/><br>

    Cửa Hàng: <form:select path="cuaHang" cssStyle="width: 100px">
    <form:options items="${listCh}" itemValue="id" itemLabel="ten"/>
</form:select><br><br>
    Chức Vụ: <form:select path="chucVu" cssStyle="width: 100px">
    <form:options items="${listCv}" itemValue="id" itemLabel="ten"/>
</form:select><br><br>
    Năm sinh: <select name="nam" style="width: 100px">
    <c:forEach items="${nam1}" var="n">
        <option value="${n}">${n}</option>
    </c:forEach>
</select> <br><br>
    <form:button type="submit">ADD</form:button>
</form:form>

<table class="table">
    <thead>
    <tr>
        <th>#</th>
        <th>Mã</th>
        <th>Họ và Tên</th>
        <th>Giới Tính</th>
        <th>Tuổi</th>
        <th>Chức Vụ</th>
        <th>Cửa Hàng</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="nv" varStatus="i">
        <tr>
            <td>${i.index+1}</td>
            <td>${nv.ma}</td>
            <td>${nv.ho} ${nv.tenDem} ${nv.ten}</td>
            <td>${nv.gioiTinh}</td>
            <td>${datenow-nv.ngaySinh.getYear()}</td>
            <td>${nv.chucVu.ten}</td>
            <td>${nv.cuaHang.ten}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

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