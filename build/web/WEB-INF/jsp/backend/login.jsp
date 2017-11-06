<%-- 
    Document   : login
    Created on : Nov 5, 2017, 10:40:53 PM
    Author     : mk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>
<p:backend title="Dang nhap" >
    <jsp:attribute name="contentAD">

        <header id="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="text-center"> Admin Area <small>Account Login</small></h1>
                    </div>
                </div>
            </div>
        </header>

        <section id="main">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <form id="login" action="index.html" class="well">
                            <div class="form-group">
                                <label>Email Address</label>
                                <input type="text" class="form-control" placeholder="Enter Email">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" placeholder="Password">
                            </div>
                            <button type="submit" class="btn btn-default btn-block">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>

    </jsp:attribute>
</p:backend>
