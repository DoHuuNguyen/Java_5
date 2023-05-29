<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table>
    <form action="">
        Tên: <input name="ten"/>
        <button type="submit">Search</button>
    </form>
    <br/>
    <button><a href="/sinh-vien/view-add">Add Student</a></button>
    <tr>
        <th>STT</th>
        <th>ID</th>
        <th>Code</th>
        <th>Name</th>

        <th colspan="2">Action</th>
    </tr>
    </thead>
    <tbody>
    <%--    for(SinhVien sv: list)--%>
    <c:forEach items="${list}" var="cate" >
        <tr>
            <td>${cate.ID}</td>
            <td>${cate.name}</td>
            <td>${cate.code}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
