<%-- 
    Document   : User
    Created on : May 1, 2019, 8:42:10 AM
    Author     : Isac-Newton
--%>
<%@page import="java.util.List"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 
<!DOCTYPE html>
<html class="no-js" lang="">

<head>
    <%@include file="head.jsp" %>
</head>

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
                            <h2>Products</h2>
                            <p>It's just that simple. Turn your simple table into a sophisticated data table and offer your users a nice experience and great features without any effort.</p>
                        </div>
                        <div class="table-responsive">
                            <table id="data-table-basic" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Product Id</th>
                                        <th>Name</th>
                                        <th>Price</th>
                                        <th>Sale Price</th>
                                        <th>Discount</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                    <%
                                        List<User> users = (List<User>) request.getAttribute("users");
                                          
                                    %>
                                    <% 
                                        for(int i= 0;i < users.size();i++){ 
                                            User user = users.get(i);                                              
                                            
                                    %>
                                        <tr>
                                            <td> <%= user.getId() %> </td>
                                            <td><%= user.getFullname() %></td>
                                            <td><%= user.getEmail() %></td>
                                            <td><%= user.getPassword() %></td>
                                            <td><%= user.getPhone() %></td>
             
                                            <td><button class="btn btn-primary notika-btn-primary waves-effect">Edit </button></td>
                                        </tr>  
                                    <% } %>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Name</th>
                                        <th>Position</th>
                                        <th>Office</th>
                                        <th>Age</th>
                                        <th>Start date</th>
                                        <th>Salary</th>
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

