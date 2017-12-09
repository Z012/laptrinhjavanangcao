<%-- 
    Document   : editpost
    Created on : Nov 5, 2017, 9:31:38 PM
    Author     : mk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>
<p:backend title="Trang sua bai viet" >
    <jsp:attribute name="contentAD">
        <header id="header">
            <div class="row">
                <div class="col-md-10">
                    <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Bài viết </h1>
                </div>
                <div class="col-md-2">
                    <div class="dropdown create">
                        <button class="btn btn-default" type="button">
                            Cập nhật bài viết
                        </button>
                    </div>
                </div>
            </div>
        </header>

        <section id="breadcrumb">
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/admin/index.html">Trang chủ</a></li>
                <li class="active">Bài viết</li>
            </ol>
        </section>

        <section id="main">
            <div class="row">
                <%@include file="General.jsp" %>
                <div class="col-md-9">
                    <form method="POST" action="${pageContext.request.contextPath}/posts/${post.getId()}/update-post.html">
                        <div class="header">
                            <h2>Cập nhật bài viết </h2>
                        </div>
                        <div class="body">
                            <div class="form-group">
                                <label>Tiêu đề</label>
                                <input type="text" class="form-control" placeholder="Title" name="title" required value="${post.getTitle()}">
                            </div>
                            <div class="form-group">
                                <label>Mô tả </label>
                                <textarea class="form-control" rows="3" placeholder="Description..." name="description" required>${post.getDescription()}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Nội dung </label>
                                <textarea id="editor1" class="form-control" placeholder="Content" name="content" required>${post.getContent()}</textarea>
                            </div>
                            <button class="btn btn-info" type="submit">Cập nhật</button>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        
        
    </jsp:attribute>
</p:backend>
