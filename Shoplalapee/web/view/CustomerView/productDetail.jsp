<<<<<<< HEAD
<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.*"  %>
<%@page import="util.*" %>
<%@page import="Model.*" %>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="author" content="">
        <meta name="keywords" content="">
        <meta name="description" content="">

        <link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500&family=Lato:wght@300;400;700&display=swap" rel="stylesheet">

        <meta charset="utf-8" />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0"
            />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="CSS/style.css" />
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"
            />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500&family=Lato:wght@300;400;700&display=swap"
            rel="stylesheet"
            />

        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link href="https://www.w3schools.com/w3css/4/w3.css" rel="stylesheet"/>
        <link
            href="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            rel="stylesheet"
            />

        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <title>Product Details Page</title>
        <link rel="stylesheet" href="style.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
            />
        <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.4.2/uicons-solid-rounded/css/uicons-solid-rounded.css'>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.4.2/uicons-regular-straight/css/uicons-regular-straight.css'>
        <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.4.2/uicons-regular-rounded/css/uicons-regular-rounded.css'>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {
                $(".wish-icon i").click(function () {
                    $(this).toggleClass("fa-heart fa-heart-o");
                });
            });
        </script>
        <style type="text/css">
            @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap");

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: "Poppins", sans-serif;
            }
            nav {
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 20px 8%;
            }
            nav .logo {
                font-size: 32px;
                font-weight: 500;
                cursor: pointer;
            }
            nav ul li {
                list-style: none;
                display: inline-block;
            }
            nav ul li a {
                display: block;
                margin: 0 10px;
                color: #000;
                font-weight: 500;
                text-decoration: none;
                font-size: 17px;
                position: relative;
            }
            nav ul li a::before {
                content: "";
                position: absolute;
                bottom: 0;
                left: 0;
                background-color: #000;
                width: 0;
                height: 2.5px;
                transition: all 0.3s ease;
            }
            nav ul li a:hover::before {
                width: 100%;
            }
            nav ul i {
                font-size: 20px;
                margin-left: 10px;
                cursor: pointer;
            }
            .flex-box {
                display: flex;
                width: 1000px;
                margin: 20px auto;
            }
            .left {
                width: 40%;
            }
            .big-img {
                width: 250px;
            }
            .big-img img {
                width: inherit;
            }
            .images {
                display: flex;
                justify-content: space-between;
                width: 60%;
                margin-top: 15px;
            }
            .small-img {
                width: 50px;
                overflow: hidden;
                border: 1.5px solid black;
            }
            .small-img img {
                width: inherit;
                cursor: pointer;
                transition: all 0.3s ease;
            }
            .small-img:hover img {
                transform: scale(1.2);
            }
            .url {
                font-size: 16px;
                font-weight: 400;
                color: rgb(0, 102, 255);
            }
            .pname {
                font-size: 22px;
                font-weight: 600;
                margin-top: 50px;
            }
            .ratings i {
                color: rgb(255, 136, 0);
            }
            .price {
                font-size: 20px;
                font-weight: 500;
                margin: 20px 0;
            }
            .size {
                display: flex;
                align-items: center;
                margin: 20px 0;
            }
            .size p {
                font-size: 18px;
                font-weight: 500;
            }
            .psize {
                width: 60px;
                height: 30px;
                border: 1px solid #ff5e00;
                color: #000;
                text-align: center;
                margin: 0 10px;
                cursor: pointer;
            }
            .psize.active {
                border-width: 1.5px;
                color: #ff5e00;
                font-weight: 500;
            }
            .quantity {
                display: flex;
            }
            .quantity p {
                font-size: 18px;
                font-weight: 500;
            }
            .quantity input {
                width: 40px;
                font-size: 17px;
                font-weight: 500;
                text-align: center;
                margin-left: 15px;
            }
            .btn-box {
                display: flex;
                margin-top: 40px;
            }
            .btn-box button {
                font-size: 18px;
                padding: 8px 25px;
                border: none;
                outline: none;
                border-radius: 6px;
                cursor: pointer;
                color: white;
            }
            .cart-btn {
                background-color: #ff5e00;
                margin-right: 20px;
            }
            .buy-btn {
                background-color: #00aeff;
                margin-right: 20px;
            }
            .wishlist-btn {
                background-color: #cccccc;
            }
            .cart-btn:hover {
                background-color: #ff3c00;
            }
            .buy-btn:hover {
                background-color: #0066ff;
            }
            .wishlist-btn:hover {
                background-color: #cccccc; /* Màu nền khi hover */

            }


            h2 {
                color: #000;
                font-size: 26px;
                font-weight: 300;
                text-align: center;
                text-transform: uppercase;
                position: relative;
                margin: 30px 0 60px;
            }
            h2::after {
                content: "";
                width: 100px;
                position: absolute;
                margin: 0 auto;
                height: 4px;
                border-radius: 1px;
                background: #7ac400;
                left: 0;
                right: 0;
                bottom: -20px;
            }
            .carousel {
                margin: 50px auto;
                padding: 0 70px;
            }
            .carousel .item {
                color: #747d89;
                min-height: 325px;
                text-align: center;
                overflow: hidden;
            }
            .carousel .thumb-wrapper {
                padding: 25px 15px;
                background: #fff;
                border-radius: 6px;
                text-align: center;
                position: relative;
                box-shadow: 0 2px 3px rgba(0,0,0,0.2);
            }
            .carousel .item .img-box {
                height: 120px;
                margin-bottom: 20px;
                width: 100%;
                position: relative;
            }
            .carousel .item img {
                max-width: 100%;
                max-height: 100%;
                display: inline-block;
                position: absolute;
                bottom: 0;
                margin: 0 auto;
                left: 0;
                right: 0;
            }
            .carousel .item h4 {
                font-size: 18px;
            }
            .carousel .item h4, .carousel .item p, .carousel .item ul {
                margin-bottom: 5px;
            }
            .carousel .thumb-content .btn {
                color: #7ac400;
                font-size: 11px;
                text-transform: uppercase;
                font-weight: bold;
                background: none;
                border: 1px solid #7ac400;
                padding: 6px 14px;
                margin-top: 5px;
                line-height: 16px;
                border-radius: 20px;
            }
            .carousel .thumb-content .btn:hover, .carousel .thumb-content .btn:focus {
                color: #fff;
                background: #7ac400;
                box-shadow: none;
            }
            .carousel .thumb-content .btn i {
                font-size: 14px;
                font-weight: bold;
                margin-left: 5px;
            }
            .carousel .item-price {
                font-size: 13px;
                padding: 2px 0;
            }
            .carousel .item-price strike {
                opacity: 0.7;
                margin-right: 5px;
            }
            .carousel-control-prev, .carousel-control-next {
                height: 44px;
                width: 40px;
                background: #7ac400;
                margin: auto 0;
                border-radius: 4px;
                opacity: 0.8;
            }
            .carousel-control-prev:hover, .carousel-control-next:hover {
                background: #78bf00;
                opacity: 1;
            }
            .carousel-control-prev i, .carousel-control-next i {
                font-size: 36px;
                position: absolute;
                top: 50%;
                display: inline-block;
                margin: -19px 0 0 0;
                z-index: 5;
                left: 0;
                right: 0;
                color: #fff;
                text-shadow: none;
                font-weight: bold;
            }
            .carousel-control-prev i {
                margin-left: -2px;
            }
            .carousel-control-next i {
                margin-right: -4px;
            }
            .carousel-indicators {
                bottom: -50px;
            }
            .carousel-indicators li, .carousel-indicators li.active {
                width: 10px;
                height: 10px;
                margin: 4px;
                border-radius: 50%;
                border: none;
            }
            .carousel-indicators li {
                background: rgba(0, 0, 0, 0.2);
            }
            .carousel-indicators li.active {
                background: rgba(0, 0, 0, 0.6);
            }
            .carousel .wish-icon {
                position: absolute;
                right: 10px;
                top: 10px;
                z-index: 99;
                cursor: pointer;
                font-size: 16px;
                color: #abb0b8;
            }
            .carousel .wish-icon .fa-heart {
                color: #ff6161;
            }
            .star-rating li {
                padding: 0;
            }
            .star-rating i {
                font-size: 14px;
                color: #ffc000;
            }

        </style>
        <%@include file="../../Template/libheader.jsp" %>
        <c:url value="/JS/jquery-3.7.1.min.js" var="libJquery"/>
    </head>
    <body>
        <%@include file="../../Template/navbar.jsp" %>
        <div class="flex-box">
            <div class="left">
                <div class="big-img">
                    <img src="${product.listImage.get(0).imageProduct_url}" alt="?" onclick="openFullscreen(this)" />
                </div>
                <div class="images">
                    <div class="small-img">
                        <img
                            src="${product.listImage.get(0).imageProduct_url}"
                            onclick="showImg(this.src)"
                            />
                    </div>
                    <div class="small-img">
                        <img
                            src="${product.listImage.get(1).imageProduct_url}"
                            onclick="showImg(this.src)"
                            />
                    </div>
                    <div class="small-img">
                        <img
                            src="${product.listImage.get(2).imageProduct_url}"
                            onclick="showImg(this.src)"
                            />
                    </div>
                    <div class="small-img">
                        <img
                            src="${product.listImage.get(3).imageProduct_url}"
                            onclick="showImg(this.src)"
                            />
                    </div>
                </div>
            </div>

            <div class="right">

                <div class="pname">${product.product_name}</div>

                <div class="star-rating">
                    <ul class="list-inline">

                        <c:forEach begin="1" end="${db.avgStarRate(i.product_id)}">
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>  
                            </c:forEach>
                    </ul>
                </div>

                <i class="d-flex justify-content-between">
                    <h4>
                        <p class="small text-dark">
                            <s>${Feature.format(product.product_originPrice)}VND</s>
                        </p>
                    </h4>
                </i>

                <i class="d-flex justify-content-between mb-3">
                    <h4 class="text-danger mb-0">
                        ${Feature.format(Feature.calculateSalePrice(product.product_originPrice,product.product_percenSale))}VND
                    </h4>
                </i>
                <div class="size">
                    <p>Type :</p>
                    <c:forEach items="${product.listType}" var="type">
                        <a class="btn btn-outline-dark fs-4 ms-3 <c:if test="${pType != null && type.type_id == pType.type_id}">active</c:if>" href="product?product_id=${product.product_id}&type=${type.type_id}<c:if test="${param.color != null}">&color=${param.color}</c:if>">${type.type_describes}</a>
                    </c:forEach>
                </div>
                <div class="size">
                    <p>Color :</p>
                    <c:if test="${pType != null}">
                        <c:forEach items="${pType.listColor}" var="color">
                            <a class="btn btn-outline-dark fs-4 ms-3 <c:if test="${color.color_id == param.color}">active</c:if>" href="product?product_id=${product.product_id}&type=${requestScope.pType.type_id}&color=${color.color_id}">${color.color_name}</a>
                        </c:forEach>    
                    </c:if>
                    <c:if test="${pType == null}">
                        <c:forEach items="${product.listColor}" var="color">
                            <a class="btn btn-outline-dark fs-4 ms-3 <c:if test="${color.color_id == param.color}">active</c:if>" href="product?product_id=${product.product_id}&color=${color.color_id}">${color.color_name}</a>
                        </c:forEach>   
                    </c:if>

                </div>
                <script>
                    // Lấy tất cả các phần tử có class 'psize'
                    const sizes = document.querySelectorAll('.psize');

                    sizes.forEach(size => {
                        // Thêm sự kiện click cho từng phần tử
                        size.addEventListener('click', function () {
                            // Xóa class 'active' từ tất cả các phần tử
                            sizes.forEach(s => s.classList.remove('active'));
                            // Thêm class 'active' vào phần tử được click
                            this.classList.add('active');
                        });
                    });
                    function getUrlParameter(name) {
                        name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
                        var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
                        var results = regex.exec(location.search);
                        return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
                    }


                    var type_id = getUrlParameter('type');
                    var color_id = getUrlParameter('color');

                    console.log("Type ID:", type_id);
                    console.log("Color ID:", color_id);
                    window.onload = function () {
                        var quantityInput = document.getElementById("quantity");
                        var addToCartButton = document.querySelector(".cart-btn");
                        var buyButton = document.querySelector(".buy-btn");
                        var availableStock = parseInt(quantityInput.max);

                        function showMessage(message) {
                            var messageElement = document.getElementById("message");
                            messageElement.textContent = message;
                            messageElement.style.color = "red";
                            messageElement.style.marginTop = "10px"; // thêm khoảng cách trên để tách biệt thông báo
                        }
                        // Disable buttons if type_id or color_id is missing
                        if (!type_id || !color_id) {
                            addToCartButton.disabled = true;
                            buyButton.disabled = true;
                            showMessage("Please select a type and color.");
                        } else if (availableStock <= 0) {
                            addToCartButton.disabled = true;
                            buyButton.disabled = true;
                            showMessage("Sold Out");
                        }
                    }
                </script>
                <div class="quantity">
                    <p>Quantity : </p>  
                    <span class="btn btn1" onclick="productAction(-1)"><i class="fa fa-minus"></i></span>
                    <input
                        id="quantity"
                        type="number"
                        min="1"
                        max="${requestScope.db.getStockByProductCharacterics(requestScope.product.product_id, requestScope.pType.type_id, requestScope.pColor.color_id)}"
                        value="1"
                        name="numberOfProduct"
                        class="input-quantity"
                        readonly
                        />
                    <span class="btn btn1" onclick="productAction(1)"><i class="fa fa-plus"></i></span>
                    <p>Available : <c:if test="${param.type != null and param.color != null}">
                            ${requestScope.db.getStockByProductCharacterics(requestScope.product.product_id, requestScope.pType.type_id, requestScope.pColor.color_id)}  
                        </c:if>
                        <c:if test="${param.type == null or param.color == null}">
                            ${requestScope.db.quantityOfProductById(product.product_id)}
                        </c:if></p>
                </div>
                <p id="message" style="margin-top: 10px;"></p> 
                <div class="btn-box">
                    <input type="hidden" name="idProduct" value="${product.product_id}" />
                    <input
                        type="hidden"
                        name="priceOfProduct"
                        value=" ${Feature.format(Feature.calculateSalePrice(product.product_originPrice,product.product_percenSale))}"
                        />
                    <button class="cart-btn" id="cart-btn-id">
                        Add to Cart
                    </button>

                    <button id="btn-buy" class="buy-btn">Buy Now</button>
                    <a  href="AddWishList?pid=${i.product_id}">
                        <button onclick="userActionWishList(this)" class="wishlist-btn">Wish List</button>
                    </a>            



                </div>
            </div>
        </div>


        <div class="flex-box">
            <div class="row">
                <div class="col-md-12 mt-3">
                    <div class="card rounded-4">
                        <div class="card-header rounded-top-4 bg-white">
                            <h4>Description</h4>
                        </div>
                        <div class="card-body rounded-bottom-4">
                            <p>${product.product_Describes}</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="flex-box">
            <div class="container p-0">
                <div class="card shadow-sm rounded-4 ps-3 pe-3 pt-1">
                    <a href="viewstore?store_id=${infoStore.user_id}">
                        <a href="viewstore?store_id=${infoStore.user_id}">
                            <div class="card-body">
                                <div class="row g-2">
                                    <div class="col-2">
                                        <div class="ratio ratio-1x1 w-50">
                                            <img class="w-100 border rounded-4" src="${infoStore.store_image}" alt="?"/>
                                        </div>
                                    </div>

                                    <div class="col-10 ps-4 pe-4">
                                        <div class="row g-3">
                                            <div class="col-4">
                                                <h5 class="fw-bold text-primary">${infoStore.store_name}</h5>
                                                <h5>${infoStore.store_phone}</h5>
                                            </div>
                                            <div class="col-4">
                                                <h5><i class="fi fi-rs-marker"></i>${infoStore.store_address}</h5>
                                                <h5>Rate: ${store.avgStarRate(i.user_id)}</h5>
                                            </div>
                                            <div class="col-4">
                                                <h5><i class="fi fi-sr-flame"></i>1000  Followers</h5>
                                                <h5>Chat</h5>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </a>
                </div>  
                </a>
            </div>

        </div>

        <div class="flex-box">
            <div class="card rounded-4 w-100">
                <div class="card-header rounded-top-4">
                    <h4>Product Review</h4>
                </div>
                <div class="card-body rounded-bottom-4">
                    <div class="row p-4 gy-4">
                        <c:choose>
                            <c:when test="${feedback.isEmpty()}">
                                <p class="text-center">No results.</p>
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${feedback}" var="i">
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="col-2">
                                                <div class="ratio-1x1 w-100">
                                                    <img style="border-radius: 50% !important; width: 50% !important;" class="w-100 border" src="image\image_avatar_user\avataruser(1).jpg" alt=""/>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <h5>Phạm Hoàng Anh <span class="text-warning"><c:forEach begin="1" end="${i.feedback_rateStars}"><i class="fa fa-star pe-2"></i></c:forEach></span> </h5> 
                                                <p>${i.feedback_comment}</p>
                                            </div>
                                            <div>
                                                <img style=""/>
                                            </div>
                                        </div>
                                        <hr>
                                    </div>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-xl">
            <div class="row">
                <div class="col-md-12">
                    <h2>Products <b>Related</b></h2>
                    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">


                        <!-- Wrapper for carousel items -->
                        <div class="carousel-inner">
                            <div class="item carousel-item active">
                                <div class="row">

                                    <c:forEach items="${requestScope.productF}" var="i">
                                        <div class="col-sm-3">

                                            <div class="thumb-wrapper">
                                                <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                                                <div class="img-box">
                                                    <img src="${i.listImage.get(0).imageProduct_url}" class="img-fluid" alt="">									
                                                </div>
                                                <a href="product?product_id=${i.product_id}">
                                                    <div class="thumb-content">
                                                        <h4>${i.product_name}</h4>									
                                                        <div class="star-rating">
                                                            <ul class="list-inline">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>

                                                            </ul>
                                                        </div>
                                                        <p class="item-price"><strike>${Feature.format(i.product_originPrice)}VND</strike> <b>${Feature.format(Feature.calculateSalePrice(i.product_originPrice,product.product_percenSale))}</b></p>
                                                        <a href="#" class="btn btn-primary">Add to WishList</a>
                                                    </div>	
                                                </a>
                                            </div>

                                        </div>
                                    </c:forEach>

                                </div>
                            </div>

                        </div>


                    </div>
                </div>
            </div>
        </div>

        <div id="modal" class="w3-modal w3-black" style="padding-top:0" onclick="this.style.display = 'none'">
            <span class="w3-button w3-black w3-xlarge w3-display-topright">&times;</span>
            <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
                <img id="img" class="w3-image w-50">
                <p id="caption"></p>
            </div>
        </div>
        <script src="${libJquery}"></script>                                             
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <script>
            let bigImg = document.querySelector(".big-img img");
            function showImg(pic) {
                bigImg.src = pic;
            }
        </script>

        <script>
            function productAction(val) {
                var x = Number(document.getElementById("quantity").value);
                var sum = x + val;
                var max = Number(
                        document.getElementById("quantity").getAttribute("max")
                        );
                var min = Number(
                        document.getElementById("quantity").getAttribute("min")
                        );
                if (sum <= max && sum >= min) {
                    document.getElementById("quantity").value = x + val;
                }
            }
            function userActionBuy(btn) {
                document.order.action = "product";
                document.order.submit();
            }
            function userActionWishList(btn) {
                document.order.action = "wishlist";
                document.order.submit();
            }

            // Modal Image Gallery
            function openFullscreen(element) {
                document.getElementById("img").src = element.src;
                document.getElementById("modal").style.display = "block";
                const caption = document.getElementById('caption');
                captionText.innerHTML = element.alt;
                console.log('HI');
            }
        </script>
        <script>
            // Lấy tất cả các phần tử có class 'psize'
            const sizes = document.querySelectorAll('.psize');

            sizes.forEach(size => {
                // Thêm sự kiện click cho từng phần tử
                size.addEventListener('click', function () {
                    // Xóa class 'active' từ tất cả các phần tử
                    sizes.forEach(s => s.classList.remove('active'));
                    // Thêm class 'active' vào phần tử được click
                    this.classList.add('active');
                });
            });
            function getUrlParameter(name) {
                name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
                var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
                var results = regex.exec(location.search);
                return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
            }


            var type_id = getUrlParameter('type');
            var color_id = getUrlParameter('color');

            console.log("Type ID:", type_id);
            console.log("Color ID:", color_id);
            window.onload = function () {
                var quantityInput = document.getElementById("quantity");
                var addToCartButton = document.querySelector(".cart-btn");
                var buyButton = document.querySelector(".buy-btn");
                var availableStock = parseInt(quantityInput.max);

                if (type_id === null || !color_id === null) {
                    addToCartButton.disabled = true;
                    buyButton.disabled = true;


                    var missingSelectionMessage = document.createElement("p");
                    missingSelectionMessage.textContent = "Please select a type and color.";
                    missingSelectionMessage.style.color = "red";
                    var quantityDiv = document.querySelector(".quantity");
                    quantityDiv.appendChild(missingSelectionMessage);
                } else if (availableStock === 0) {
                    addToCartButton.disabled = true;
                    buyButton.disabled = true;
                    var soldOutMessage = document.createElement("p");
                    soldOutMessage.textContent = "Sold Out";
                    soldOutMessage.style.color = "red";
                    var quantityDiv = document.querySelector(".quantity");
                    quantityDiv.appendChild(soldOutMessage);
                }
            }
        </script>
        <script>
            function getUrlParameter(name) {
                name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
                var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
                var results = regex.exec(location.search);
                return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
            }
            const btn_cart = document.getElementById('cart-btn-id');
            btn_cart.addEventListener('click', () => {
                const type_id = Number(getUrlParameter('type'));
                const product_id = Number(getUrlParameter("product_id"));
                const color_id = Number(getUrlParameter("color"));
                const quantity = Number(document.getElementById('quantity').value);
                $.ajax({
                    url: "/tikilazapee/cart",
                    type: 'POST',
                    contentType: 'application/json',
                    data: JSON.stringify({
                        'product_id': product_id,
                        'type_id': type_id,
                        'color_id': color_id,
                        'quantity': quantity
                    }),
                    success: function () {
                        location.href = "cart";
                    }
                });
            });
            const btn_buy = document.getElementById('btn-buy');
            btn_buy.addEventListener('click', () => {
                const type_id = Number(getUrlParameter('type'));
                const product_id = Number(getUrlParameter("product_id"));
                const color_id = Number(getUrlParameter("color"));
                const quantity = Number(document.getElementById('quantity').value);
                $.ajax({
                    url: "/tikilazapee/product",
                    type: 'POST',
                    contentType: 'application/json',
                    data: JSON.stringify({
                        'product_id': product_id,
                        'type_id': type_id,
                        'color_id': color_id,
                        'quantity': quantity
                    }),
                    success: function (response) {
                        const ID = response;
                        location.href = "payment?item_id=" + ID;
                    }
                });
            });
        </script>
    </body>
</html>
=======
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Product Details | E-Shopper</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
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
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href=""><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
								<li><a href=""><i class="fa fa-envelope"></i> info@domain.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.html"><img src="images/home/logo.png" alt="" /></a>
						</div>
						<div class="btn-group pull-right">
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									USA
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="">Canada</a></li>
									<li><a href="">UK</a></li>
								</ul>
							</div>
							
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									DOLLAR
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="">Canadian Dollar</a></li>
									<li><a href="">Pound</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-user"></i> Account</a></li>
								<li><a href=""><i class="fa fa-star"></i> Wishlist</a></li>
								<li><a href="checkout.html"><i class="fa fa-crosshairs"></i> Checkout</a></li>
								<li><a href="cart.html"><i class="fa fa-shopping-cart"></i> Cart</a></li>
								<li><a href="login.html"><i class="fa fa-lock"></i> Login</a></li>
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
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index.html">Home</a></li>
								<li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="shop.html">Products</a></li>
										<li><a href="product-details.html" class="active">Product Details</a></li> 
										<li><a href="checkout.html">Checkout</a></li> 
										<li><a href="cart.html">Cart</a></li> 
										<li><a href="login.html">Login</a></li> 
                                    </ul>
                                </li> 
								<li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="blog.html">Blog List</a></li>
										<li><a href="blog-single.html">Blog Single</a></li>
                                    </ul>
                                </li> 
								<li><a href="404.html">404</a></li>
								<li><a href="contact-us.html">Contact</a></li>
							</ul>
						</div>
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
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Category</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Sportswear
										</a>
									</h4>
								</div>
								<div id="sportswear" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="">Nike </a></li>
											<li><a href="">Under Armour </a></li>
											<li><a href="">Adidas </a></li>
											<li><a href="">Puma</a></li>
											<li><a href="">ASICS </a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#mens">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Mens
										</a>
									</h4>
								</div>
								<div id="mens" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="">Fendi</a></li>
											<li><a href="">Guess</a></li>
											<li><a href="">Valentino</a></li>
											<li><a href="">Dior</a></li>
											<li><a href="">Versace</a></li>
											<li><a href="">Armani</a></li>
											<li><a href="">Prada</a></li>
											<li><a href="">Dolce and Gabbana</a></li>
											<li><a href="">Chanel</a></li>
											<li><a href="">Gucci</a></li>
										</ul>
									</div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#womens">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Womens
										</a>
									</h4>
								</div>
								<div id="womens" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="">Fendi</a></li>
											<li><a href="">Guess</a></li>
											<li><a href="">Valentino</a></li>
											<li><a href="">Dior</a></li>
											<li><a href="">Versace</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Kids</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Fashion</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Households</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Interiors</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Clothing</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Bags</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="#">Shoes</a></h4>
								</div>
							</div>
						</div><!--/category-products-->
					
						<div class="brands_products"><!--brands_products-->
							<h2>Brands</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
									<li><a href=""> <span class="pull-right">(50)</span>Acne</a></li>
									<li><a href=""> <span class="pull-right">(56)</span>Gr�ne Erde</a></li>
									<li><a href=""> <span class="pull-right">(27)</span>Albiro</a></li>
									<li><a href=""> <span class="pull-right">(32)</span>Ronhill</a></li>
									<li><a href=""> <span class="pull-right">(5)</span>Oddmolly</a></li>
									<li><a href=""> <span class="pull-right">(9)</span>Boudestijn</a></li>
									<li><a href=""> <span class="pull-right">(4)</span>R�sch creative culture</a></li>
								</ul>
							</div>
						</div><!--/brands_products-->
						
						<div class="price-range"><!--price-range-->
							<h2>Price Range</h2>
							<div class="well">
								 <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
								 <b>$ 0</b> <b class="pull-right">$ 600</b>
							</div>
						</div><!--/price-range-->
						
						<div class="shipping text-center"><!--shipping-->
							<img src="images/home/shipping.jpg" alt="" />
						</div><!--/shipping-->
						
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">
								<img src="images/product-details/1.jpg" alt="" />
								<h3>ZOOM</h3>
							</div>
							<div id="similar-product" class="carousel slide" data-ride="carousel">
								
								  <!-- Wrapper for slides -->
								    <div class="carousel-inner">
										<div class="item active">
										  <a href=""><img src="images/product-details/similar1.jpg" alt=""></a>
										  <a href=""><img src="images/product-details/similar2.jpg" alt=""></a>
										  <a href=""><img src="images/product-details/similar3.jpg" alt=""></a>
										</div>
										<div class="item">
										  <a href=""><img src="images/product-details/similar1.jpg" alt=""></a>
										  <a href=""><img src="images/product-details/similar2.jpg" alt=""></a>
										  <a href=""><img src="images/product-details/similar3.jpg" alt=""></a>
										</div>
										<div class="item">
										  <a href=""><img src="images/product-details/similar1.jpg" alt=""></a>
										  <a href=""><img src="images/product-details/similar2.jpg" alt=""></a>
										  <a href=""><img src="images/product-details/similar3.jpg" alt=""></a>
										</div>
										
									</div>

								  <!-- Controls -->
								  <a class="left item-control" href="#similar-product" data-slide="prev">
									<i class="fa fa-angle-left"></i>
								  </a>
								  <a class="right item-control" href="#similar-product" data-slide="next">
									<i class="fa fa-angle-right"></i>
								  </a>
							</div>

						</div>
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								<img src="images/product-details/new.jpg" class="newarrival" alt="" />
								<h2>Anne Klein Sleeveless Colorblock Scuba</h2>
								<p>Web ID: 1089772</p>
								<img src="images/product-details/rating.png" alt="" />
								<span>
									<span>US $59</span>
									<label>Quantity:</label>
									<input type="text" value="3" />
									<button type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Add to cart
									</button>
								</span>
								<p><b>Availability:</b> In Stock</p>
								<p><b>Condition:</b> New</p>
								<p><b>Brand:</b> E-SHOPPER</p>
								<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
							</div><!--/product-information-->
						</div>
					</div><!--/product-details-->
					
					<div class="category-tab shop-details-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li><a href="#details" data-toggle="tab">Details</a></li>
								<li><a href="#companyprofile" data-toggle="tab">Company Profile</a></li>
								<li><a href="#tag" data-toggle="tab">Tag</a></li>
								<li class="active"><a href="#reviews" data-toggle="tab">Reviews (5)</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade" id="details" >
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery1.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery2.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery3.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery4.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="tab-pane fade" id="companyprofile" >
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery1.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery3.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery2.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery4.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="tab-pane fade" id="tag" >
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery1.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery2.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery3.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery4.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="tab-pane fade active in" id="reviews" >
								<div class="col-sm-12">
									<ul>
										<li><a href=""><i class="fa fa-user"></i>EUGEN</a></li>
										<li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
										<li><a href=""><i class="fa fa-calendar-o"></i>31 DEC 2014</a></li>
									</ul>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
									<p><b>Write Your Review</b></p>
									
									<form action="#">
										<span>
											<input type="text" placeholder="Your Name"/>
											<input type="email" placeholder="Email Address"/>
										</span>
										<textarea name="" ></textarea>
										<b>Rating: </b> <img src="images/product-details/rating.png" alt="" />
										<button type="button" class="btn btn-default pull-right">
											Submit
										</button>
									</form>
								</div>
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
													<img src="images/home/recommend1.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend2.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend3.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
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
													<img src="images/home/recommend1.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend2.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend3.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
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
		</div>
	</section>
	
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
								<li><a href="">FAQ?s</a></li>
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
					<p class="pull-left">Copyright � 2013 E-SHOPPER Inc. All rights reserved.</p>
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
>>>>>>> 562bff4783a8cd1cdf44f4752458154d813c6c0a
