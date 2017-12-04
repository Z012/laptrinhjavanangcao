<%-- 
    Document   : tags
    Created on : Nov 5, 2017, 9:30:36 PM
    Author     : mk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>

<p:backend title="Trang chủ quản lý the" >
    <jsp:attribute name="contentAD">

        <header id="header">

                <div class="row">
                    <div class="col-md-10">
                        <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Tags </h1>
                    </div>
                    <div class="col-md-2">
                        <div class="dropdown create">
                            <a class="btn btn-default" href="${pageContext.request.contextPath}/tags/addtag.html">
                                Create Tag                               
                            </a>                           
                        </div>
                    </div>
                </div>

        </header>

        <section id="breadcrumb">

                <ol class="breadcrumb">
                    <li><a href="index.html">Dashboard</a></li>
                    <li class="active">Tags</li>
                </ol>

        </section>

        <section id="main">

                <div class="row">

                    <%@include file="General.jsp" %>

                    <div class="col-md-9">
                        <!-- Website Overview -->
                        <div class="panel panel-default">
                            <div class="panel-heading main-color-bg">
                                <h3 class="panel-title">Tags</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <c:if test="${loi != null}">
                                        <div class="alert alert-danger alert-dismissable">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            <strong>Error!</strong>${loi}
                                        </div>
                                    </c:if>
                                    <c:if test="${thongbao != null}">
                                        <div class="alert alert-success alert-dismissable">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            <strong>Success!</strong>${thongbao}.
                                        </div>
                                    </c:if>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input class="form-control" type="text" placeholder="Filter Users...">
                                    </div>
                                </div>
                                <br>
                                <table class="table table-striped table-hover">
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Quantity</th>
                                        
                                        <th></th>
                                    </tr>
                                    <c:forEach items="${dsTags}" var="Tag">
                                        <tr>
                                            <td>${Tag.getId()}</td>
                                            <td>${Tag.getName()}</td>
                                            <td>${Tag.getNumber()}</td>
                                            <td>
                                                <a class="btn btn-default" href="${pageContext.request.contextPath}/tags/${Tag.getId()}/edit-tags.html"><span class="glyphicon glyphicon-pencil"></span></a> 
                                                <a class="btn btn-danger" href="${pageContext.request.contextPath}/tags/${Tag.getId()}/delete-tags.html"><span class="glyphicon glyphicon-trash"></span></a>
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
