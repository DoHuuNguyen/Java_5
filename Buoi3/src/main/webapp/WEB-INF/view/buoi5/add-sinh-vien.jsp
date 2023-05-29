<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form:form action="/sinhVien/add" method="post" modelAttribute="sv">
    MSSV : <form:input path="mssv"/>
    <form:errors path="mssv"/>
    <br>
    Ten : <form:input path="ten"/>
    <form:errors path="ten"/>
    <br>
    Tuoi : <form:input path="tuoi"/>
    <form:errors path="tuoi" cssStyle="color: red"/>
    <br>
    Dia Chi : <form:input path="diaChi"/>
    <form:errors path="diaChi"/>
    <br>
    Gioi Tinh: <form:radiobutton value="true" path="gioiTinh" checked="true"/> Nam
    <form:radiobutton value="false" path="gioiTinh"/> Nu

    <form:button type="submit">add</form:button>
</form:form>

<%--<form action="" method="post">--%>
<%--    MSSV: <input type="text" name="mssv"/>--%>
<%--    <br/>--%>
<%--    Tên: <input type="text" name="ten"/>--%>
<%--    <br/>--%>
<%--    Tuổi: <input type="text" name="tuoi"/>--%>
<%--    <br/>--%>
<%--    Địa chỉ: <input type="text" name="diaChi"/>--%>
<%--    <br/>--%>
<%--    Giới tính:--%>
<%--    <input type="radio" name="gioiTinh" checked value="true"/>Nam--%>
<%--    <input type="radio" name="gioiTinh" value="false"/>Nữ--%>
<%--    <br/>--%>
<%--    <button type="submit">Add</button>--%>
<%--</form>--%>
</body>
</html>
