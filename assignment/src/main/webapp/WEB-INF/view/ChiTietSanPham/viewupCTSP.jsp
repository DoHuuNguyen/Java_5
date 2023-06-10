<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>ChiTietSanPhamUpdate</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<h1>Quan Ly Chi Tiet San Pham</h1>
<form:form action="/chi-tietSP/update/${chiTietSP.id}" method="post" modelAttribute="chiTietSP">
    IdSP:
    <form:select path="sanPham" class="form-control">
        <c:forEach items="${listSP}" var="sp">
            <form:option value="${sp.id}" selected="${sp.id==chiTietSP.sanPham.id?'true':''}">${sp.ma}</form:option>
        </c:forEach>
    </form:select> <br>
    IdNSX:
    <form:select path="nsx" class="form-control">
        <c:forEach items="${listNSX}" var="nsx">
            <form:option value="${nsx.id}" selected="${nsx.id==chiTietSP.nsx.id?'true':''}">${nsx.ma}</form:option>
        </c:forEach>
    </form:select> <br>
    IdMS:
    <form:select path="mauSac" class="form-control">
        <c:forEach items="${listMS}" var="ms">
            <form:option value="${ms.id}" selected="${ms.id==chiTietSP.mauSac.id?'true':''}">${ms.ma}</form:option>
        </c:forEach>
    </form:select> <br>
    IdDSP:
    <form:select path="dongSP" class="form-control">
        <c:forEach items="${listDSP}" var="dsp">
            <form:option value="${dsp.id}" selected="${dsp.id==chiTietSP.dongSP.id?'true':''}">${dsp.ma}</form:option>
        </c:forEach>
    </form:select> <br>
    NamBH:<form:input path="namBH" type="number" class="form-control"/> <br>
    MoTa:<form:input path="moTa" class="form-control"/> <br>
    SoLuongTon:<form:input path="soLuongTon" type="number" class="form-control"/> <br>
    GiaNhap:<form:input path="giaNhap" type="text" class="form-control"/> <br>
    GiaBan:<form:input path="giaBan" type="text" class="form-control"/> <br>
    <form:button type="submit" class="btn btn-outline-danger" >Update</form:button>
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
