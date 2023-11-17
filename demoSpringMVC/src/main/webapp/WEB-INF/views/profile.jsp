<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nhi
  Date: 16/11/2023
  Time: 14:05
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

<h1 class="text-center">Show Profile</h1>
<form class="row g-3">
    <div class="col-md-6">
        <label for="name" class="form-label">Name:</label>
        <input type="text" class="form-control" id="name" name="name" readonly value="${person.name}">
    </div>
    <div class="col-md-6">
        <label for="age" class="form-label">Age:</label>
        <input type="number" class="form-control" id="age" name="age" readonly value="${person.age}">
    </div>
    <div class="col-12">
        <label for="address" class="form-label">Address:</label>
        <input type="text" class="form-control" id="address" name="address" readonly value="${person.address}">
    </div>
    <div class="col-12">
        <label for="gender" class="form-label">Gender:</label>
        <input type="text" class="form-control" id="gender" name="gender" readonly
               value="${(person.gender)?'Male':'Female'}">
    </div>
</form>



<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</body>
</html>
