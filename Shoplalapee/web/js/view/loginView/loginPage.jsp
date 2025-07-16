<%-- 
    Document   : loginPage
    Created on : May 26, 2025, 2:53:12 AM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
    <head>
        <link rel="stylesheet" href="${login}">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Login | E-Shopper</title>
        <link href="/shoplalapee/CSS/bootstrap.min.css" rel="stylesheet">
        <link href="/shoplalapee/CSS/font-awesome.min.css" rel="stylesheet">
        <link href="/shoplalapee/CSS/prettyPhoto.css" rel="stylesheet">
        <link href="/shoplalapee/CSS/price-range.css" rel="stylesheet">
        <link href="/shoplalapee/CSS/animate.css" rel="stylesheet">
        <link href="/shoplalapee/CSS/main.css" rel="stylesheet">
        <link href="/shoplalapee/CSS/responsive.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    </head><!--/head-->

    <body>
        <%@include file="../../Template/navbar2.jsp" %>
        <div class="d-flex justify-content-center align-items-center vh-100">
            <section id="form"><!--form-->
                <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
                    <form method="POST" action="login" name="loginform">
                        <!-- Email input -->
                        <div data-mdb-input-init class="form-outline mb-4">
                            <input type="text" id="form1Example13" class="form-control form-control-lg" 
                                   placeholder="Username" name="username"
                                   value="${username != null ? username : ''}"
                                   />                                    
                        </div>

                        <!-- Password input -->
                        <div data-mdb-input-init class="form-outline mb-4">
                            <input type="password" id="form1Example23" class="form-control form-control-lg"
                                   placeholder="Password" name="password"
                                   value="${password != null ? password : ''}"
                                   />                                    
                        </div>

                        <div class="d-flex justify-content-around align-items-center mb-4">
                            <!-- Checkbox -->
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="rem" 
                                       id="form1Example3" name="rem"
                                       ${rem != null ? 'checked' : ''}
                                       />
                                <label class="form-check-label" for="form1Example3"> Remember me </label>
                            </div>
                            <a href="<c:url value="/forgotpassword"/>">Forgot password?</a>
                            </div>
                            <h6 style="color: red">${noitce}</h6>
                            <!-- Submit button -->
                            <button type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-lg btn-block btn-sign-in">Sign in</button>

                            <!-- Register link -->
                            <div class="d-flex align-items-center mb-4">
                                Don't have an account &nbsp; &nbsp;<a href="register">Register now?</a>
                            </div>

                            <div class="divider d-flex align-items-center my-4">
                                <p class="text-center fw-bold mx-3 mb-0 text-muted">OR</p>
                            </div>
                            <!--login by facebook or google -->
                            <a data-mdb-ripple-init class="btn btn-primary btn-lg btn-block" style="background-color: #3b5998" href="${Oauth_Config.FACEBOOK_LINK_GET_CODE}"
                               role="button">
                                <i class="fab fa-facebook-f me-2"></i>Continue with Facebook
                            </a>
                            <a data-mdb-ripple-init class="btn btn-primary btn-lg btn-block btnGoogle" href="${Oauth_Config.GOOGLE_LINK_GET_CODE}"
                               role="button">
                                <i class="fa-brands fa-google-plus-g">&nbsp;</i>Continue with Google</a>
                        </form>
                    </div>

                </section><!--/form-->
            </div>

            <footer id="footer"><!--Footer-->
                <div class="footer-top">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-2">
                                <div class="companyinfo">
                                    <h2><span>e</span>-shopper</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor</p>
                                </div>
                            </div>
                            <div class="col-sm-7">
                                <div class="col-sm-3">
                                    <div class="video-gallery text-center">
                                        <a href="#">
                                            <div class="iframe-img">
                                                <img src="images/home/iframe1.png" alt="" />
                                            </div>
                                            <div class="overlay-icon">
                                                <i class="fa fa-play-circle-o"></i>
                                            </div>
                                        </a>
                                        <p>Circle of Hands</p>
                                        <h2>24 DEC 2014</h2>
                                    </div>
                                </div>

                                <div class="col-sm-3">
                                    <div class="video-gallery text-center">
                                        <a href="#">
                                            <div class="iframe-img">
                                                <img src="images/home/iframe2.png" alt="" />
                                            </div>
                                            <div class="overlay-icon">
                                                <i class="fa fa-play-circle-o"></i>
                                            </div>
                                        </a>
                                        <p>Circle of Hands</p>
                                        <h2>24 DEC 2014</h2>
                                    </div>
                                </div>

                                <div class="col-sm-3">
                                    <div class="video-gallery text-center">
                                        <a href="#">
                                            <div class="iframe-img">
                                                <img src="images/home/iframe3.png" alt="" />
                                            </div>
                                            <div class="overlay-icon">
                                                <i class="fa fa-play-circle-o"></i>
                                            </div>
                                        </a>
                                        <p>Circle of Hands</p>
                                        <h2>24 DEC 2014</h2>
                                    </div>
                                </div>

                                <div class="col-sm-3">
                                    <div class="video-gallery text-center">
                                        <a href="#">
                                            <div class="iframe-img">
                                                <img src="images/home/iframe4.png" alt="" />
                                            </div>
                                            <div class="overlay-icon">
                                                <i class="fa fa-play-circle-o"></i>
                                            </div>
                                        </a>
                                        <p>Circle of Hands</p>
                                        <h2>24 DEC 2014</h2>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="address">
                                    <img src="images/home/map.png" alt="" />
                                    <p>505 S Atlantic Ave Virginia Beach, VA(Virginia)</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="footer-widget">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-2">
                                <div class="single-widget">
                                    <h2>Service</h2>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href="">Online Help</a></li>
                                        <li><a href="">Contact Us</a></li>
                                        <li><a href="">Order Status</a></li>
                                        <li><a href="">Change Location</a></li>
                                        <li><a href="">FAQ’s</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="single-widget">
                                    <h2>Quock Shop</h2>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href="">T-Shirt</a></li>
                                        <li><a href="">Mens</a></li>
                                        <li><a href="">Womens</a></li>
                                        <li><a href="">Gift Cards</a></li>
                                        <li><a href="">Shoes</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="single-widget">
                                    <h2>Policies</h2>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href="">Terms of Use</a></li>
                                        <li><a href="">Privecy Policy</a></li>
                                        <li><a href="">Refund Policy</a></li>
                                        <li><a href="">Billing System</a></li>
                                        <li><a href="">Ticket System</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="single-widget">
                                    <h2>About Shopper</h2>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href="">Company Information</a></li>
                                        <li><a href="">Careers</a></li>
                                        <li><a href="">Store Location</a></li>
                                        <li><a href="">Affillate Program</a></li>
                                        <li><a href="">Copyright</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-3 col-sm-offset-1">
                                <div class="single-widget">
                                    <h2>About Shopper</h2>
                                    <form action="#" class="searchform">
                                        <input type="text" placeholder="Your email address" />
                                        <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
                                        <p>Get the most recent updates from <br />our site and be updated your self...</p>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="footer-bottom">
                    <div class="container">
                        <div class="row">
                            <p class="pull-left">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p>
                            <p class="pull-right">Designed by <span><a target="_blank" href="http://www.themeum.com">Themeum</a></span></p>
                        </div>
                    </div>
                </div>

            </footer><!--/Footer-->



            <script src="js/jquery.js"></script>
            <script src="js/price-range.js"></script>
            <script src="js/jquery.scrollUp.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.prettyPhoto.js"></script>
            <script src="js/main.js"></script>
        </body>
    </html>