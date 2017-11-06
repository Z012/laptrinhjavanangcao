<%-- 
    Document   : posts
    Created on : Nov 5, 2017, 9:21:37 PM
    Author     : mk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>
<p:fontend title="Tags">
    <jsp:attribute name="content">

        <!--gallery-starts-->
        <div class="gallery">
            <div class="container">
                <div class="gallery-top heading">
                    <h3>OUR GALLERY</h3>
                </div>
                <section>
                    <ul id="da-thumbs" class="da-thumbs">
                        
                        <li>
                            <a href="images/g-1.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                                <img src="images/g-1.jpg" alt="" />
                                <div>
                                    <h5>Coffee</h5>
                                    <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="images/g-2.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                                <img src="images/g-2.jpg" alt="" />
                                <div>
                                    <h5>Coffee</h5>
                                    <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="images/g-3.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                                <img src="images/g-3.jpg" alt="" />
                                <div>
                                    <h5>Coffee</h5>
                                    <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="images/g-4.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                                <img src="images/g-4.jpg" alt="" />
                                <div>
                                    <h5>Coffee</h5>
                                    <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                                </div>
                            </a>
                        </li>
                        <li>	
                            <a href="images/g-5.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                                <img src="images/g-5.jpg" alt="" />
                                <div>
                                    <h5>Coffee</h5>
                                    <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="images/g-6.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                                <img src="images/g-6.jpg" alt="" />
                                <div>
                                    <h5>Coffee</h5>
                                    <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="images/g-7.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                                <img src="images/g-7.jpg" alt="" />
                                <div>
                                    <h5>Coffee</h5>
                                    <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="images/g-8.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                                <img src="images/g-8.jpg" alt="" />
                                <div>
                                    <h5>Coffee</h5>
                                    <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="images/g-9.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                                <img src="images/g-9.jpg" alt="" />
                                <div>
                                    <h5>Coffee</h5>
                                    <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                                </div>
                            </a>
                        </li>
                        <div class="clearfix"> </div>
                    </ul>
                </section>

                <script type="text/javascript">
                    $(function () {

                        $(' #da-thumbs > li ').each(function () {
                            $(this).hoverdir();
                        });

                    });
                </script>
            </div>
        </div>
        <!--gallery-end-->



    </jsp:attribute>
</p:fontend>