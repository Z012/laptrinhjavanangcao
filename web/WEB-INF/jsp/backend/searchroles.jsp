<%-- 
    Document   : searchroles
    Created on : Dec 5, 2017, 11:48:34 AM
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
                    <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Roles </h1>
                </div>
                <div class="col-md-2">
                    <div class="dropdown create">
                        <a class="btn btn-default" href="${pageContext.request.contextPath}/roles/addrole.html">
                            Create Role                           
                        </a>

                    </div>
                </div>
            </div>

        </header>

        <section id="breadcrumb">

            <ol class="breadcrumb">
                <li><a href="index.html">Dashboard</a></li>
                <li class="active">Roles</li>
            </ol>

        </section>

        <section id="main">

            <div class="row">

                <%@include file="General.jsp" %>

                <div class="col-md-9">
                    <!-- Website Overview -->
                    <div class="panel panel-default">
                        <div class="panel-heading main-color-bg">
                            <h3 class="panel-title">Search: ${name}</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <c:if var="loi" test="${loi}">
                                    <div class="alert alert-danger alert-dismissable">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                        <strong>Error!</strong>${loi}
                                    </div>
                                </c:if>
                                <c:if var="thongbao" test="${thongbao}">
                                    <div class="alert alert-success alert-dismissable">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                        <strong>Success!</strong>${thongbao}.
                                    </div>
                                </c:if>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <form action="${pageContext.request.contextPath}/roles/search-roles.html" method="POST">
                                        <input class="form-control" type="text" placeholder="Search ..." name="name">
                                    </form>
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
                                            <a class="btn btn-default" href="${pageContext.request.contextPath}/roles/${role.getId()}/edit-role.html"><span class="glyphicon glyphicon-pencil"></span></a> 
                                            <a class="btn btn-danger" href="${pageContext.request.contextPath}/roles/${role.getId()}/delete-role.html"><span class="glyphicon glyphicon-trash"></span></a>
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
