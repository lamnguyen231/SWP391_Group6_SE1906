<%-- 
    Document   : loginPage
    Created on : May 26, 2025, 2:53:12 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*" %>
<%@page import="util.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <c:url value="/js/jquery-3.7.1.min.js" var="libJquery"/>
        <c:url value="/js/registerJS.js" var="register"/>
        <link rel="stylesheet" href="${registerPage}"/>
        <title>Register</title>


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

        <section id="form"><!--form-->
            <div class="container">
                <div class="col-sm-8">
                    <div class="signup-form"><!--sign up form-->
                        <h2>New User Signup!</h2>
                        <form action="register" method="post" autocomplete="off">
                            <div class="row">
                                <p class="notice-p">${notice}</p>
                                <div class="col-sm-4">
                                    <div class="input-box">
                                        <input type="text" name="fullname" placeholder="Full name" class="name" required>
                                        <input type="text" name="address" placeholder="Address" class="address2" required>
                                    </div>
                                    <div class="">
                                        <label style="font-weight: 530" >Day Of Birth</label>
                                        <br>
                                        <select name="day" class="col-md-3" style="width: 30%; margin-right: 5%">
                                            <c:forEach items="${listDay}" var="i">
                                                <option value="${i}">${i}</option>
                                            </c:forEach>
                                        </select>
                                        <select name="month" class="col-md-3" style="width: 30%; margin-right: 5%">
                                            <c:forEach items="${listMonth}" var="i">
                                                <option value="${i}">${i}</option>
                                            </c:forEach>
                                        </select>

                                        <select name="year" class="col-md-3" style="width: 30%">
                                            <c:forEach items="${listYears}" var="i">
                                                <option value="${i}">${i}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="input-box">
                                        <input class="email" type="text" name="email" placeholder="Email" required autocomplete="off">
                                        <input class="password" type="password" name="password" placeholder="New password" required>
                                    </div>
                                    <div class="gender-details">
                                        <label for="gender-select" class="gender-title">Gender</label>
                                        <select name="gender" id="gender-select" required>
                                            <option value="1" selected>Male</option>
                                            <option value="0">Female</option>
                                            <option value="2">Prefer not to say</option>
                                        </select>
                                    </div>

                                </div>
                                <div class="col-sm-4">
                                    <div class="input-box">
                                        <input type="text" name="username" placeholder="Username" required>
                                        <input class="confirm-password" type="password" name="confirm-password" placeholder="Confirm password" required>
                                    </div>
                                    <div class="gender-details">
                                        <label for="role-select" class="gender-title">Role</label>
                                        <select name="role" id="role-select" required>
                                            <option value="3" selected>Customer</option>
                                            <option value="2">Seller</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <small style="font-style: italic; font-size: 10px">People who use our service may have uploaded your contact information to Shoplalapee. <br>
                                By clicking Register, you agree to our Terms, Privacy Policy and Cookies Policy. You may receive Email notifications from us and can opt out at any time</small>
                            <div class="button">
                                <input type="button" value="Register" id="register-button" class="btn btn-default">
                                <a href="login" style="color: #495057;
                                   text-decoration: underline;">
                                    Already have a account?
                                </a>
                                <input type="hidden" name="listMonths" value="${requestScope.listMonth}" />
                            </div>
                        </form>
                    </div><!--/sign up form-->
                </div>
            </div>
        </section><!--/form-->

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
        <script src="${libJquery}"></script>
        <script src="${register}"></script>
    </body>
</html>