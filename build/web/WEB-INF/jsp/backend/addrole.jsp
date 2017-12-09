<%-- 
    Document   : addrole
    Created on : Nov 19, 2017, 8:59:58 AM
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
                        <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Quyền </h1>
                    </div>
                    <div class="col-md-2">
                        <div class="dropdown create">
                            <button class="btn btn-default" type="button">
                                Thêm quyền
                            </button>
                        </div>
                    </div>
                </div>
        </header>

        <section id="breadcrumb">
                <ol class="breadcrumb">
                    <li><a href="${pageContext.request.contextPath}/admin/index.html">Trang chủ </a></li>
                    <li class="active">Quyền</li>
                </ol>
        </section>

        <section id="main">
                <div class="row">

                    <%@include file="General.jsp" %>

                    <div class="col-md-9">
                        <form method="POST" action="${pageContext.request.contextPath}/roles/store.html">
                            <div class="header">
                                <h2>Thêm quyền </h2>
                            </div>
                            <div class="body">
                                <div class="form-group">
                                    <label>Tên quyền</label>
                                    <input type="text" class="form-control" placeholder="Name" name="name">
                                </div>
                                <div class="form-group">
                                    <label>Mô tả </label>
                                    <textarea type="text" class="form-control" placeholder="Description" name="description" rows="3"></textarea>
                                </div>
                                <button class="btn btn-info" >Tạo mới</button>
                            </div>
                        </form>
                    </div>
                </div>
        </section>

    </jsp:attribute>
</p:backend>
