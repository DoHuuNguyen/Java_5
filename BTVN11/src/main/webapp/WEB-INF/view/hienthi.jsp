<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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

<div style="border: solid 1px red ;border-radius: 30px; margin: auto">
    <form:form action="/phong-ban/add" method="post" modelAttribute="pb" cssStyle="margin: 20px">
        Mã: <form:input path="ma" class="form-control"/>
        Tên: <form:input path="ten" class="form-control"/>
        Số Lượng Phòng Ban: <form:input path="soLuongPhongBan" class="form-control"/>
        Số Lượng Nhân Viên: <form:input path="soLuongNhanVien" class="form-control"/>
        Loại phòng ban: <form:select path="loaiPhongBan" class="form-control">
        <form:options items="${listLpb}" itemLabel="ten" itemValue="id"/>
    </form:select> <br>
        <form:button class="btn btn-outline-success" type="submit">ADD</form:button>
    </form:form>
</div>

<table class="table">
    <thead>
    <tr>
        <th>#</th>
        <th>Mã</th>
        <th>Tên</th>
        <th>Số Lượng Phòng Ban</th>
        <th>Số Lượng Nhân Viên</th>
        <th>Trạng Thái</th>
        <th>Loại phòng ban</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="pb" varStatus="i">
        <tr>
            <td>${i.index+1}</td>
            <td>${pb.ma}</td>
            <td>${pb.ten}</td>
            <td>${pb.soLuongPhongBan}</td>
            <td>${pb.soLuongNhanVien}</td>
            <td>${pb.trangThai}</td>
            <td>${pb.loaiPhongBan.ten}</td>
            <td><a class="btn btn-outline-success" href="/phong-ban/view-update/${pb.id}">Update</a> </td>
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