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
<table class="table">
    <thead>
    <tr>
        <th>Họ Tên</th>
        <th>SDT</th>
        <th>FB</th>
        <th>Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td scope="row">${name}</td>
        <td>${sdt}</td>
        <td><a href="https://vi-vn.facebook.com/dohuunguyen2003/">Đỗ Hữu Nguyện</a></td>
        <td><img style="border-radius:20px; height: 100px; width: 70px "
                 src="https://scontent.fhan14-1.fna.fbcdn.net/v/t39.30808-6/306797142_851975582841347_1245401368294703159_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=LLuS5EBDyOoAX-PuCk4&_nc_oc=AQkLLuo29TnKKeicCSJ5fw_u9M6tNPVgw6PEUjOVsh_ppk_I30vH0tn-yvAO_v9o_kg&_nc_ht=scontent.fhan14-1.fna&oh=00_AfC1TSgpszjg_ykGSW8VvEg2tNYPN2XmtRxkkfyrtBF1GQ&oe=6461ED02">
        </td>
    </tr>
    </tbody>
</table>
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