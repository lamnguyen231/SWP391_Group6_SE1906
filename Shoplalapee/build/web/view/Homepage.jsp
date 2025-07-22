<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.*"  %>
<%@page import="util.*" %>
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

        <style>
            .categories-container {
                display: flex;
                flex-wrap: wrap;
                gap: 20px;
                padding-bottom: 40px;

            }
            .category-item {
                border: 1px solid #ccc;
                border-radius: 8px;
                overflow: hidden;
                width: 100px;
                text-align: center;
            }
            .category-item img {
                width: 100%;
                height: auto;
            }
            .category-item h3 {
                margin: 0;
                padding: 10px;
                background-color: #f8f8f8;
            }
        </style>
    </head><!--/head-->

    <body>
        <%@include file="../../Template/navbar2.jsp" %>

        </svg>  
        <section id="slider"><!--slider-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                                <li data-target="#slider-carousel" data-slide-to="1"></li>
                                <li data-target="#slider-carousel" data-slide-to="2"></li>
                            </ol>

                            <div class="carousel-inner">
                                <div class="item active">
                                    <div class="col-sm-6">
                                        <h1><span>SHOPLA</span>LAPEE</h1>
                                        <h2>Best E-Commerce Site</h2>
                                        <p>Highest quality e-commerce site you will ever find</p>
                                        <button type="button" class="btn btn-default get">Get it now</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="${pageContext.request.contextPath}/images/home/girl1.jpg" class="girl img-responsive" alt="" />
                                        <img src="${pageContext.request.contextPath}/images/home/pricing.png"  class="pricing" alt="" />
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-sm-6">
                                        <h1><span>SHOPLA</span>LAPEE</h1>
                                        <h2>100% Quality Items</h2>
                                        <p>We guarantee the best items quality possible</p>
                                        <button type="button" class="btn btn-default get">Get it now</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="${pageContext.request.contextPath}/images/home/girl2.jpg" class="girl img-responsive" alt="" />
                                        <img src="${pageContext.request.contextPath}/images/home/pricing.png"  class="pricing" alt="" />
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="col-sm-6">
                                        <h1><span>SHOPLA</span>LAPEE</h1>   
                                        <h2>Best E-Commerce Site</h2>
                                        <p>Highest quality e-commerce site you will ever find</p>
                                        <button type="button" class="btn btn-default get">Get it now</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="${pageContext.request.contextPath}/images/home/girl3.jpg" class="girl img-responsive" alt="" />
                                        <img src="${pageContext.request.contextPath}/images/home/pricing.png" class="pricing" alt="" />
                                    </div>
                                </div>

                            </div>

                            <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                                <i class="fa fa-angle-left"></i>
                            </a>
                            <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </div>

                    </div>
                </div>
            </div>
        </section><!--/slider-->

        <section>
            <div class="container">
                <div class="row">
                    <div>
                        <h2>Category</h2>
                        <c:forEach items="${listCata}" var="o">
                            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                                <a class="text-decoration-none" href="listProduct?category_id=${o.category_id}">
                                    <div class="cat-item d-flex align-items-center mb-4">
                                        <div class="overflow-hidden" style="width: 100px; height: 100px;">
                                            <img class="img-fluid" src="${o.nameImage}" alt="" width="100px" height="100px">
                                        </div>
                                        <div class="flex-fill pl-3" style="margin-left: 10px;">
                                            <h6>${o.category_name}</h6>
                                            <small class="text-body">${pd.totalProductOfCategory(o.category_id)}</small>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>
                    </div>

                    <div class="col-sm-12">
                        <div class="features_items"><!--features_items-->
                            <h2 class="title text-center">--------------------- Features Items ---------------------</h2>
                            <div class="container">
                                <c:forEach items="${listProduct}" var="i">
                                    <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                                        <div class="row" style="height: 100%;">
                                            <div class="card">
                                                <div class="d-flex justify-content-between p-3">
                                                    <a href="AddWishList?pid=${i.product_id}" >
                                                        <p class="lead mb-0">Add to WishList<span class="material-symbols-outlined">favorite</span></p>
                                                    </a>
                                                </div>
                                                <a href="product?product_id=${i.product_id}">
                                                    <div class="bg-image hover-zoom ripple" data-mdb-ripple-color="light">
                                                        <img src="${i.listImage.get(0).imageProduct_url}" class="w-100"   alt="Laptop" width="100px" height="auto"/>
                                                        <div class="mask">
                                                            <div class="d-flex justify-content-start align-items-end h-100">
                                                                <h5><span class="badge bg-danger ms-2">-${i.product_percenSale}%</span></h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </a>
                                                <div class="card-body">
                                                    <div class="d-flex justify-content-between">
                                                        <p class="small " style="height: 51.4px;"><a href="listProduct?category_id=${i.category_id}" class="text-muted">${db.getCategoryById(i.category_id).category_name}</a></p>
                                                        <p class="small text-dark"><s>${Feature.format(i.product_originPrice)}VND</s></p>
                                                    </div>

                                                    <div class="d-flex justify-content-between mb-3">
                                                        <h5 style="
                                                            width: 130px;
                                                            height: 50px;
                                                            " class="mb-0">${i.product_name}</h5>
                                                        <h5 class="text-danger mb-0">${Feature.format(Feature.calculateSalePrice(i.product_originPrice,i.product_percenSale))}VND</h5>
                                                    </div>

                                                    <div class="d-flex justify-content-between mb-2">
                                                        <p class="text-muted mb-0">Available: <span class="fw-bold">${td.quantityOfProductById(i.product_id)}</span></p>
                                                        <div class="ms-auto text-warning">
                                                            <c:forEach begin="1" end="${pd.avgStarRate(i.product_id)}">
                                                                <i class="fa fa-star"></i>  
                                                            </c:forEach>
                                                            <span class="badge bg-primary ms-2">${pd.avgStarRate(i.product_id)}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div><!--/category-tab-->

                    <div class="recommended_items"><!--recommended_items-->
                        <h2 class="title text-center">recommended items</h2>

                        <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="item active">	
                                    <div class="col-sm-4">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath}/images/home/recommend1.jpg" alt="" />
                                                    <h2>$56</h2>
                                                    <p>Easy Polo Black Edition</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath}/images/home/recommend2.jpg" alt="" />
                                                    <h2>$56</h2>
                                                    <p>Easy Polo Black Edition</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath}/images/home/recommend3.jpg" alt="" />
                                                    <h2>$56</h2>
                                                    <p>Easy Polo Black Edition</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">	
                                    <div class="col-sm-4">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath}/images/home/recommend1.jpg" alt="" />
                                                    <h2>$56</h2>
                                                    <p>Easy Polo Black Edition</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath}/images/home/recommend2.jpg" alt="" />
                                                    <h2>$56</h2>
                                                    <p>Easy Polo Black Edition</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${pageContext.request.contextPath}/images/home/recommend3.jpg" alt="" />
                                                    <h2>$56</h2>
                                                    <p>Easy Polo Black Edition</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                                <i class="fa fa-angle-left"></i>
                            </a>
                            <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                                <i class="fa fa-angle-right"></i>
                            </a>			
                        </div>
                    </div><!--/recommended_items-->
                </div>
            </div>
        </section>
        <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.scrollUp.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/price-range.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.prettyPhoto.js"></script>
        <script src="${pageContext.request.contextPath}/js/main.js"></script>
        <script src="${pageContext.request.contextPath}/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/js/script.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    </body>
    <footer id="footer"><!--Footer-->
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-sm-2">
                        <div class="companyinfo">
                            <h2><span>Shop</span>lalapee</h2>
                            <p>Best E-commerce site you will ever find</p>
                        </div>
                    </div>
                    <div class="col-sm-7">
                        <div class="col-sm-3">
                            <div class="video-gallery text-center">
                                <a href="#">
                                    <div class="iframe-img">
                                        <img src="${pageContext.request.contextPath}/images/home/iframe1.png" alt="" />
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
                                        <img src="${pageContext.request.contextPath}/images/home/iframe2.png" alt="" />
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
                                        <img src="${pageContext.request.contextPath}/images/home/iframe3.png" alt="" />
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
                                        <img src="${pageContext.request.contextPath}/images/home/iframe4.png" alt="" />
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
                            <img src="${pageContext.request.contextPath}/images/home/map.png" alt="" />
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
                                <li><a href="#">Online Help</a></li>
                                <li><a href="#">Contact Us</a></li>
                                <li><a href="#">Order Status</a></li>
                                <li><a href="#">Change Location</a></li>
                                <li><a href="#">FAQ’s</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="single-widget">
                            <h2>Quick Shop</h2>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#">T-Shirt</a></li>
                                <li><a href="#">Mens</a></li>
                                <li><a href="#">Womens</a></li>
                                <li><a href="#">Gift Cards</a></li>
                                <li><a href="#">Shoes</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="single-widget">
                            <h2>Policies</h2>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#">Terms of Use</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Refund Policy</a></li>
                                <li><a href="#">Billing System</a></li>
                                <li><a href="#">Ticket System</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="single-widget">
                            <h2>About Shopper</h2>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#">Company Information</a></li>
                                <li><a href="#">Careers</a></li>
                                <li><a href="#">Store Location</a></li>
                                <li><a href="#">Affiliate Program</a></li>
                                <li><a href="#">Copyright</a></li>
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
                    <p class="pull-left">Copyright © 2025 SHOPLALAPEE Inc. All rights reserved.</p>
                    <p class="pull-right">Designed by <span><a target="_blank" href="http://www.themeum.com">Themeum</a></span></p>
                </div>
            </div>
        </div>

    </footer><!--/Footer-->
</html>