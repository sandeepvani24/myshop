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
        
        <!-- Form Examples area start-->
        <div class="form-example-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                        
                        <div class="form-example-wrap">
                            <form action="/MyShop/admin/categories/create" method="post" enctype="multipart/form-data">
                                <div class="cmp-tb-hd">
                                    <h2>Category Details</h2>
                                    <p>Fill the below information to create new category.</p>
                                </div>
                                <div class="form-example-int">
                                    <div class="form-group">
                                        <label>Category Name</label>
                                        <div class="nk-int-st">
                                            <input type="text" name="name" class="form-control input-sm" placeholder="Enter Category Name">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="floating-numner form-rlt-mg">
                                            <p>Category Description</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <div class="nk-int-st">
                                                <textarea class="form-control" rows="5" name="description" placeholder="Brif Description about category"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-12">

                                        <div class="floating-numner form-rlt-mg">
                                            <p>Category Image</p>
                                        </div>
                                        <div class="form-group ic-cmp-int">                                    
                                            <div class="nk-int-st">
                                                <input type="file"  name="image" class=" input-sm">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-12">   
                                        <div class="form-group ic-cmp-int">                                    
                                            <div class="nk-int-st">
                                                <img width="100px" id="preview" src="/MyShop/images/category_default.png"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-example-int mg-t-15">
                                    <button type="submit" class="btn btn-success notika-btn-success">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Form Examples area End-->
       
        <!-- Start Footer area-->
        <%@include file="footer.jsp" %>
        <!-- End Footer area-->
        <%@include file="scripts.jsp" %>
        <script>
            
            function readURL(input) {
                if (input.files && input.files[0]) {
                  var reader = new FileReader();

                  reader.onload = function(e) {
                    $('#preview').attr('src', e.target.result);
                  }

                  reader.readAsDataURL(input.files[0]);
                }
            }
            $(document).ready(function(){
                $("input[type='file']").change(function() {
                    readURL(this);
                });
            });           
        </script>
    </body>

</html>
