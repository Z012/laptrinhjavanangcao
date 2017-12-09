<%-- 
    Document   : Silde
    Created on : Nov 7, 2017, 10:41:53 PM
    Author     : mk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--slide-starts-->
<div class="slide">
    <div class="container">
        <div class="fle-xsel">
            <ul id="flexiselDemo3">
                <li>
                    <a href="#">
                        <div class="banner-1">
                            <img src="${pageContext.request.contextPath}/templates/images/s-1.jpg" class="img-responsive" alt="">
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="banner-1">
                            <img src="${pageContext.request.contextPath}/templates/images/s-2.jpg" class="img-responsive" alt="">
                        </div>
                    </a>
                </li>			
                <li>
                    <a href="#">
                        <div class="banner-1">
                            <img src="${pageContext.request.contextPath}/templates/images/s-3.jpg" class="img-responsive" alt="">
                        </div>
                    </a>
                </li>		
                <li>
                    <a href="#">
                        <div class="banner-1">
                            <img src="${pageContext.request.contextPath}/templates/images/s-4.jpg" class="img-responsive" alt="">
                        </div>
                    </a>
                </li>	
                <li>
                    <a href="#">
                        <div class="banner-1">
                            <img src="${pageContext.request.contextPath}/templates/images/s-5.jpg" class="img-responsive" alt="">
                        </div>
                    </a>
                </li>	
                <li>
                    <a href="#">
                        <div class="banner-1">
                            <img src="${pageContext.request.contextPath}/templates/images/s-6.jpg" class="img-responsive" alt="">
                        </div>
                    </a>
                </li>				
            </ul>

            <script type="text/javascript">
                $(window).load(function () {

                    $("#flexiselDemo3").flexisel({
                        visibleItems: 5,
                        animationSpeed: 1000,
                        autoPlay: true,
                        autoPlaySpeed: 3000,
                        pauseOnHover: true,
                        enableResponsiveBreakpoints: true,
                        responsiveBreakpoints: {
                            portrait: {
                                changePoint: 480,
                                visibleItems: 2
                            },
                            landscape: {
                                changePoint: 640,
                                visibleItems: 3
                            },
                            tablet: {
                                changePoint: 768,
                                visibleItems: 3
                            }
                        }
                    });

                });
            </script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/templates/js/jquery.flexisel.js" ></script>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>	
<!--slide-end-->
