<%-- 
    Document   : fontendLayout
    Created on : Nov 5, 2017, 9:02:58 PM
    Author     : mk
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="title"%>
<%@attribute name="content" fragment="true" %>

<!DOCTYPE html>
<html>

    <head>
        <title>${title}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="${pageContext.request.contextPath}/templates/css/bootstrap.css" rel='stylesheet' />
        <link href="${pageContext.request.contextPath}/templates/css/client.css" rel='stylesheet' />


        <script src="${pageContext.request.contextPath}/templates/js/jquery.min.js" ></script>
        <script src="${pageContext.request.contextPath}/templates/js/move-top.js" ></script>
        <script src="${pageContext.request.contextPath}/templates/js/easing.js" ></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!--start-smoth-scrolling-->
    </head>

    <body>

        <div class="header">
            <div class="container">
                <div class="head">
                    <div class="navigation">
                        <span class="menu"></span> 
                        <ul class="navig">
                            <li><a href="home.html"  class="active">Trang chu</a></li>
                            <li><a href="${pageContext.request.contextPath}/home/about.html">Gioi thieu</a></li>
                            <li><a href="posts.html">Bai viet</a></li>
                            <li><a href="${pageContext.request.contextPath}/home/contact.html">Lien he</a></li>
                        </ul>
                    </div>
                    <div class="header-right">
                        <div class="search-bar">
                            <input type="text" value="Tim kiem" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Tim kiem';
                                    }">
                            <input type="submit" value="">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>	
        <!-- script-for-menu -->
        <!-- script-for-menu -->
        <script>
            $("span.menu").click(function () {
                $(" ul.navig").slideToggle("slow", function () {
                });
            });
        </script>



        <jsp:invoke fragment="content" />




        <div class="footer">
            <div class="container">
                <div class="footer-text">
                    <p>© 2015 Coffee Break. All Rights Reserved | Design by  MrK J3r7y </p>
                </div>
            </div>
        </div>
    </body>
</html>