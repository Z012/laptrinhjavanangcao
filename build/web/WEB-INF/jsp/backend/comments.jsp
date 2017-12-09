<%-- 
    Document   : comment
    Created on : Nov 5, 2017, 9:31:03 PM
    Author     : mk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>
<p:backend title="Trang chủ quản lý binh luan" >
    <jsp:attribute name="contentAD">

        <header id="header">
            <div class="row">
                <div class="col-md-12">
                    <h1>   <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Comments </h1>
                </div>
            </div>
        </header>

        <section id="breadcrumb">
            <ol class="breadcrumb">
                <li><a href="index.html">Dashboard</a></li>
                <li class="active">Comments</li>
            </ol>
        </section>

        <section id="main">
            <div class="row">

                <%@include file="General.jsp" %>

                <div class="col-md-9">
                    <!-- Website Overview -->
                    <div class="panel panel-default">
                        <div class="panel-heading main-color-bg">
                            <h3 class="panel-title">Comments</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <a class="btn btn-danger" href="${pageContext.request.contextPath}/comments/selective-comments.html">Selective</a> 
                                </div>
                            </div>
                            <div class="row" style="margin-top: 5px">
                                <div class="col-md-12">
                                    <form action="${pageContext.request.contextPath}/comments/search-comments.html" method="POST">
                                        <input class="form-control" type="text" name="search" placeholder="Search ...">
                                    </form>
                                </div>
                            </div>
                            <br>
                            <table class="table table-striped table-hover">
                                <tr>
                                    <th>Id</th>
                                    <th>Nội dung</th>
                                    <th>Người tạo</th>
                                    <th>Bài viết </th>
                                    <th>Ngày tạo </th>
                                </tr>
                                <c:forEach var="cm" items="${lsCm}">
                                    <tr>
                                        <td>${cm.getId()}</td>
                                        <td>${cm.getContent()}</td>
                                        <td>${cm.getUsers().getUsername()}</td>
                                        <td>${cm.getPost().getTitle()}</td>
                                        <td>${cm.getDateCreated()}</td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </section>

    </jsp:attribute>
</p:backend>

