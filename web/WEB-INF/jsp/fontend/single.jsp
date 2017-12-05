<%-- 
    Document   : single
    Created on : Nov 5, 2017, 10:43:09 PM
    Author     : mk
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>
<p:fontend title="Single">
    <jsp:attribute name="content">

        <!--start-single-->
        <div class="single">
            <div class="container">
                <div class="single-top">
                    <div class=" single-grid">
                        <h4>${baiviet.getTitle()}</h4>				
                        <ul class="blog-ic">
                            <li><a href="#"><span> <i  class="glyphicon glyphicon-user"> </i>${baiviet.getUsers().getUsername()}</span> </a> </li>
                            <li><span><i class="glyphicon glyphicon-time"> </i> <fmt:formatDate value="${baiviet.getDateModified()}" pattern="yyyy-MM-dd" /></span></li>		  						 	
                            <li><span><i class="glyphicon glyphicon-eye-open"> </i>Hits:145</span></li>
                        </ul>		  						
                        <p>${baiviet.getContent()}</p>
                    </div>
                    <div class="comments heading">
                        <h3>Comments</h3>
                        <c:forEach items="${lsCm}" var="cm">
                        <div class="media">
                            <div class="media-body">
                                <h4 class="media-heading">${cm.getUsers().getUsername()}</h4>
                                <p>${cm.getContent()}</p>
                            </div>
                            <div class="media-right">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/templates/images/si.png" alt=""> </a>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                    <div class="comment-bottom heading">
                        <h3>Leave a Comment</h3>
                        <form method="POST" action="${pageContext.request.contextPath}/comments/${baiviet.getId()}/single.html">	
                            <input type="text" placeholder="Name" name="name">
                            <input type="text" placeholder="Email" name="email">
                            <textarea cols="77" rows="6" placeholder="Message" name="message"></textarea>
                            <input type="submit" value="Gui">
                        </form>
                    </div>
                </div>	
            </div>					
        </div>
        <!--end-single-->



    </jsp:attribute>
</p:fontend>
