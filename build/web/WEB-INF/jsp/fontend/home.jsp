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
                        <div class="about-one">
                            <p>Tìm nhiều</p>
                            <h3>Coffee of the month</h3>
                        </div>
                        <div class="about-two">
                            <a href="single.htm"><img src="${pageContext.request.contextPath}/templates/images/c-1.jpg" alt="" /></a>
                            <p>Posted by <a href="#">Johnson</a> on 10 feb, 2015 <a href="#">comments(2)</a></p>
                            <p>Phasellus fringilla enim nibh, ac pharetra nulla vestibulum ac. Donec tempor fermentum felis, non placerat sem ultrices ut. Nam molestie nunc nec felis hendrerit, in pulvinar arcu mollis. Quisque eget purus nec velit venenatis tincidunt vitae ac massa. Proin vel ornare tellus. Duis consectetur gravida tellus ut varius. Aenean tellus massa, laoreet ut euismod et, pretium id ex. Mauris hendrerit suscipit hendrerit.</p>
                            <p>Quisque ultrices ligula a nisl porttitor, vitae porta tortor eleifend. Nulla nec imperdiet ipsum, ut cursus mauris. Proin ut sodales sem, quis vestibulum libero. Proin tempor venenatis congue. Phasellus mollis massa sit amet pharetra consequat. Aliquam quis lacus at sapien tempor semper. Sed ultrices et metus et elementum. Nunc sed justo at erat consequat mollis et eu lectus.</p>
                            <div class="about-btn">
                                <a href="single.html">Doc tiep</a>
                            </div>

                        </div>	
                        <div class="about-tre">
                            <div class="a-1">
                                <div class="col-md-6 abt-left">
                                    <a href="single.htm"><img src="${pageContext.request.contextPath}/templates/images/c-3.jpg" alt="" /></a>
                                    <h6>Tìm nhiều</h6>
                                    <h3><a href="single.html">Tasty Coffee</a></h3>
                                    <p>Vivamus interdum diam diam, non faucibus tortor consequat vitae. Proin sit amet augue sed massa pellentesque viverra. Suspendisse iaculis purus eget est pretium aliquam ut sed diam.</p>
                                    <label>May 29, 2015</label>
                                </div>
                                <div class="col-md-6 abt-left">
                                    <a href="single.htm"><img src="${pageContext.request.contextPath}/templates/images/c-4.jpg" alt="" /></a>
                                    <h6>Tìm nhiều</h6>
                                    <h3><a href="single.htm">Tasty Coffee</a></h3>
                                    <p>Vivamus interdum diam diam, non faucibus tortor consequat vitae. Proin sit amet augue sed massa pellentesque viverra. Suspendisse iaculis purus eget est pretium aliquam ut sed diam.</p>
                                    <label>May 29, 2015</label>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="a-1">
                                <div class="col-md-6 abt-left">
                                    <a href="single.htm"><img src="${pageContext.request.contextPath}/templates/images/c-5.jpg" alt="" /></a>
                                    <h6>Tìm nhiều</h6>
                                    <h3><a href="single.html">Tasty Coffee</a></h3>
                                    <p>Vivamus interdum diam diam, non faucibus tortor consequat vitae. Proin sit amet augue sed massa pellentesque viverra. Suspendisse iaculis purus eget est pretium aliquam ut sed diam.</p>
                                    <label>May 29, 2015</label>
                                </div>
                                <div class="col-md-6 abt-left">
                                    <a href="single.htm"><img src="${pageContext.request.contextPath}/templates/images/c-6.jpg" alt="" /></a>
                                    <h6>Tìm nhiều</h6>
                                    <h3><a href="single.html">Tasty Coffee</a></h3>
                                    <p>Vivamus interdum diam diam, non faucibus tortor consequat vitae. Proin sit amet augue sed massa pellentesque viverra. Suspendisse iaculis purus eget est pretium aliquam ut sed diam.</p>
                                    <label>May 29, 2015</label>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="a-1">
                                <div class="col-md-6 abt-left">
                                    <a href="single.htm"><img src="${pageContext.request.contextPath}/templates/images/c-7.jpg" alt="" /></a>
                                    <h6>Tìm nhiều</h6>
                                    <h3><a href="single.htm">Tasty Coffee</a></h3>
                                    <p>Vivamus interdum diam diam, non faucibus tortor consequat vitae. Proin sit amet augue sed massa pellentesque viverra. Suspendisse iaculis purus eget est pretium aliquam ut sed diam.</p>
                                    <label>May 29, 2015</label>
                                </div>
                                <div class="col-md-6 abt-left">
                                    <a href="single.htm"><img src="${pageContext.request.contextPath}/templates/images/c-8.jpg" alt="" /></a>
                                    <h6>Tìm nhiều</h6>
                                    <h3><a href="single.htm">Tasty Coffee</a></h3>
                                    <p>Vivamus interdum diam diam, non faucibus tortor consequat vitae. Proin sit amet augue sed massa pellentesque viverra. Suspendisse iaculis purus eget est pretium aliquam ut sed diam.</p>
                                    <label>May 29, 2015</label>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>	
                    </div>
                    <div class="col-md-4 about-right heading">
                        <div class="abt-1">
                            <h3>Về chúng tôi</h3>
                            <div class="abt-one">
                                <img src="${pageContext.request.contextPath}/templates/images/team.jpeg" alt="" />
                                <p>Quisque non tellus vitae mauris luctus aliquam sit amet id velit. Mauris ut dapibus nulla, a dictum neque.</p>
                                <div class="a-btn">
                                    <a href="single.html">Đọc tiếp </a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="abt-2">
                            <h3>Có thể bạn cũng thích</h3>
                            <ul>
                                <c:forEach var="baiviet" items="${dsBaiViet}">
                                    <li><a href="single.html">${baiviet.getTitle()}</a> </li>
                                    </c:forEach>
                                <!--                                <li><a href="single.html">Lorem Ipsum is simply dummy text of the printing and typesetting industry. </a></li>
                                                                <li><a href="single.html">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</a></li>
                                                                <li><a href="single.html">When an unknown printer took a galley of type and scrambled it to make a type specimen book. </a> </li>
                                                                <li><a href="single.html">It has survived not only five centuries, but also the leap into electronic typesetting</a> </li>
                                                                <li><a href="single.html">Remaining essentially unchanged. It was popularised in the 1960s with the release of </a> </li>
                                                                <li><a href="single.html">Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing </a> </li>
                                                                <li><a href="single.html">Software like Aldus PageMaker including versionsof Lorem Ipsum.</a> </li>-->
                            </ul>	
                        </div>
                        <div class="abt-2">
                            <h3>Tin tức </h3>
                            <div class="news">
                                <form>
                                    <input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Email';
                                            }" />
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

    </jsp:attribute>
</p:fontend>

