<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>CuaHang</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<h1>Quan Ly Cua Hang</h1>
<form:form action="/cua-hang/add" method="post" modelAttribute="cuaHang">
    Ma:<form:input path="ma" class="form-control"/> <br>
    <form:errors path="ma" cssStyle="color: red"/><br>
    Ten:<form:input path="ten" class="form-control"/><br>
    <form:errors path="ten" cssStyle="color: red"/><br>
    DiaChi:<form:input path="diaChi" class="form-control"/><br>
    <form:errors path="diaChi" cssStyle="color: red"/><br>
    ThanhPho:<form:input path="thanhPho" class="form-control"/><br>
    <form:errors path="thanhPho" cssStyle="color: red"/><br>
    QuocGia:<form:select path="quocGia" class="form-control">
    <form:option value="VietNam">VietNam</form:option>
    <form:option value="Lao">Lao</form:option>
</form:select>
    <br>
    <form:button type="submit" class="btn btn-success">Add</form:button>
</form:form>
<table border="1px" class="table">
    <thead>
    <tr>
        <td>Ma</td>
        <td>Ten</td>
        <td>DiaChi</td>
        <td>ThanhPho</td>
        <td>QuocGia</td>
        <td colspan="2">Action</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listCH.content}" var="ch">
        <tr>
            <td>${ch.ma}</td>
            <td>${ch.ten}</td>
            <td>${ch.diaChi}</td>
            <td>${ch.thanhPho}</td>
            <td>${ch.quocGia}</td>
            <td>
                <a class="btn btn-outline-danger"  href="/cua-hang/remove/${ch.id}">Delete</a>
                <a class="btn btn-outline-warning"  href="/cua-hang/detail/${ch.id}">Update</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<nav>
    <ul>
        <c:forEach begin="0" end="${listCH.totalPages -1}" varStatus="loop">
            <li>
                <a href="/cua-hang/hien-thi?page=${loop.begin + loop.count -1}">
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