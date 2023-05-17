<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <title>Title</title>
</head>
<body>
            Id: ${gv.id}
<br>
            Ma: ${gv.ma}
<br/>
            Ten: ${gv.ten}
<br/>
            Tuoi: ${gv.tuoi}
<br/>
            Gioi tinh: <c:if test="${gv.gioiTinh ==false}">Nữ</c:if>
                        <c:if test="${gv.gioiTinh ==true}">Nam</c:if>
<br/>
            Dia chi:${gv.diaChi}
</body>
</html>