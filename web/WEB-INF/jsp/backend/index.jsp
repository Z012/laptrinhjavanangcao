<%-- 
    Document   : index
    Created on : Nov 5, 2017, 9:28:46 PM
    Author     : mk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>

<%--<%@page import="modelDAO.tagsDAO"%>
<%@page import="modelDAO.usersDAO" %>

<%
    Long numberUser = usersDAO.CountUser();
    Long numberTag = tagsDAO.CountTags();  
%>--%>

<p:backend title="Trang chủ quản lý" >
    <jsp:attribute name="contentAD">

        <header id="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-10">
                        <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Dashboard <small>Manage Your Site</small></h1>
                    </div>
                    <div class="col-md-2">
                        <div class="dropdown create">
                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                Create Content
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                <li><a type="button" data-toggle="modal" data-target="#addPage">Add Post</a></li>
                                <li><a href="#">Add Tags</a></li>
                                <li><a href="#">Add Role</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <section id="breadcrumb">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="active">Dashboard</li>
                </ol>
            </div>
        </section>

        <section id="main">
            <div class="container">
                <div class="row">

                    <div class="col-md-3">
                        <div class="list-group">
                            <a href="index.html" class="list-group-item active main-color-bg">
                                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Dashboard
                            </a>
                            <a href="${pageContext.request.contextPath}/posts.html" class="list-group-item">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Posts <span class="badge">${numberPost}</span>
                            </a>
                            <a href="${pageContext.request.contextPath}/users.html" class="list-group-item">
                                <span class="glyphicon glyphicon-user" aria-hidden="true"></span> Users <span class="badge">${numberUser}</span>
                            </a>
                            <a href="${pageContext.request.contextPath}/tags.html" class="list-group-item">
                                <span class="glyphicon glyphicon-tag" aria-hidden="true"></span> Tags <span class="badge">${numberTag}</span>
                            </a>
                            <a href="${pageContext.request.contextPath}/comments.html" class="list-group-item">
                                <span class="glyphicon glyphicon-comment" aria-hidden="true"></span> Comments <span class="badge">${numberComment}</span>
                            </a>
                            <a href="${pageContext.request.contextPath}/roles.html" class="list-group-item">
                                <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> Roles <span class="badge">${numberRole}</span>
                            </a>
                            <a href="${pageContext.request.contextPath}/messages.html" class="list-group-item">
                                <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Messages <span class="badge">${numberMessage}</span>
                            </a>
                        </div>
                    </div>


                    <div class="col-md-9">
                        <!-- Website Overview -->
                        <div class="panel panel-default">
                            <div class="panel-heading main-color-bg">
                                <h3 class="panel-title">Website Overview</h3>
                            </div>
                            <div class="panel-body">
                                <div class="col-md-3">
                                    <div class="well dash-box">
                                        <h2><span class="glyphicon glyphicon-user" aria-hidden="true"></span> 20</h2>
                                        <h4>Users</h4>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="well dash-box">
                                        <h2><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> 12</h2>
                                        <h4>Messages</h4>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="well dash-box">
                                        <h2><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> 33</h2>
                                        <h4>Posts</h4>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="well dash-box">
                                        <h2><span class="glyphicon glyphicon-stats" aria-hidden="true"></span> 12,334</h2>
                                        <h4>Visitors</h4>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Latest Users -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Latest Users</h3>
                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-hover">
                                    <tr>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Joined</th>
                                    </tr>
                                    <c:forEach var="User" items="${lsUser}">
                                        <tr>
                                            <td>${User.getUsername()}</td>
                                            <td>${User.getEmail()}</td>
                                            <td>${User.getDateCreated()}</td>
                                        </tr>
                                    </c:forEach>

                                    
                                </table>
                            </div>
                        </div>
                    </div>




                </div>
            </div>
        </section>

    </jsp:attribute>
</p:backend>
