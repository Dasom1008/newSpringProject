<%--
  Created by IntelliJ IDEA.
  User: ulim
  Date: 2022-01-24
  Time: 오후 5:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>

    <style>
        .input{
            width: 80%;
            height: 40px;
            margin :5px;
        }
        .btn_login {
            display: block;
        }
        .basic_input{
            display: block;
            margin: 0 auto;
        }
    </style>

</head>
<body>
<fieldset style="width: 500px">
    <legend> LOG IN </legend> <br>
    <span class="basic_input"> ID </span>
    <input class="basic_input input" type="text">  <br>
    <span class="basic_input"> PW </span>
    <input class="basic_input input" type="password"><br>
    <input class="basic_input btn_login" type="button" value="로그인">
</fieldset>

<a href="/dbTest">데이터연결 테스트 </a>

</body>
</html>
