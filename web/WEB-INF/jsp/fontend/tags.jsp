<%-- 
    Document   : posts
    Created on : Nov 5, 2017, 9:21:37 PM
    Author     : mk
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>

<p:fontend title="Tags">
    <jsp:attribute name="content">

        <div class="container-fluid" style="margin-top: 15px">
            <div class="row">
                <div class="col-md-offset-1 col-md-2">
                    <%@include file="CategoryTags.jsp" %>
                </div>
                <div class="col-md-7 col-lg-offset-1 about-left ">
                    <div class="about-main">
                        <c:forEach var="post" items="${dsBaiViet}">
                            <div class="about-one">
                                <h3>${post.getTitle()}</h3>
                            </div>
                            <div class="about-two">
                                <p>Posted by <a href="#">MrK Cuong </a> on <fmt:formatDate value="${post.getDateModified()}" pattern="yyyy-MM-dd" /> <a href="#">comments(2)</a></p>
                                <p>${post.getDescription()}</p>
                                <div class="about-btn">
                                    <a href="${pageContext.request.contextPath}/posts/${post.getId()}/single.html">Đọc tiếp </a>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <br>
                            <br>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>


    </jsp:attribute>
</p:fontend>