<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- css,js등등 주소 재료 추가시 /static/을 꼭 붙여줘야함!! -->
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


</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">
    <input id="review-no" type="hidden" value="${review.reviewNo}"/>
    <!-- 번호 만들고 숨기기 -->
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
    <div id="content-wrapper" class="col-10 d-flex flex-column">

        <!-- Main Content -->
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
        <!-- Begin Page Content -->
        <div class="container-fluid">
            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">리뷰게시판</h1>
            <p class="mb-4">
                리뷰게시판 입니다. 미풍양속을 해치지 않는 범위 내에서
                작성해주세요.
            </p>

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">리뷰 쓰기</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table
                                class="table table-bordered"
                                width="100%"
                                cellspacing="0">
                            <tr>
                                <th>제목</th>
                                <td>
                                    <!--<input id="review-title" name="title" type="text" placeholder="제목을 입력하세요." class="form-control">-->
                                    <span>${review.title}</span>
                                </td>
                            </tr>
                            <tr>
                                <th>수료한 과정 이름</th>
                                <td>
                                    <span>${review.courseName}</span>
                                </td>
                            </tr>
                            <tr>
                                <th>작성자</th>
                                <td>
                                    <!--<input id="review-username" name="title" type="text" placeholder="" class="form-control"> -->
                                    <span>${review.userId}</span>
                                </td>
                            </tr>
                            <tr>
                                <th>내용</th>
                                <td>
                                    <textarea id="review-content" class="form-control" name="message" placeholder="내용을 입력하세요." rows="7" readonly>${review.content}</textarea>
                                </td>
                            </tr>
                        </table>
                        <div class="container">
                            <div class="row">
                                <div class="col text-left">
                                    <button onclick="location.href='/review/detail/${review.reviewNo}/recommend'" id="review-recommend-btn" class="btn btn-primary btn-icon-split">
                                            <span class="text">추천</span>
                                    </button>
                                </div>
                                <div class="col text-right">
                                    <c:choose>
                                        <c:when test="${user.userId==review.userId}">
                                            <button id="review-edit-btn" class="btn btn-primary btn-icon-split">
                                                        <span class="text">수정</span>
                                           </button>
                                           <button id="review-delete-btn" class="btn btn-primary btn-icon-split">
                                              <span class="text">삭제</span>
                                          </button>
                                        </c:when>
                                    </c:choose>

                                    <button id="review-cancel-btn" class="btn btn-light btn-icon-split">
                                        <span class="text">취소</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->


        <!-- Footer -->
        <!-- End of Footer -->
    </div>
    <!-- End of Content Wrapper -->
</div>
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

<script>
    $('#review-edit-btn').on('click', function () {
        if(confirm('글 수정을 하시겠습니까?')) {
            location.href='/review/edit/' + ${review.reviewNo}
        }
    });

    $('#review-delete-btn').on('click', function () {
        if(confirm('글을 삭제 하시겠습니까?')) {
            $.ajax({
                type:"post",
                url:"/review/delete",
                contentType: 'application/json',
                data: JSON.stringify({
                    reviewNo : ${review.reviewNo}
                }),
                dataType:"json",
                success:function(result){
                    if(result.result == 'ok') {
                        location.href='/review'
                    }
                }
            });
        }
    });

    $('#review-cancel-btn').on('click', function () {
        if(confirm('리스트 페이지로 돌아가시겠습니까?')) {
            location.href='/review'
        }
    });



</script>

</body>
</html>
