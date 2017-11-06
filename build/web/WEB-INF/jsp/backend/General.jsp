<%-- 
    Document   : General
    Created on : Nov 6, 2017, 2:07:43 PM
    Author     : mk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="modelDAO.usersDAO"%>

<div class="col-md-3">
    <div class="list-group">
        <a href="index.html" class="list-group-item active main-color-bg">
            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Dashboard
        </a>
        <a href="${pageContext.request.contextPath}/posts.html" class="list-group-item">
            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Posts <span class="badge">33</span>
        </a>
        <a href="${pageContext.request.contextPath}/users.html" class="list-group-item">
            <span class="glyphicon glyphicon-user" aria-hidden="true"></span> Users <span class="badge">${numberUser}</span>
        </a>
        <a href="${pageContext.request.contextPath}/tags.html" class="list-group-item">
            <span class="glyphicon glyphicon-tag" aria-hidden="true"></span> Tags <span class="badge">15</span>
        </a>
        <a href="${pageContext.request.contextPath}/comments.html" class="list-group-item">
            <span class="glyphicon glyphicon-comment" aria-hidden="true"></span> Comments <span class="badge">203</span>
        </a>
        <a href="${pageContext.request.contextPath}/roles.html" class="list-group-item">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> Roles <span class="badge">2</span>
        </a>
        <a href="${pageContext.request.contextPath}/messages.html" class="list-group-item">
            <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Messages <span class="badge">2</span>
        </a>
    </div>

    
</div>


