<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/giang-vien/add" method="post">
    <label style="color: red">${thongBaoId}</label>
    <label style="color: red">${thongBaoMa}</label>
    <label style="color: red">${thongBaoTen}</label>
    <label style="color: red">${thongBaoTuoi}</label>
    <label style="color: red">${thongBaoDiaChi}</label>
    <br>
    Id: <input type="text" name="id"/>
    <br/>
    Ma: <input type="text" name="ma"/>
    <br/>
    Tên: <input type="text" name="ten"/>
    <br/>
    Tuổi: <input type="text" name="tuoi"/>
    <br/>
    Địa chỉ: <input type="text" name="diaChi"/>
    <br/>
    Giới tính:
    <input type="radio" name="gioiTinh" checked value="true"/>Nam
    <input type="radio" name="gioiTinh" value="false"/>Nữ
    <br/>
    <button type="submit">Add</button>
</form>
</body>
</html>
