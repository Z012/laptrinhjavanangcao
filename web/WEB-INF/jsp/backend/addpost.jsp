<%-- 
    Document   : addpost
    Created on : Nov 19, 2017, 8:59:44 AM
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
                    <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Posts </h1>
                </div>
                <div class="col-md-2">
                    <div class="dropdown create">
                        <button class="btn btn-default" type="button">
                            Create Post
                        </button>
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
                    <form method="POST" action="${pageContext.request.contextPath}/posts/store.html">
                        <div class="header">
                            <h2>Add Page</h2>
                        </div>
                        <div class="body">
                            <div class="form-group">
                                <label>Title</label>
                                <input type="text" class="form-control" placeholder="Title" name="title" required>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea class="form-control" rows="3" placeholder="Description..." name="description" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Content</label>
                                <textarea id="editor1" class="form-control" placeholder="Content" name="content" required></textarea>
                            </div>
                            <button class="btn btn-info" type="submit">Create</button>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </jsp:attribute>
</p:backend>
