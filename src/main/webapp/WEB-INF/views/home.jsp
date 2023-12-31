<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<html>
<head>
    <!-- css,js등등 주소 소스 추가시 /static/을 꼭 붙여줘야함!! -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Project 1 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="/static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            type="text/css" rel="stylesheet">
    <!--    Icon template-->
    <script src="https://kit.fontawesome.com/8fd9460f6d.js" crossorigin="anonymous"></script>
    <!-- Custom styles for this template-->
    <link href="/static/css/sb-admin-2.min.css" type="text/css" rel="stylesheet">


    <!--chartdiv1 Resource-->
    <script src="https://cdn.amcharts.com/lib/5/index.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/xy.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/percent.js"></script>

    <!-- chartdiv1 End-->

    <script src="/static/js/chartdiv1.js" type="text/javascript"></script> <!-- 메인 그래프-->
    <script src="/static/js/chartdiv2.js" type="text/javascript"></script> <!--  삼막대 그래프-->
    <script src="/static/js/chartdiv3.js" type="text/javascript"></script> <!-- 일반 막대 그래프-->
    <script src="/static/js/chartdiv4.js" type="text/javascript"></script> <!-- Reversed Value Axis-->
    <script src="/static/js/chartdiv5.js" type="text/javascript"></script> <!-- Pareto Diagram-->


    <!-- Styles -->

    <style>
        #chartdiv1 {
            width: 100%;
            height: 300px;
        }
    </style>
    <style>
        #chartdiv2 {
            width: 100%;
            height: 300px;
        }
    </style>
    <style>
        #chartdiv3 {
            width: 100%;
            height: 300px;
        }
    </style>
    <style>
        #chartdiv4 {
            width: 100%;
            height: 300px;
        }
    </style>
    <style>
        #chartdiv5 {
            width: 100%;
            height: 300px;
        }
    </style>


</head>

<body id="page-top">

<!-- Page Wrapper -->
    <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
            <div class="sidebar-brand-text mx-3">CareerPath <sup></sup></div>
        </a>
        <hr class="sidebar-divider my-0">
        <li class="nav-item active">
            <a class="nav-link" href="/">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Dashboard</span>
            </a>
        </li>
        <hr class="sidebar-divider">

        <div class="sidebar-heading">
            Interface
        </div>

        <!-- Profile -->

        <li class="nav-item">
            <a class="nav-link" href="/profile">
                <i class="fa fa-id-card-o" aria-hidden="true"></i>
                <span>Profile</span>
            </a>
        </li>

        <!-- Community -->
        <li class="nav-item">
            <a class="nav-link" href="/community/list">
                <i class="fa fa-comments-o" aria-hidden="true"></i>
                <span>Community</span>
            </a>
        </li>

        <!-- training program Review -->
        <li class="nav-item">
            <a class="nav-link" href="/review/">
                <i class="fa fa-wpexplorer" aria-hidden="true"></i>
                <span>Training Program Review</span>
            </a>
        </li>

        <!-- Training program recommendation -->
        <li class="nav-item">
            <a class="nav-link" href="/recommend">
                <i class="fa fa-compass" aria-hidden="true"></i>
                <span>Program Recommendation</span>
            </a>
        </li>

    </ul>

    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>


                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                             aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small"
                                           placeholder="Search for..." aria-label="Search"
                                           aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>

                    <div class="topbar-divider d-none d-sm-block"></div>

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">${user.name}</span>
                            <img class="img-profile rounded-circle"
                                 src="/static/img/undraw_profile.svg">
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">3조 CareerPath </h1>
                </div>



                <!-- Content Row -->
                <div class="container">
                    <div class="row">
                        <div class = "col-sm">
                            <div class="card shadow mb-4">
                            <!-- Area Chart -->
                                <br>
                                <h3 align="center">IT계열 구직활동현황</h3>
                                 <div id="chartdiv1"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 1행 끝-->
                <!-- 2행 시작-->
                <div class="container">
                    <div class="row">
                        <div class = "col-sm">
                            <div class="card shadow mb-4">
                                <br>
                                <h5 align="center">IT계열 훈련프로그램 취업률</h5>
                                <div id="chartdiv2"></div> <!-- 삼막대 그래프-->
                            </div>
                        </div>

                        <div class = "col-sm">
                            <div class="card shadow mb-4">
                                <br>
                                <h5 align="center">IT계열 훈련프로그램 현황</h5>
                                <div id="chartdiv3"></div> <!--막대글프 -->
                           </div>
                        </div>
                    </div>
                </div>
                <!-- 2행끝-->
                <!-- 3행시작-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm">
                            <div class="card shadow mb-4">
                                <br>
                                <h5 align="center">IT계열 훈련프로그램 이수율</h5>
                                <div id="chartdiv4"></div>
                            </div>
                        </div>
                        <div class="col-sm">
                            <div class="card shadow mb-4">
                                <br>
                                <h5 align="center">훈련프로그램 종류 비율</h5>
                                <div id="chartdiv5"></div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>

        </div>
    </div>
    <!-- End of Main Content -->


        <!-- Footer -->

        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->
<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2021</span>
        </div>
    </div>
</footer>
<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <form id="logout" action="/logout" method="post">
                   <a href="#" onclick="document.getElementById('logout').submit()" class="btn btn-primary">Logout</a>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="/static/vendor/jquery/jquery.min.js"></script>
<script src="/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/static/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="/static/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="/static/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="/static/js/demo/chart-area-demo.js"></script>
<script src="/static/js/demo/chart-pie-demo.js"></script>

</body>

</html>
