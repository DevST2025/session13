<%--
  Created by IntelliJ IDEA.
  User: nhi
  Date: 16/11/2023
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<jsp:include page="//WEB-INF/assets/navbar.jsp">
    <jsp:param name="name" value="${name}"/>
</jsp:include>
<h1>Home</h1>
<h1 class="text-center">Input Profile</h1>
<form class="row g-3" action="/navbar/profile" method="post">
    <div class="col-md-6">
        <label for="name" class="form-label">Name:</label>
        <input type="text" class="form-control" id="name" name="name">
    </div>
    <div class="col-md-6">
        <label for="age" class="form-label">Age:</label>
        <input type="number" class="form-control" id="age" name="age">
    </div>
    <div class="col-12">
        <label for="address" class="form-label">Address:</label>
        <input type="text" class="form-control" id="address" name="address">
    </div>
    <div class="col-12">
        <label for="gender" class="form-label">Gender:</label>
        <select id="gender" class="form-select" name="gender">
            <option selected value="true">Male</option>
            <option value="false">Female</option>
        </select>
    </div>
    <div class="col-12">
        <button type="submit" class="btn btn-primary">Show profile</button>
    </div>
</form>
<br>
<br>
<div class="container-fluid">
    <form action="/navbar/result" method="POST">
        <div class="col-12">
            <label for="vocabulary" class="form-label">Vocabulary:</label>
            <input type="text" class="form-control" id="vocabulary" name="vocabulary" value="${vocabulary}">
        </div>
        <div class="col-12">
            <button type="submit" class="btn btn-primary">Translate</button>
        </div>
    </form>
</div>

<p>${result}</p>
<br>
<br>

<div class="container-fluid">
    <form action="/navbar/convert" method="POST">
        <div class="col-12">
            <label for="usd" class="form-label">USD:</label>
            <input type="text" class="form-control" id="usd" name="usd" value="${usd}">
        </div>
        <div class="col-12">
            <button type="submit" class="btn btn-primary">Convert</button>
        </div>
    </form>
</div>

<p>${vnd}</p>
<br>
<br>

<div class="container-fluid">
    <form action="/navbar/cal" method="POST">
        <div class="col-12">
            <label for="num1" class="form-label">First number:</label>
            <input type="text" class="form-control" id="num1" name="num1" value="${num1}">
        </div>
        <div class="col-12">
            <label for="op" class="form-label">Operation:</label>
            <select id="op" class="form-select" name="op">
                <option ${op=='add'?'selected':''} value="add">+</option>
                <option ${op=='minus'?'selected':''} value="minus">-</option>
                <option ${op=='multi'?'selected':''} value="multi">*</option>
                <option ${op=='div'?'selected':''} value="div">/</option>
            </select>
        </div>
        <div class="col-12">
            <label for="num2" class="form-label">Second number:</label>
            <input type="text" class="form-control" id="num2" name="num2" value="${num2}">
        </div>
        <div class="col-12">
            <button type="submit" class="btn btn-primary">Cal</button>
        </div>
    </form>
</div>

<p>Result:  ${rs}</p>
<br>
<br>




<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</body>
</html>
