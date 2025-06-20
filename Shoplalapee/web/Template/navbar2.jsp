<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div style="height: 110px">
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <title>Homepage | Shoplalapee</title>

            <!-- Linking CSS Files -->
            <link rel="stylesheet" href="<c:url value='/CSS/animate.css'/>">
            <link rel="stylesheet" href="<c:url value='/CSS/bootstrap.min.css'/>">
            <link rel="stylesheet" href="<c:url value='/CSS/font-awesome.min.css'/>">
            <link rel="stylesheet" href="<c:url value='/CSS/main.css'/>">
            <link rel="stylesheet" href="<c:url value='/CSS/prettyPhoto.css'/>">
            <link rel="stylesheet" href="<c:url value='/CSS/price-range.css'/>">
            <link rel="stylesheet" href="<c:url value='/CSS/responsive.css'/>">
        </head><!--/head-->

        <body>
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="contactinfo">
                                <ul class="nav nav-pills">
                                    <c:if test="${sessionScope.s_u_shoplalapee!= null}">
                                        <c:if test="${sessionScope.s_u_shoplalapee.role.role_id == 1}">
                                            <li><a href="admin/dashboard">Back to Admin Center</a></li>
                                            </c:if>
                                            <c:if test="${sessionScope.s_u_shoplalapee.role.role_id == 2}">
                                            <li><a href="seller/dashboard">Back to seller Center</a></li>
                                            </c:if>
                                            <c:if test="${sessionScope.s_u_shoplalapee.role.role_id == 3}">
                                            <li><a href="#">Become to seller Center</a></li>
                                            </c:if>
                                        </c:if>

                                    <li><a href="#"><i class="fa fa-phone"></i> +84 366661475</a></li>
                                    <li><a href="#"><i class="fa fa-envelope"></i> mysteryme2312@gmail.com</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="social-icons pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header_top-->

            <div class="header-middle"><!--header-middle-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-5">
                            <div class="logo pull-left">
                                <a href="<c:url value="/home"/>"><img src="${pageContext.request.contextPath}/images/home/logo2.png" style="height: 110px; width: auto;" alt="" /></a> 
                            </div>
                            <div class="btn-group pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                        VN
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">US</a></li>
                                        <li><a href="#">UK</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                        VND
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Dollar</a></li>
                                        <li><a href="#">Pound</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div class="shop-menu pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="<c:url value="/myprofile"/>"><i class="fa fa-user"></i> Account</a></li>
                                    <li><a href="<c:url value="/listblog"/>"><i class="fa fa-list"></i>Blog</a></li>
                                    <li><a href="#"><i class="fa fa-star"></i> Wishlist</a></li>
                                    <li><a href="checkout.html"><i class="fa fa-crosshairs"></i> Checkout</a></li>
                                    <li><a href="cart.html"><i class="fa fa-shopping-cart"></i> Cart</a></li>
                                        <c:if test="${sessionScope.s_u_shoplalapee!= null}">                   
                                        <li class="dropdown">
                                            <div class="dropdown_select">
                                                <span class="dropdown_selected" style="color: white;">
                                                    <a style="font-size: 12px"> <img style="height: 30px;width: 30px;border-radius: 50px;" src="${s_u_shoplalapee.image}"/>
                                                        ${sessionScope.s_u_shoplalapee.fullname}
                                                    </a>
                                                </span>
                                                <ul class="dropdown_list">
                                                    <li class="dropdown-item">
                                                        <a href="myprofile" class="dropdown-text" style="color: black; font-weight: bold;">My profile</a>
                                                        <i class="fa-regular fa-user"></i>
                                                    </li>
                                                    <li class="dropdown-item">
                                                        <a href="myorder" class="dropdown-text" style="color: black; font-weight: bold;">My Order</a>
                                                        <i class="fa-solid fa-file-invoice"></i>
                                                    </li>
                                                    <li class="dropdown-item">
                                                        <a href="logout" class="dropdown-text" style="color: black; font-weight: bold;">Logout</a>
                                                        <i class="fa-solid fa-right-from-bracket"></i>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                    </c:if>
                                    <c:if test="${sessionScope.s_u_shoplalapee== null}">
                                        <li id="sign-in"><a href="login"><i class="fa fa-sign-in"></i> Sign in</a></li>
                                        <li><a href="register"><i class="fa fa-sign-out"></i>Sign up</a></li>
                                        </c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-middle-->

            <div class="header-bottom"><!--header-bottom-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-9">
                            
                        </div>
                        <div class="col-sm-3">
                            <div class="search_box pull-right">
                                <input type="text" placeholder="Search"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-bottom-->
            </header><!--/header-->
        </body>
    </html>
