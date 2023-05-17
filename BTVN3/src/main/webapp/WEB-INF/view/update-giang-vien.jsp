<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/giang-vien/update/${gv.id}" method="post">
    <label style="color: red">${thongBaoId}</label>
    <label style="color: red">${thongBaoMa}</label>
    <label style="color: red">${thongBaoTen}</label>
    <label style="color: red">${thongBaoTuoi}</label>
    <label style="color: red">${thongBaoDiaChi}</label>
    ID: <input type="text" name="id"  value="${gv.id}" disabled/>
    <br>
    Mã: <input type="text" name="ma"  value="${gv.ma}"/>
    <br/>
    Tên: <input type="text" name="ten" value="${gv.ten}"/>
    <br/>
    Tuổi: <input type="text" name="tuoi" value="${gv.tuoi}"/>
    <br/>
    Địa chỉ: <input type="text" name="diaChi" value="${gv.diaChi}"/>
    <br/>
    Giới tính:
    <input type="radio" name="gioiTinh" value="true" ${gv.gioiTinh == true ? "checked" : ""} />Nam
    <input type="radio" name="gioiTinh" value="false" ${gv.gioiTinh == false ? "checked" : ""}/>Nữ
    <br/>
    <button>Update</button>
</form>

</body>
</html>