<%-- 
    Document   : about
    Created on : Nov 5, 2017, 9:21:25 PM
    Author     : mk
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>
<p:fontend title="Home">
    <jsp:attribute name="content">
        
        <!--welcome-starts-->
        <div class="welcome">
            <div class="container">
                <div class="welcome-top heading">
                    <h3>Chào mừng</h3>
                    <div class="welcome-bottom">
                        <img src="${pageContext.request.contextPath}/templates/images/myteam.jpg" alt=""/>
                        <p>Vivamus interdum diam diam, non faucibus tortor consequat vitae. Proin sit amet augue sed massa pellentesque viverra. Suspendisse iaculis purus eget est pretium aliquam ut sed diam. Nullam non magna lobortis, faucibus erat eu, consequat justo. Suspendisse commodo nibh odio, vel elementum nulla luctus sit amet.</p>
                        <p>Nulla in tempor lectus. Etiam ac mauris lacinia nulla ultricies porta sit amet eleifend ligula. Quisque tincidunt vitae turpis at efficitur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sagittis, magna a sagittis dapibus, ipsum metus interdum lectus, quis feugiat leo ipsum nec diam.</p>
                    </div>
                </div>
            </div>
        </div>
        <!--welcome-end-->
        
        <!--team-starts-->
        <div class="team">
            <div class="container">
                <div class="team-top heading">
                    <h3>Nhóm chúng tôi</h3>
                </div>
                <div class="team-bottom">
                    <div class="col-md-3 team-left">
                        <img src="${pageContext.request.contextPath}/templates/images/vuhungcuong.jpg" alt="" />
                        <h4>Vũ Hùng Cường</h4>
                        <p>Fusce at elementum diam. Integer pellentesque ultricies pharetra.</p>
                    </div>
                    <div class="col-md-3 team-left">
                        <img src="${pageContext.request.contextPath}/templates/images/nguyenducmanh.jpg" alt="" />
                        <h4>Nguyễn Đức Mạnh</h4>
                        <p>Fusce at elementum diam. Integer pellentesque ultricies pharetra.</p>
                    </div>
                    <div class="col-md-3 team-left">
                        <img src="${pageContext.request.contextPath}/templates/images/nguyentrungkien.jpg" alt="" />
                        <h4>Nguyễn Trung Kiên</h4>
                        <p>Fusce at elementum diam. Integer pellentesque ultricies pharetra.</p>
                    </div>
                    <div class="col-md-3 team-left">
                        <img src="${pageContext.request.contextPath}/templates/images/nguyentrungkien.jpg" alt="" />
                        <h4>Nguyễn Trung Kiên</h4>
                        <p>Fusce at elementum diam. Integer pellentesque ultricies pharetra.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!--team-end-->
        
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
                    <script type="text/javascript" src="${pageContext.request.contextPath}/templates/js/jquery.flexisel.js"></script>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>	
        <!--slide-end-->
        
    </jsp:attribute>
</p:fontend>