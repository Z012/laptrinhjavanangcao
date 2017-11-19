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
                                    <input class="form-control" type="text" placeholder="Filter Users...">
                                </div>
                            </div>
                            <br>
                            <table class="table table-striped table-hover">
                                <tr>
                                    <th>Post Id</th>
                                    <th>User Id</th>
                                    <th>Date Create</th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td>Jill Smith</td>
                                    <td>jillsmith@gmail.com</td>
                                    <td>Dec 12, 2016</td>
                                    <td><a class="btn btn-default" href="edit.html">Edit</a> <a class="btn btn-danger" href="#">Delete</a></td>
                                </tr>
                                <tr>
                                    <td>Eve Jackson</td>
                                    <td>ejackson@yahoo.com</td>
                                    <td>Dec 13, 2016</td>
                                    <td><a class="btn btn-default" href="edit.html">Edit</a> <a class="btn btn-danger" href="#">Delete</a></td>
                                </tr>
                                <tr>
                                    <td>Stephanie Landon</td>
                                    <td>landon@yahoo.com</td>
                                    <td>Dec 14, 2016</td>
                                    <td><a class="btn btn-default" href="edit.html">Edit</a> <a class="btn btn-danger" href="#">Delete</a></td>
                                </tr>
                                <tr>
                                    <td>Mike Johnson</td>
                                    <td>mjohnson@gmail.com</td>
                                    <td>Dec 15, 2016</td>
                                    <td><a class="btn btn-default" href="edit.html">Edit</a> <a class="btn btn-danger" href="#">Delete</a></td>
                                </tr>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </section>

    </jsp:attribute>
</p:backend>

