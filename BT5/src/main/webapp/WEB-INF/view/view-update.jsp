<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <title>View Update Giảng Viên</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div style="border: solid 1px black; border-radius: 20px">
    <form:form modelAttribute="giangVien" action="/giangVien/update" method="post" style="margin: 10px" >
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Mã Giảng Viên :</label>
            <div class="col-sm-10">
                <form:input path="ma" class="form-control" value="${gv.ma}"/> <br>
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
        <form:button type="submit" class="btn btn-outline-success" style="margin-left: 85%">update</form:button>
    </form:form>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
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