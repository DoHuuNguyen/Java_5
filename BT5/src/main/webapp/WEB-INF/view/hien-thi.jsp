<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Giang Vien</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div style="border: solid 1px black; border-radius: 20px; width: 50%">
    <form action="/giangVien/search" method="post"  style="margin: 10px">
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Tên</label>
            <div class="col-sm-10">
                <input name="ten" class="form-control"/>
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Tuổi:</label>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Min</label>
            <div class="col-sm-10">
                <input name="min" class="form-control" type="number"/>
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Max</label>
            <div class="col-sm-10">
                <input name="max" class="form-control" type="number"/>
            </div>
        </div>
        <button type="submit" class="btn btn-outline-info" style="margin-left: 85%">Search</button>
    </form>
</div>
<div style="border: solid 1px black; border-radius: 20px; width: 50%; margin-left: 50%">
    <form:form modelAttribute="giangVien" action="/giangVien/add" method="post" style="margin: 10px" >
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Mã Giảng Viên :</label>
            <div class="col-sm-10">
                <form:input path="ma" class="form-control" value="${gv.ma}" /> <br>
                <form:errors path="ma" cssStyle="color: red"/>
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Tên :</label>
            <div class="col-sm-10">
                <form:input path="ten"  class="form-control" value="${gv.ten}"/> <br>
                <form:errors path="ten" cssStyle="color: red"/>
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Tuổi :</label>
            <div class="col-sm-10">
                <form:input path="tuoi"  class="form-control" value="${gv.tuoi}" type="number"/> <br>
                <form:errors path="tuoi" cssStyle="color: red"/>
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Quê Quán :</label>
            <div class="col-sm-10">
                <form:input path="queQuan"  class="form-control" value="${gv.queQuan}"/> <br>
                <form:errors path="queQuan" cssStyle="color: red"/>
            </div>
        </div>
        <form:button type="submit" class="btn btn-outline-success" style="margin-left: 85%">ADD</form:button>
    </form:form>
</div>
<br>

<table class="table">
    <thead>
    <tr>
        <th>Mã</th>
        <th>Tên</th>
        <th>Tuổi</th>
        <th>Quê Quán</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="gv" >
        <tr>
            <td>${gv.ma}</td>
            <td>${gv.ten}</td>
            <td>${gv.tuoi}</td>
            <td>${gv.queQuan}</td>
            <td><a href="/giangVien/view-update/${gv.ma}" class="btn btn-outline-primary">Update</a>
                <a href="/giangVien/detail/${gv.ma}" class="btn btn-outline-light">detail</a>
                <a href="/giangVien/delete/${gv.ma}" class="btn btn-outline-warning">delete</a></td>
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