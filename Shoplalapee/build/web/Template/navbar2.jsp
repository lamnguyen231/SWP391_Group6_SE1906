<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div style="height: 110px">
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <title>Homepage | Shoplalapee</title>

            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
            <link rel="shortcut icon" href="image/image_logo/logo.ico" />

            <!-- Linking CSS Files -->
            <link rel="stylesheet" href="<c:url value='/CSS/animate.css'/>">
            <link rel="stylesheet" href="<c:url value='/CSS/bootstrap.min.css'/>">
            <link rel="stylesheet" href="<c:url value='/CSS/font-awesome.min.css'/>">
            <link rel="stylesheet" href="<c:url value='/CSS/main.css'/>">
            <link rel="stylesheet" href="<c:url value='/CSS/prettyPhoto.css'/>">
            <link rel="stylesheet" href="<c:url value='/CSS/price-range.css'/>">
            <link rel="stylesheet" href="<c:url value='/CSS/responsive.css'/>">
            <link rel="stylesheet" href="<c:url value='/CSS/style-navbarCSS.css'/>">
        </head><!--/head-->

        <body>
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="contactinfo">
                                <ul class="nav nav-pills">
                                    <c:if test="${sessionScope.s_u_tikilazapee!= null}">
                                        <c:if test="${sessionScope.s_u_tikilazapee.role.role_id == 1}">
                                            <li><a href="admin/dashboard">Back to Admin Center</a></li>
                                            </c:if>
                                            <c:if test="${sessionScope.s_u_tikilazapee.role.role_id == 2}">
                                            <li><a href="seller/dashboard">Back to Seller Center</a></li>
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
                                    <li><a href="<c:url value="/listblog"/>"><i class="fa fa-list"></i>Blog</a></li>
                                    <li><a href="#"><i class="fa fa-star"></i> Wishlist</a></li>
                                    <li><a href="checkout.html"><i class="fa fa-crosshairs"></i> Checkout</a></li>
                                    <li><a href="<c:url value="/cart"/>"><i class="fa fa-shopping-cart"></i> Cart</a></li>
                                        <c:if test="${sessionScope.s_u_tikilazapee != null}">                   
                                        <li class="dropdown" style="list-style: none;">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: #696763; font-size: 14px; font-weight: normal; display: flex; align-items: center; text-decoration: none;">
                                                <img src="${s_u_tikilazapee.image}" alt="" style="height: 22px; width: 22px; border-radius: 50%;">
                                                ${sessionScope.s_u_tikilazapee.fullname}
                                                <span class="caret"></span>
                                            </a>
                                            <ul class="dropdown-menu" style="min-width: 160px;">
                                                <li><a href="myprofile"><i class="fa-regular fa-user"></i> My Profile</a></li>
                                                <li><a href="myorder"><i class="fa-solid fa-file-invoice"></i> My Order</a></li>
                                                <li><a href="logout"><i class="fa-solid fa-right-from-bracket"></i> Logout</a></li>
                                            </ul>
                                        </li>
                                    </c:if>

                                    <c:if test="${sessionScope.s_u_tikilazapee== null}">
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
