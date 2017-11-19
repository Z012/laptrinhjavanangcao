<%-- 
    Document   : posts
    Created on : Nov 5, 2017, 9:30:13 PM
    Author     : mk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>



<p:backend title="Trang chủ quản lý bai viet" >
    <jsp:attribute name="contentAD">

        <header id="header">

                <div class="row">
                    <div class="col-md-10">
                        <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Posts </h1>
                    </div>
                    <div class="col-md-2">
                        <div class="dropdown create">
                            <a href="${pageContext.request.contextPath}/posts/addpost.html" class="btn btn-default" type="button">
                                Create Post 
                            </a>
                        </div>
                    </div>
                </div>

        </header>

        <section id="breadcrumb">

                <ol class="breadcrumb">
                    <li><a href="index.html">Dashboard</a></li>
                    <li class="active">Posts</li>
                </ol>
        </section>

        <section id="main">

                <div class="row">

                    <%@include file="General.jsp" %>

                    <div class="col-md-9">
                        <!-- Website Overview -->
                        <div class="panel panel-default">
                            <div class="panel-heading main-color-bg">
                                <h3 class="panel-title">Posts</h3>
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
                                        <th>Title</th>
                                        <th>Published</th>
                                        <th>Created</th>
                                        <th></th>
                                    </tr>
                                    <c:forEach var="post" items="${lsPost}">
                                        <tr>
                                            <td>${post.getTitle()}</td>
                                            <td>
                                                <c:if test="${post.getStatus() == 1}">
                                                    <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                                                </c:if>
                                                <c:if test="${post.getStatus() != 1}">
                                                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                                                </c:if>
                                            </td>
                                            <td>${post.getDateModified()}</td>
                                            <td>
                                                <a class="btn btn-default " href="edit.html"><span class="glyphicon glyphicon-pencil"></span></a> 
                                                <a class="btn btn-danger" href="#"><span class="glyphicon glyphicon-trash"></span></a>
                                            </td>
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