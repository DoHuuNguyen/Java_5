<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<div style="border: 1px solid white; width: 70%;border-radius: 15px; margin: 0 auto;margin-top: 5%">
    <form method="post" action="/lop-hoc/search" style="margin: 10px">
        Tên lớp: <input name="ten" type="text" class="form-control"><br>
        Địa điểm:<input name="diaDiem" type="text" class="form-control"><br>
        <button type="submit" class="btn btn-outline-success">Search</button>
    </form>
</div>
<div style="border: 1px solid white; width: 90%;border-radius: 15px; margin: 0 auto; margin-top: 5%">
    <form:form action="/lop-hoc/add" method="post" modelAttribute="lp" style="margin: 10px">
        Id lớp: <form:input path="id" cssClass="form-control" readonly="true" value="${lophoc.id}"/>
        Tên lớp: <form:input path="name" cssClass="form-control" value="${lophoc.name}"/>
        <form:errors path="name" cssStyle="color: red"/><br>
        Địa điểm lớp: <form:input path="diaDiem" cssClass="form-control" value="${lophoc.diaDiem}"/>
        <form:errors path="diaDiem" cssStyle="color: red"/><br>
        <form:button type="submit" class="btn btn-outline-success">ADD</form:button>
    </form:form>
</div>
<br>
<table class="table">
    <thead>
    <tr>
        <th>ID</th>
        <th>Tên Lớp Học</th>
        <th>Địa Điểm Lớp Học</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="lp">
        <tr>
            <td>${lp.id}</td>
            <td>${lp.name}</td>
            <td>${lp.diaDiem}</td>
            <td>
                <a href="/lop-hoc/edit/${lp.id}" class="btn btn-outline-warning">Edit</a>
                <a href="/lop-hoc/remove/${lp.id}" class="btn btn-outline-danger">Remove</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<nav aria-label="Page navigation example">
    <ul class="pagination">
        <li class="page-item"><a class="page-link" href="#">First</a></li>
        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
        <li class="page-item"><a class="page-link" href="#">Next</a></li>
        <li class="page-item"><a class="page-link" href="#">Last</a></li>
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