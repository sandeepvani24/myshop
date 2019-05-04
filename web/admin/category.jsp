<%-- 
    Document   : category
    Created on : Apr 29, 2019, 10:37:19 AM
    Author     : Isac-Newton
--%>

<%@page import="java.util.List"%>
<%@page import="model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  



<!DOCTYPE html>
<html class="no-js" lang="">

    <head>
        <%@include file="head.jsp" %>
    </head>
    <% String activeMenu = "categoryList";
    %> 
    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <!-- Start Header Top Area -->
        <%@include file="header.jsp" %>
        <!-- End Header Top Area -->
        <!-- Mobile Menu start -->
        <%@include file="mobile_menu.jsp" %>
        <!-- Mobile Menu end -->
        <!-- Main Menu area start-->
        <%@include file="main_menu.jsp" %>
        <!-- Main Menu area End-->
        <!-- Breadcomb area Start-->
        <div class="breadcomb-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="breadcomb-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="breadcomb-wp">
                                        <div class="breadcomb-icon">
                                            <i class="notika-icon notika-windows"></i>
                                        </div>
                                        <div class="breadcomb-ctn">
                                            <h2>Data Table</h2>
                                            <p>Welcome to Notika <span class="bread-ntd">Admin Template</span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
                                    <div class="breadcomb-report">
                                        <button data-toggle="tooltip" data-placement="left" title="Download Report" class="btn"><i class="notika-icon notika-sent"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcomb area End-->
        <!-- Data Table area Start-->
        <div class="data-table-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="data-table-list">
                            <div class="basic-tb-hd">
                                <div class="header" style="width:50%;float:left;">
                                    <h2>Category</h2>
                                    <p>Shop owner can add more categories from this modules.</p>
                                </div>
                                <div class="header" style="width:50%;float:right;">
                                    <a href="/MyShop/admin/categories/create"
                                        <button class="btn btn-info pull-right notika-btn-primary waves-effect">Add Category </button>
                                    </a>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="table-responsive">
                                <table id="data-table-basic" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Category Id</th>
                                            <th>Image </th>
                                            <th>Name</th>
                                            <th>Descriptions</th>   
                                            <th>Action</th>    
                                        </tr>
                                    </thead>
                                    <%
                                        List<Category> categories = (List<Category>) request.getAttribute("categories");
                                    %>

                                    <%
                                        for (int i = 0; i < categories.size(); i++) {
                                            Category category = categories.get(i);
                                    %> 
                                    <tr>
                                        <td> <%= category.getId()%> </td>
                                        <td> <img src="<%= category.getImage()%>" width="80px" height="80px" /> </td>
                                        <td><%= category.getName() %></td>
                                        <td><%= category.getDescription() %> </td>
                                        <td><button class="btn btn-primary notika-btn-primary waves-effect">Edit </button></td>
                                    </tr>  
                                    <% }%>

                                    <tfoot>
                                        <tr>
                                            <th>Category Id</th>
                                            <th>Name</th>
                                            <th>Descriptions</th>   
                                            <th>Action</th>   
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Data Table area End-->
        <!-- Start Footer area-->
        <%@include file="footer.jsp" %>
        <!-- End Footer area-->
        <%@include file="scripts.jsp" %>
    </body>

</html>
