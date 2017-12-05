<%-- 
    Document   : users
    Created on : Nov 5, 2017, 9:30:22 PM
    Author     : mk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>

<p:backend title="Trang quan ly nguoi dung" >
    <jsp:attribute name="contentAD">

        <header id="header">
            <div class="row">
                <div class="col-md-12">
                    <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Users </h1>
                </div>

            </div>
        </header>

        <section id="breadcrumb">

            <ol class="breadcrumb">
                <li><a href="index.html">Dashboard</a></li>
                <li class="active">Users</li>
            </ol>

        </section>

        <section id="main">

            <div class="row">

                <%@include file="General.jsp" %>

                <div class="col-md-9">

                    <!-- Website Overview -->
                    <div class="panel panel-default">
                        <div class="panel-heading main-color-bg">
                            <h3 class="panel-title">Users</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <form action="${pageContext.request.contextPath}/users/search-users.html" method="POST">
                                        <input class="form-control" type="text" placeholder="Search ..." name="name">
                                    </form>
                                </div>
                            </div>
                            <br>
                            <table class="table table-striped table-hover">
                                <tr>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Joined</th>
                                    <th></th>
                                </tr>
                                <c:forEach var="user" items="${lsUser}">
                                    <tr>
                                        <td>${user.getUsername()}</td>
                                        <td>${user.getEmail()}</td>
                                        <td>${user.getDateCreated()}</td>
                                        <td>
                                            <a class="btn btn-danger disabled" href="#"><span class="glyphicon glyphicon-trash"></span></a>
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
