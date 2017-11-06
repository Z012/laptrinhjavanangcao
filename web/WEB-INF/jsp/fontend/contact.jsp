<%-- 
    Document   : contact
    Created on : Nov 5, 2017, 9:21:51 PM
    Author     : mk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="/WEB-INF/tlds/myTags" %>
<p:fontend title="Contact">
    <jsp:attribute name="content">

        <!----start-contact---->
        <div class="contact">
            <div class="container">
                <div class="contact-top heading">
                    <h3>LIÊN HỆ</h3>
                </div>
                <div class="contact-bottom">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6632.248000703498!2d151.265683!3d-33.7832959!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12abc7edcbeb07%3A0x5017d681632bfc0!2sManly+Vale+NSW+2093%2C+Australia!5e0!3m2!1sen!2sin!4v1433329298259" frameborder="0" style="border:0"></iframe>
                    <div class="contact-text">
                        <div class="col-md-4 contact-left">
                            <h4>Sed dapibus nunc eu metus commodo, et dictum justo fermentum.</h4>
                            <p>Aliquam quis lacus at sapien tempor semper. Sed ultrices et metus et elementum. Nunc sed justo at erat consequat mollis et eu lectus.</p>
                            <div class="address">
                                <h4>Địa chỉ </h4>
                                <p>The company name, 
                                    <span>Lorem ipsum dolor,</span>
                                    Glasglow Dr 40 Fe 72.</p>
                            </div>
                        </div>	
                        <div class="col-md-8 contact-right">
                            <input placeholder="Họ tên" type="text" required>
                            <input placeholder="Email" type="text" required>
                            <textarea placeholder="Nội dung" required></textarea>
                            <div class="submit-btn">
                                <form>
                                    <input type="submit" value="GỬI">
                                </form>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <!----end-contact---->


    </jsp:attribute>
</p:fontend>