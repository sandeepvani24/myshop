<%-- 
    Document   : mobile_menu
    Created on : Apr 28, 2019, 2:55:26 PM
    Author     : Mohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="mobile-menu-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="mobile-menu">
                        <nav id="dropdown">
                            <ul class="mobile-menu-nav">
                                <li><a data-toggle="collapse" data-target="#Charts" href="#">Home</a></li>                                
                                <li><a data-toggle="collapse" data-target="#demodepart" href="#">Products</a>
                                    <ul id="demodepart" class="collapse dropdown-header-top">
                                        <li><a href="admin/products/create">Add Product</a></li>
                                        <li><a href="admin/products">All Products</a></li>
                                    </ul>
                                </li>                                
                                <li><a data-toggle="collapse" data-target="#Miscellaneousmob" href="#">Categories</a>
                                    <ul id="Miscellaneousmob" class="collapse dropdown-header-top">
                                        <li><a href="notification.html">Add Category</a></li>
                                        <li><a href="alert.html">All Categories</a></li>                                        
                                    </ul>
                                </li>
                                <li><a data-toggle="collapse" data-target="#demo" href="#">Orders</a>
                                    <ul id="demo" class="collapse dropdown-header-top">
                                        <li><a href="form-elements.html">Complete</a></li>
                                        <li><a href="form-components.html">Pending</a></li>
                                        <li><a href="form-examples.html">Return</a></li>
                                    </ul>
                                </li>
                                <li><a data-toggle="collapse" data-target="#Pagemob" href="#">Customers</a>
                                    <ul id="Pagemob" class="collapse dropdown-header-top">
                                        <li><a href="contact.html">Send Offers Emails</a></li>
                                        <li><a href="invoice.html">Invoice</a></li>                                       
                                    </ul>
                                </li>
                                <li><a data-toggle="collapse" data-target="#Pagemob" href="javascript:void(0);"> Logout</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>