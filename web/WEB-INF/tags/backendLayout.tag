<%-- 
    Document   : adminLayout
    Created on : Nov 5, 2017, 9:01:56 PM
    Author     : mk
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="title"%>
<%@attribute name="contentAD" fragment="true" %>



<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>${title}</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/templates/css/bootstrap.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/templates/css/admin.css" rel="stylesheet">

        <script src="http://cdn.ckeditor.com/4.6.1/standard/ckeditor.js"></script>
    </head>
    <body>

        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/admin/index.html">Admin</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Welcome, Brad</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/login.html">Logout</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>

       
        <jsp:invoke fragment="contentAD" />

        
        <footer id="footer">
            <p>Copyright AdminStrap, &copy; 2017</p>
        </footer>

        <!-- Modals -->

        <!-- Add Page -->
        <div class="modal fade" id="addPage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">Add Page</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Page Title</label>
                                <input type="text" class="form-control" placeholder="Page Title">
                            </div>
                            <div class="form-group">
                                <label>Page Body</label>
                                <textarea name="editor1" class="form-control" placeholder="Page Body"></textarea>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Published
                                </label>
                            </div>
                            <div class="form-group">
                                <label>Meta Tags</label>
                                <input type="text" class="form-control" placeholder="Add Some Tags...">
                            </div>
                            <div class="form-group">
                                <label>Meta Description</label>
                                <input type="text" class="form-control" placeholder="Add Meta Description...">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script>
            CKEDITOR.replace('editor1');
        </script>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/templates/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/js/bootstrap.min.js"></script>
    </body>
</html>
