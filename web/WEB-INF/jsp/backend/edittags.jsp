<%-- 
    Document   : edittags
    Created on : Nov 5, 2017, 9:31:50 PM
    Author     : mk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>
<p:backend title="Trang sua the" >
    <jsp:attribute name="contentAD">
        
        <header id="header">
            <div class="row">
                <div class="col-md-10">
                    <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Danh sách thẻ </h1>
                </div>
                <div class="col-md-2">
                    <div class="dropdown create">
                        <button class="btn btn-default" type="button">
                            Cập nhật thẻ
                        </button>
                    </div>
                </div>
            </div>
        </header>

        <section id="breadcrumb">
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/admin/index.html">Trang chủ</a></li>
                <li class="active">Thẻ</li>
            </ol>
        </section>

        <section id="main">
            <div class="row">

                <%@include file="General.jsp" %>

                <div class="col-md-9">
                    <form method="POST" action="${pageContext.request.contextPath}/tags/${tag.getId()}/update-tags.html">
                        <div class="header">
                            <h2>Cập nhật thẻ</h2>
                        </div>
                        <div class="body">
                            <div class="form-group">
                                <label>Tên thẻ</label>
                                <input value="${tag.getName()}" type="text" class="form-control" placeholder="Title" name="title" required>
                            </div>
                            <button class="btn btn-info" type="submit" >Cập nhật</button>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        
    </jsp:attribute>
</p:backend>
