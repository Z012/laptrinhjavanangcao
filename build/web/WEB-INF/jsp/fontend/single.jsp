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
                            <li><a href="#"><span> <i  class="glyphicon glyphicon-user"> </i>Super user</span> </a> </li>
                            <li><span><i class="glyphicon glyphicon-time"> </i> <fmt:formatDate value="${baiviet.getDateModified()}" pattern="yyyy-MM-dd" /></span></li>		  						 	
                            <li><span><i class="glyphicon glyphicon-eye-open"> </i>Hits:145</span></li>
                        </ul>		  						
                        <p>${baiviet.getContent()}</p>
                    </div>
                    <div class="comments heading">
                        <h3>Comments</h3>
                        <div class="media">
                            <div class="media-body">
                                <h4 class="media-heading">	Richard Spark</h4>
                                <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs .  </p>
                            </div>
                            <div class="media-right">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/templates/images/si.png" alt=""> </a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/templates/images/si.png" alt="">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">Joseph Goh</h4>
                                <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs .  </p>
                            </div>
                        </div>
                    </div>
                    <div class="comment-bottom heading">
                        <h3>Leave a Comment</h3>
                        <form>	
                            <input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Name';
                                                        }">
                            <input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Email';
                                                        }">
                            <input type="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Subject';
                                                        }">
                            <textarea cols="77" rows="6" value=" " onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Message';
                                                        }">Message</textarea>
                            <input type="submit" value="Send">
                        </form>
                    </div>
                </div>	
            </div>					
        </div>
        <!--end-single-->



    </jsp:attribute>
</p:fontend>
