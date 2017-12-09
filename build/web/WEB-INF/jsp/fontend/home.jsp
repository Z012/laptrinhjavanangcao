<%-- 
    Document   : home
    Created on : Nov 5, 2017, 9:15:08 PM
    Author     : mk
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>

<p:fontend title="Home">
    <jsp:attribute name="content">
        <div class="about">
            <div class="container">
                <div class="about-main">

                    <div class="col-md-8 about-left">
                        <c:forEach var="post" items="${dsBaiViet}">
                            <div class="about-one">
                                <h3>${post.getTitle()}</h3>
                            </div>
                            <div class="about-two">
                                <p>Đăng bởi <a href="#">${post.getUsers().getUsername()}</a> vào <fmt:formatDate value="${post.getDateModified()}" pattern="yyyy-MM-dd" /> <a href="#">  Bình luận (3)</a></p>
                                <p>${post.getDescription()}</p>
                                <div class="about-btn">
                                    <a href="${pageContext.request.contextPath}/posts/<c:out value="${post.getId()}"/>/single.html">Đọc tiếp </a>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <br>
                            <br>
                        </c:forEach>
                    </div>

                    <div class="col-md-4 about-right heading">
                        <div class="abt-1">
                            <h3>Về chúng tôi</h3>
                            <div class="abt-one">
                                <img src="${pageContext.request.contextPath}/templates/images/team.jpeg" alt="" />
                                <p>Quisque non tellus vitae mauris luctus aliquam sit amet id velit. Mauris ut dapibus nulla, a dictum neque.</p>
                                <div class="a-btn">
                                    <a href="${pageContext.request.contextPath}/home/about.html">Đọc tiếp </a>
                                </div>
                            </div>
                        </div>

                        <div class="abt-2">
                            <h3>Có thể bạn cũng thích</h3>
                            <ul>
                                <c:forEach var="baiviet" items="${dsBaiViet}">
                                    <li><a href="${pageContext.request.contextPath}/posts/<c:out value="${baiviet.getId()}"/>/single.html">${baiviet.getTitle()}</a> </li>
                                    </c:forEach>
                            </ul>	
                        </div>
                        <div class="abt-2">
                            <h3>Tin tức </h3>
                            <div class="news">
                                <form method="POST" action="#">
                                    <input type="text" placeholder="Email" name="email"/>
                                    <input type="submit" value="Đăng ký">
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>	
                </div>
            </div>		
        </div>
        <!--about-end-->


       

    </jsp:attribute>
</p:fontend>

