<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>SanPham</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<h1>Quan Ly San Pham</h1>
<form:form action="/san-pham/add" method="post" modelAttribute="sanPham">
    Ma:<form:input path="ma" class="form-control"/><br>
    <form:errors path="ma" cssStyle="color: red"/><br>
    Ten:<form:input path="ten" class="form-control"/><br>
    <form:errors path="ten" cssStyle="color: red"/><br>
    <form:button type="submit" class="btn btn-success">Add</form:button>
</form:form>
<table border="1px" class="table">
    <thead>
    <tr>
        <td>Ma</td>
        <td>Ten</td>
        <td colspan="2">Action</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listSP.content}" var="sp">
        <tr>
            <td>${sp.ma}</td>
            <td>${sp.ten}</td>
            <td>
               <a class="btn btn-outline-danger"  href="/san-pham/remove/${sp.id}">Delete</a>
               <a class="btn btn-outline-warning"  href="/san-pham/detail/${sp.id}">Update</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<nav>
    <ul>
        <c:forEach begin="0" end="${listSP.totalPages -1}" varStatus="loop">
            <li>
                <a href="/san-pham/hien-thi?page=${loop.begin + loop.count -1}">
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