<%-- 
    Document   : message
    Created on : Nov 5, 2017, 10:41:43 PM
    Author     : mk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>
<p:backend title="Trang chủ quản lý tin nhan" >
    <jsp:attribute name="contentAD">
        
        <header id="header">
            <div class="row">
                <div class="col-md-12">
                    <h1>   <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Quản lý tin nhắn </h1>
                </div>
            </div>
        </header>

        <section id="breadcrumb">
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/admin/index.html">Trang chủ</a></li>
                <li class="active">Tin nhắn</li>
            </ol>
        </section>

        <section id="main">
            <div class="row">

                <%@include file="General.jsp" %>

                <div class="col-md-9">
                    <!-- Website Overview -->
                    <div class="panel panel-default">
                        <div class="panel-heading main-color-bg">
                            <h3 class="panel-title">Danh sách tin nhắn</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row" style="margin-top: 5px">
                                <div class="col-md-12">
                                    <form action="${pageContext.request.contextPath}/messages/search-messages.html" method="POST">
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
                                </tr>
                                <c:forEach var="mss" items="${lsMss}">
                                    <tr>
                                        <td>${mss.getId()}</td>
                                        <td>${mss.getContent()}</td>
                                        <td>${mss.getUsers().getUsername()}</td>
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
