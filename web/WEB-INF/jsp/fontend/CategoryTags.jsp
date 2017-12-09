<%-- 
    Document   : CategoryTags
    Created on : Dec 5, 2017, 3:08:06 PM
    Author     : mk
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>

<div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active">
        Các chủ đề
    </a>
    <c:forEach var="tag" items="${dsTags}">
        <a href="#" class="list-group-item list-group-item-action">${tag.getName()}</a>
    </c:forEach>
</div>
