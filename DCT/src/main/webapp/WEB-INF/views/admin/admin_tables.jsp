<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <%@ include file="../include/admin-sidebar.jsp" %>
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
                    
                    <h3 style="color: #333; margin-top: 10px;">
                    	안녕하세요. Dream Come True 관리자 페이지 입니다. 
                    </h3>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                           
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${adminLogin.adminName }</span>
                                <img class="img-profile rounded-circle"
                                    src="<c:url value='/img/undraw_profile.svg' />">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    프로필
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<c:url value='/admin/adminLogout'/>"" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    로그아웃
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Tables</h1>
                    <p class="mb-4">Dream Come True 회원의 유저 상세 현황</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">유저 현황</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>닉네임</th>
                                            <th>이메일</th>
                                            <th>가입날짜</th>
                                            <th>삭제</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>divh1203</td>
                                            <td>강한구</td>
                                            <td>hangujjing</td>
                                            <td>hangujjing@gmail.com</td>
                                            <td>2022/03/31</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>abc1234</td>
                                            <td>김하늘</td>
                                            <td>kim1234</td>
                                            <td>kim1234@gmail.com</td>
                                            <td>2022/02/31</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>aodhdh33</td>
                                            <td>홍길동</td>
                                            <td>hong</td>
                                            <td>hong@gmail.com</td>
                                            <td>2022/02/01</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>dnor92</td>
                                            <td>우현아</td>
                                            <td>dnori921</td>
                                            <td>dnori921@gmail.com</td>
                                            <td>2021/10/11</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>sungjin12</td>
                                            <td>한성진</td>
                                            <td>sungjin12</td>
                                            <td>sungjin12@gmail.com</td>
                                            <td>2021/10/11</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>naibee333</td>
                                            <td>장석문</td>
                                            <td>naibee</td>
                                            <td>naibee@naver.com</td>
                                            <td>2021/05/31</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>moonri521</td>
                                            <td>문하리</td>
                                            <td>moonri521</td>
                                            <td>moonri521@nate.com</td>
                                            <td>2020/04/05</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>teoiuqw2222</td>
                                            <td>정다은</td>
                                            <td>daeunJJang</td>
                                            <td>daeunJJang@google.com</td>
                                            <td>2021/06/05</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>river2452</td>
                                            <td>강다영</td>
                                            <td>riverda</td>
                                            <td>riverda@daum.net</td>
                                            <td>2021/06/01</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>wise5652</td>
                                            <td>김현</td>
                                            <td>wisek</td>
                                            <td>wisek@google.com</td>
                                            <td>2021/04/01</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>rakrak9552</td>
                                            <td>박이락</td>
                                            <td>rakrak</td>
                                            <td>rakrak@nate.com</td>
                                            <td>2021/04/11</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>free2652</td>
                                            <td>김자유</td>
                                            <td>freefree</td>
                                            <td>freekimk@naver.com</td>
                                            <td>2021/03/11</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>dksskrk1652</td>
                                            <td>안나가</td>
                                            <td>dkssksrk</td>
                                            <td>dksskrk@nate.com</td>
                                            <td>2021/07/12</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>wkdrlf1252</td>
                                            <td>장길산</td>
                                            <td>wkdrlf</td>
                                            <td>wkdrlf@daum.net</td>
                                            <td>2021/09/11</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>gmdgmd5952</td>
                                            <td>김홍부</td>
                                            <td>gmdgmd</td>
                                            <td>gmdgmd@naver.com</td>
                                            <td>2022/01/15</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>shfqnshfqn5552</td>
                                            <td>김놀부</td>
                                            <td>shfqnshfqn</td>
                                            <td>shfqnshfqn@naver.com</td>
                                            <td>2022/03/17</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>dudtlr4552</td>
                                            <td>황영식</td>
                                            <td>dudtlr</td>
                                            <td>dudtlr@ngoogle.com</td>
                                            <td>2021/08/11</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                         <tr>
                                            <td>dongdong2157</td>
                                            <td>김동백</td>
                                            <td>dongdong</td>
                                            <td>dongdong@naver.com</td>
                                            <td>2020/04/11</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                         <tr>
                                            <td>sevennine2122</td>
                                            <td>강칠구</td>
                                            <td>sevennine</td>
                                            <td>sevennine@naver.com</td>
                                            <td>2022/02/22</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>comecome212</td>
                                            <td>최규식</td>
                                            <td>comecome</td>
                                            <td>comecome@nate.com</td>
                                            <td>2022/02/20</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>betrayer212</td>
                                            <td>배현진</td>
                                            <td>betrayer</td>
                                            <td>betrayer@google.com</td>
                                            <td>2022/02/25</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>diver212</td>
                                            <td>황래훈</td>
                                            <td>diver</td>
                                            <td>diver@nate.com</td>
                                            <td>2022/03/02</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>handsomeGay456</td>
                                            <td>송강</td>
                                            <td>handsomeGay</td>
                                            <td>handsomeGay@nate.com</td>
                                            <td>2022/03/01</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>cuteboy756</td>
                                            <td>박보검</td>
                                            <td>cuteboy</td>
                                            <td>cuteboy@naver.com</td>
                                            <td>2022/01/05</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>prettygirl2856</td>
                                            <td>한소희</td>
                                            <td>prettygirl</td>
                                            <td>prettygirl@naver.com</td>
                                            <td>2022/01/02</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                         <tr>
                                            <td>pretty856</td>
                                            <td>김태리</td>
                                            <td>pretty</td>
                                            <td>pretty@daum.net</td>
                                            <td>2021/12/24</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                         <tr>
                                            <td>goodboy856</td>
                                            <td>남주혁</td>
                                            <td>goodboy</td>
                                            <td>goodboy@daum.net</td>
                                            <td>2021/12/24</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>jaehoon2856</td>
                                            <td>이제훈</td>
                                            <td>jaehoon</td>
                                            <td>jaehoon@google.com</td>
                                            <td>2021/10/24</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>alsdk2185</td>
                                            <td>신민아</td>
                                            <td>alsdk</td>
                                            <td>alsdk@naver.com</td>
                                            <td>2021/11/24</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>missA2385</td>
                                            <td>배수지</td>
                                            <td>missA</td>
                                            <td>missA@nate.com</td>
                                            <td>2021/08/24</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>tmdrl2875</td>
                                            <td>이승기</td>
                                            <td>tmdrl</td>
                                            <td>tmdrl@google.com</td>
                                            <td>2021/02/24</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>rhkdtn22875</td>
                                            <td>이광수</td>
                                            <td>rhkdtn</td>
                                            <td>rhdktn@naver.com</td>
                                            <td>2021/01/24</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>whdrnr2275</td>
                                            <td>김종국</td>
                                            <td>whdrnr</td>
                                            <td>whdrnr@google.com</td>
                                            <td>2021/01/24</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>wlgy4568</td>
                                            <td>송지효</td>
                                            <td>wlgy</td>
                                            <td>wlgy@google.com</td>
                                            <td>2021/07/11</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>wlsrn952</td>
                                            <td>송지효</td>
                                            <td>wlgy</td>
                                            <td>wlgy@google.com</td>
                                            <td>2021/06/11</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                         <tr>
                                            <td>thals962</td>
                                            <td>전소민</td>
                                            <td>thals</td>
                                            <td>thals@nate.com</td>
                                            <td>2021/05/11</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                         <tr>
                                            <td>tpcks562</td>
                                            <td>양세찬</td>
                                            <td>tpcks</td>
                                            <td>tpcks@google.com</td>
                                            <td>2021/01/11</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>wotjr7546</td>
                                            <td>유재석</td>
                                            <td>wotjr</td>
                                            <td>wotjr@naver.com</td>
                                            <td>2021/04/14</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                         <tr>
                                            <td>tjrwls746</td>
                                            <td>지석진</td>
                                            <td>tjrwls</td>
                                            <td>tjrwls@naver.com</td>
                                            <td>2021/01/14</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                         <tr>
                                            <td>bin746</td>
                                            <td>원빈</td>
                                            <td>bin</td>
                                            <td>bin@google.com</td>
                                            <td>2021/01/10</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                          <tr>
                                            <td>skdud7461</td>
                                            <td>이나영</td>
                                            <td>skdud</td>
                                            <td>skdud@naver.com</td>
                                            <td>2021/05/05</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                         <tr>
                                            <td>bean461</td>
                                            <td>현빈</td>
                                            <td>bean</td>
                                            <td>bean@nate.com</td>
                                            <td>2021/04/05</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>dpwls4631</td>
                                            <td>손예진</td>
                                            <td>dpwls</td>
                                            <td>dpwls@googel.com</td>
                                            <td>2021/03/05</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        <tr>
                                            <td>dntjd463</td>
                                            <td>정우성</td>
                                            <td>dntjd</td>
                                            <td>dntjd@naver.com</td>
                                            <td>2021/03/03</td>
                                            <td><button class="btn btn-danger">삭제</button></td>
                                        </tr>
                                        
                                        

                                        

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

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
                        <span aria-hidden="true">Ã</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="<c:url value='/admin/admin_login' />">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="<c:url value='/vendor/jquery/jquery.min.js' />"></script>
    <script src="<c:url value='/vendor/bootstrap/js/bootstrap.bundle.min.js' />"></script>

    <!-- Core plugin JavaScript-->
    <script src="<c:url value='/vendor/jquery-easing/jquery.easing.min.js' />"></script>

    <!-- Custom scripts for all pages-->
    <script src="<c:url value='/js/sb-admin-2.min.js' />"></script>

    <!-- Page level plugins -->
    <script src="<c:url value='/vendor/datatables/jquery.dataTables.min.js' />"></script>
    <script src="<c:url value='/vendor/datatables/dataTables.bootstrap4.min.js' />"></script>

    <!-- Page level custom scripts -->
    <script src="<c:url value='/js/demo/datatables-demo.js' />"></script>

</body>

</html>