<%-- 
    Document   : menu_main
    Created on : Apr 28, 2019, 2:53:03 PM
    Author     : Mohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="main-menu-area mg-tb-40">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro">
                        <li class="active">
                            <a data-toggle="tab" href="#Home"><i class="notika-icon notika-house"></i> Home</a>
                        </li>                        
                        <li>
                            <a data-toggle="tab" href="#products"><i class="notika-icon notika-windows"></i> Products</a>
                        </li>                        
                        <li>
                            <a data-toggle="tab" href="#categories"><i class="notika-icon notika-app"></i> Categories</a>
                        </li>
                        <li><a data-toggle="tab" href="#users"><i class="notika-icon notika-support"></i> Users</a></li>
                        <li><a data-toggle="tab" href="#orders"><i class="notika-icon notika-form"></i> Orders</a></li>
                        <li><a data-toggle="tab" href="javascript:void(0);"><i class="notika-icon notika-form"></i> Logout</a></li>
                    </ul>
                    <div class="tab-content custom-menu-content">
                        <div id="Home" class="tab-pane in active notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="index.html">Dashboard One</a></li>                              
                            </ul>
                        </div>                        
                        <div id="products" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="/MyShop/admin/products/create">Add Products</a>
                                </li>
                                <li><a href="/MyShop/admin/products">All Products</a>
                                </li>
                            </ul>
                        </div>
                        <div id="orders" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="/MyShop/admin/orders/?filter=complete">Complete</a></li>
                                <li><a href="/MyShop/admin/orders/?filter=pending">Pendding</a></li>
                                <li><a href="/MyShop/admin/orders/">All Orders</a></li>
                            </ul>
                        </div>
                        <div id="categories" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="/MyShop/admin/categories/create">Add Category</a></li> 
                                <li><a href="/MyShop/admin/categories">All Categories</a></li> 
                            </ul>
                        </div>
                        <div id="users" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="/MyShop/admin/users">All Users</a> </li>                                                             
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Main Menu area End-->