<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">THS</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link ${param.name=='home'?'active':''}" href="/navbar/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${param.name=='product'?'active':''}" href="/navbar/product">Product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${param.name=='about'?'active':''}" href="/navbar/about">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${param.name=='profile'?'active':''}" href="/navbar/profile">Profile</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
