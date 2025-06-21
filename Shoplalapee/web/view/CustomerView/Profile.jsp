<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*" %>
<%@page import="util.*" %>
<html lang="en">

    <head>


        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />

        <title>Users / Profile </title>
        <meta content="" name="description" />
        <meta content="" name="keywords" />  

        <link href="assets/img/favicon.png" rel="icon" />
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

        <link href="https://fonts.gstatic.com" rel="preconnect" />
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet"
            />
    </head>

    <body>
        <%@include file="../../Template/navbar2.jsp" %>
        <main class="container">
            <section class="row">
                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-body text-center">
                            <img src="${s_u_tikilazapee.image}" alt="Profile" class="img-circle">
                            <h3>${s_u_tikilazapee.fullname}</h3>
                        </div>
                    </div>
                </div>

                <div class="col-sm-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <ul class="nav nav-tabs">
                                <li class="active" role="presentation"><a data-toggle="tab" role="tab" aria-controls="id" aria-expanded="false" href="#overview">Overview</a></li>
                                <li role="presentation"><a data-toggle="tab" role="tab" aria-controls="id" aria-expanded="false" href="#edit">Edit Profile</a></li>
                                <li role="presentation"><a data-toggle="tab" role="tab" aria-controls="id" aria-expanded="false" href="#password">Change Password</a></li>
                            </ul>

                            <div class="tab-content" style="margin-top: 15px">
                                <div id="overview" class="tab-pane fade in active">
                                    <h4>Profile Details</h4>
                                    <dl class="dl-horizontal">
                                        <dt>FullName</dt><dd>${s_u_tikilazapee.fullname}</dd>
                                        <dt>PhoneNumber</dt><dd>${s_u_tikilazapee.phoneNumber}</dd>
                                        <dt>Email</dt><dd>${s_u_tikilazapee.email}</dd>
                                        <dt>Gender</dt>
                                        <dd>
                                            <c:if test="${s_u_tikilazapee.gender eq 1}">Male</c:if>
                                            <c:if test="${s_u_tikilazapee.gender eq 0}">Female</c:if>
                                            <c:if test="${s_u_tikilazapee.gender eq 2}">Other</c:if>
                                            </dd>
                                            <dt>Address</dt><dd>${s_u_tikilazapee.address}</dd>
                                        <dt>Date of Birth</dt><dd>${s_u_tikilazapee.DOB}</dd>
                                    </dl>
                                </div>

                                <div id="edit" class="tab-pane fade">
                                    <form class="form-horizontal" action="myprofile" method="post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Profile Image</label>
                                            <div class="col-sm-9">
                                                <img src="${s_u_tikilazapee.image}" alt="Image" class="img-thumbnail">
                                                <input type="file" name="image" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Full Name</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="fullname" value="${s_u_tikilazapee.fullname}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Phone Number</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="phoneNumber" value="${s_u_tikilazapee.phoneNumber}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Email</label>
                                            <div class="col-sm-9">
                                                <input type="email" name="email" value="${s_u_tikilazapee.email}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Gender</label>
                                            <div class="col-sm-9">
                                                <label class="radio-inline"><input type="radio" name="gender" value="1" ${s_u_tikilazapee.gender == 1 ? 'checked' : ''}> Male</label>
                                                <label class="radio-inline"><input type="radio" name="gender" value="0" ${s_u_tikilazapee.gender == 0 ? 'checked' : ''}> Female</label>
                                                <label class="radio-inline"><input type="radio" name="gender" value="2" ${s_u_tikilazapee.gender == 2 ? 'checked' : ''}> Other</label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Address</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="address" value="${s_u_tikilazapee.address}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Date of Birth</label>
                                            <div class="col-sm-9">
                                                <input type="date" name="dobir" value="${s_u_tikilazapee.DOB}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group text-center">
                                            <button type="submit" class="btn btn-primary">Save Changes</button>
                                        </div>
                                    </form>
                                </div>

                                <div id="password" class="tab-pane fade">
                                    <form class="form-horizontal" action="ChangePassword" method="post">
                                        <input type="hidden" name="user_id" value="${s_u_tikilazapee.user_id}">
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Current Password</label>
                                            <div class="col-sm-9">
                                                <input type="password" name="current_password" id="current_password" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">New Password</label>
                                            <div class="col-sm-9">
                                                <input type="password" name="new_password" id="new_password" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Re-enter New Password</label>
                                            <div class="col-sm-9">
                                                <input type="password" name="re_new_password" id="re_new_password" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group text-center">
                                            <button type="submit" class="btn btn-primary">Change Password</button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- End #main -->

        <a
            href="#"
            class="back-to-top d-flex align-items-center justify-content-center"
            ><i class="bi bi-arrow-up-short"></i
            ></a>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                var emailField = document.getElementById('email');
                if (emailField)
                    emailField.readOnly = true;

                const image = document.querySelector('.image-box img');
                const input = document.querySelector('.image-box input');
                if (input) {
                    input.addEventListener('change', () => {
                        const fileReader = new FileReader();
                        fileReader.readAsDataURL(input.files[0]);
                        fileReader.onload = (fileReaderEvent) => {
                            image.src = fileReaderEvent.target.result;
                        };
                    });
                }
            });

            function togglePasswordVisibility(id) {
                const input = document.getElementById(id);
                const icon = input.nextElementSibling;
                if (input.type === "password") {
                    input.type = "text";
                    icon.classList.remove("fa-eye");
                    icon.classList.add("fa-eye-slash");
                } else {
                    input.type = "password";
                    icon.classList.remove("fa-eye-slash");
                    icon.classList.add("fa-eye");
                }
            }
            $('.nav-tabs a').click(function (e) {
                e.preventDefault();
                $(this).tab('show');
            });

        </script>
        <script src="js/jquery.js"></script>

        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
