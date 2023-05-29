<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div>
    <form:form method="post" action="/dong-vat/add" modelAttribute="dv">
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Mã :</label>
            <div class="col-sm-10">
                <form:input path="ma" class="form-control"/>
                <form:errors path="ma" cssStyle="color: red"/>
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Khu Vực Sống :</label>
            <div class="col-sm-10">
                <form:select path="khuVuc" cssStyle="width: 100px">
                    <form:option value="CV01">CV01</form:option>
                    <form:option value="CV02">CV02</form:option>
                    <form:option value="CV03">CV03</form:option>
                    <form:option value="CV04">CV04</form:option>
                    <form:option value="CV05">CV05</form:option>
                </form:select>
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Tên :</label>
            <div class="col-sm-10">
                <form:input path="ten" class="form-control"/>
                <form:errors path="ten" cssStyle="color: red"/>
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Cân Nặng :</label>
            <div class="col-sm-10">
                <form:input path="canNang" class="form-control"/>
                <form:errors path="canNang" cssStyle="color: red"/>
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Giới Tính :</label>
            <div class="col-sm-10">
                <form:radiobutton path="gioiTinh" value="true" checked="true"/>Đực
                <form:radiobutton path="gioiTinh" value="false"/>Cái
            </div>
        </div>
        <form:button type="submit" class="btn btn-outline-success">ADD</form:button>
    </form:form>
</div>


<table class="table">
    <thead>
    <tr>
        <th>#</th>
        <th>Mã</th>
        <th>Tên</th>
        <th>Giới Tính</th>
        <th>Cân Nặng</th>
        <th>Khu Vực Sống</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="dv" varStatus="i">
        <tr>
            <td></td>
            <td>${dv.ma}</td>
            <td>${dv.ten}</td>
            <td>${dv.gioiTinh}</td>
            <td>${dv.canNang}</td>
            <td>${dv.khuVuc}</td>
            <td><a href="/dong-vat/view-update/${dv.ma}" class="btn btn-outline-warning">Update</a>
                <a href="/dong-vat/delete/${dv.ma}" class="btn btn-outline-danger">delete</a></td>
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