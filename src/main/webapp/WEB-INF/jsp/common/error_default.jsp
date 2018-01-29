<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ include file="includejs.jsp" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Error Page</title>
    <link href="<%=contextPath %>/css/error-style.css" rel="stylesheet">
    <style>
        body {
            padding-top: 60px;
        }
    </style>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="brand" href="#">Application Admin</a>

            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li class="active"><a href="#">App列表</a></li>
                    <li><a href="#about">关于我们</a></li>
                    <li><a href="#contact">联系我们</a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>
<div class="container">
    <div class="bs-docs-example">
        <div class="alert alert-error">
            <h4><strong>Error:The bad request ...</strong></h4>
            <div style="padding-top: 5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Best check yo self, you're not looking too good</div>
        </div>
    </div>
</div>
</body>
</html>
