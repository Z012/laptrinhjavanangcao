<%-- 
    Document   : role
    Created on : Nov 6, 2017, 2:20:00 PM
    Author     : mk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>
<p:backend title="Trang chủ quản lý quyen" >
    <jsp:attribute name="contentAD">

        <header id="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-10">
                        <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Roles <small>Manage Site Users</small></h1>
                    </div>
                    <div class="col-md-2">
                        <div class="dropdown create">
                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                Create Content
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                <li><a type="button" data-toggle="modal" data-target="#addPage">Add Page</a></li>
                                <li><a href="#">Add Post</a></li>
                                <li><a href="#">Add User</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <section id="breadcrumb">
            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="index.html">Dashboard</a></li>
                    <li class="active">Roles</li>
                </ol>
            </div>
        </section>

        <section id="main">
            <div class="container">
                <div class="row">

                    <%@include file="General.jsp" %>

                    <div class="col-md-9">
                        <!-- Website Overview -->
                        <div class="panel panel-default">
                            <div class="panel-heading main-color-bg">
                                <h3 class="panel-title">Roles</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <input class="form-control" type="text" placeholder="Filter Posts...">
                                    </div>
                                </div>
                                <br>
                                <table class="table table-striped table-hover">
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Description</th>
                                        <th></th>
                                    </tr>
                                    <c:forEach items="${lsRole}" var="role">
                                        <tr>
                                            <td>${role.getId()}</td>
                                            <td>${role.getName()}</td>
                                            <td>${role.getDescription()}</td>
                                            <td>
                                                <a class="btn btn-default disabled" href="edit.html"><span class="glyphicon glyphicon-pencil"></span></a> 
                                                <a class="btn btn-danger disabled" href="#"><span class="glyphicon glyphicon-trash"></span></a>
                                            </td>
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