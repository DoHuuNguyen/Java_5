<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<div>
    <form action="/san-pham/search" method="post">
        <input type="text" name="ten" class="form-controrl">
        <button type="submit" class="btn btn-outline-success">Search</button>
    </form>
</div>
<div>
    <form:form action="/san-pham/add" method="post" modelAttribute="sanPham">
        ID: <form:input path="id" value="${sp.id}" type="number"/>
        <form:errors path="id" cssStyle="color: red"/>
        <br>
        Mã: <form:input path="ma" value="${sp.ma}"/>
        <form:errors path="ma" cssStyle="color: red"/>
        <br>
        Tên: <form:input path="ten" value="${sp.ten}"/>
        <form:errors path="ten" cssStyle="color: red"/>
        <br>
        Giá: <form:input path="gia" value="${sp.gia}" type="number"/>
        <form:errors path="gia" cssStyle="color: red"/>
        <br>
        Loại: <form:select path="loai" cssStyle="width: 150px" >
        <form:option value="Loại 1">Loại 1</form:option>
        <form:option value="Loại 2">Loại 2</form:option>
        <form:option value="Loại 3">Loại 3</form:option>
        <form:option value="Loại 4">Loại 4</form:option>
        <form:option value="Loại 5">Loại 5</form:option>
                </form:select>
        <form:button type="submit" class="btn btn-outline-success">ADD</form:button>
    </form:form>
</div>
<table class="table">
    <thead>
    <tr>
        <th>ID</th>
        <th>Mã</th>
        <th>Tên</th>
        <th>Giá</th>
        <th>Loại</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
        <c:forEach items="${list}" var="sp">
            <tr>
                <td>${sp.id}</td>
                <td>${sp.ma}</td>
                <td>${sp.ten}</td>
                <td>${sp.gia}</td>
                <td>${sp.loai}</td>
                <td>
                    <a href="/san-pham/detail/${sp.id}" class="btn btn-outline-light">Detail</a>
                    <a href="/san-pham/view-update/${sp.id}" class="btn btn-outline-primary">Update</a>
                    <a href="/san-pham/delete/${sp.id}" class="btn btn-outline-warning">Delete</a>
                </td>
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