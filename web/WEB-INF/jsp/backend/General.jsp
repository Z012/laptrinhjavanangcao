<%-- 
    Document   : General
    Created on : Nov 6, 2017, 2:07:43 PM
    Author     : mk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="modelDAO.*" %>
<%
    int numberPost = postsDAO.CountPost();
    int numberUser = usersDAO.CountUser();
    int numberTag = tagsDAO.CountTags();
    int numberComment = commentsDAO.CountComment();
    int numberRole = rolesDAO.CountRole();
    int numberMessage = messagesDAO.CountMessage();
%>

<div class="col-md-3">
    <div class="list-group">
        <a href="${pageContext.request.contextPath}/admin/index.html" class="list-group-item active main-color-bg">
            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Quản lý 
        </a>
        <a href="${pageContext.request.contextPath}/posts.html" class="list-group-item">
            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Bài viết <span class="badge"><%= numberPost %></span>
        </a>
        <a href="${pageContext.request.contextPath}/users.html" class="list-group-item">
            <span class="glyphicon glyphicon-user" aria-hidden="true"></span> Người dùng <span class="badge"><%= numberUser %></span>
        </a>
        <a href="${pageContext.request.contextPath}/tags.html" class="list-group-item">
            <span class="glyphicon glyphicon-tag" aria-hidden="true"></span> Thể <span class="badge"><%= numberTag %></span>
        </a>
        <a href="${pageContext.request.contextPath}/comments.html" class="list-group-item">
            <span class="glyphicon glyphicon-comment" aria-hidden="true"></span> Bình luận <span class="badge"><%= numberComment %></span>
        </a>
        <a href="${pageContext.request.contextPath}/roles.html" class="list-group-item">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> Quyền <span class="badge"><%= numberRole %></span>
        </a>
        <a href="${pageContext.request.contextPath}/messages.html" class="list-group-item">
            <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Tin nhắn <span class="badge"><%= numberMessage %></span>
        </a>
    </div>
</div>
