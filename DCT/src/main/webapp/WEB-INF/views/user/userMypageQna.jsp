<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    <style>

    .columns .aside_menu{
        float: left;
        margin-right: 130px;
        height: 800px;
        } 
    
    .container .row .col-md-4{
        width: 400px;
        height: 230px;
        background: rgb(193, 167, 194);
        color: #fff;
        margin: 10px;
        padding: .5rem 1rem;
        border: 3px dotted rgb(167, 166, 166);
    }

    
    .my-posts{
        display: flex;
        border: 1.5px solid pink;
        color: #000;
    }

    .my-post-list{
        margin-top: 30px;
        display: flex;
        border: 1.5px solid pink;
        color: #000;
    }

    .my-post li{
        list-style-type: none;
        float: left;
        margin-left: 20px;
    }

    .my-question {
        border-bottom: 2px solid black;
    }

    .my-question-all{
        border-bottom: 2px solid black;
    }

    .content-empty {
        font-weight: 400;
        line-height: 1.5;
        letter-spacing: -.3px;
        font-size: 13px;
        margin: auto;
        padding-top: 108px;
        height: 240px;
        text-align: center;
        color: #abb0b5;
        font-weight: 500;
    }
    
    /*aside*/

.mypage_header .container h2{
	font-size: 21px;
	margin-left: 5px;
}

.aside_menu p{
    font-size: 18px;
}

.aside_menu .menu-list .btn_wrap {
	font-size: 15px;
	color: #757575;
}

.aside_menu .menu-list a:hover, .aside_menu .menu-list a:focus {
 color: #000;
 background: #f2f2f2;
 text-decoration: none;
}

.menu-label {
	margin: 1px;
}
    </style>

<%@ include file="../include/header.jsp"%>

    <div id="wrapper">
        <header data-include-path="./include/header.html"></header>

        <section>
            <div class="mypage_header">
                <div class="container">
                    <h2>MY PAGE</h2>
                </div>
            </div>

            <div class="container">
                <div class="columns">
                    <div class="col-md-2">
                        <div class="aside_menu">
                            <aside class="sidebar_left">
                                <div class="menu_container">
                                    <p class="menu-label">?????? ??????</p>
                                    <ul class="menu-list">
                                        <li>
                                            <a class="btn_wrap " href="#">
                                                <span>?????? ??? ??????</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="btn_wrap " href="#">
                                                <span>?????? ?????? ??????</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="btn_wrap " href="#">
                                                <span>????????? ?????????</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="btn_wrap " href="#">
                                                <span>?????????</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <p class="menu-label">?????? ?????? ??????</p>
                                    <ul class="menu-list">
                                        <li>
                                            <a class="btn_wrap " href="#">
                                                <span>???????????????</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="btn_wrap " href="#">
                                                <span>????????????</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <p class="menu-label">??????</p>
                                    <ul class="menu-list">
                                        <li>
                                            <a class="btn_wrap " href="/user/userModify">
                                                <span>?????????</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </aside>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-10">
                                <div class="my-posts">
                                    <div>
                                        <ul class="my-post">
                                            <li class="my-question"><b>??????</b></li>
                                            <li class="my-free">????????????</li>
                                            <li class="my-study">?????????</li>
                                            <li class="my-bookmark">?????????</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-10">
                                <div class="my-post-cover">
                                    <div class="my-post-list">
                                        <div>
                                            <ul class="my-post">
                                                <li class="my-question-all"><b>??????</b></li>
                                                <li class="my-question-sol">??????</li>
                                                <li class="my-question-nosol">?????????</li>
                                            </ul>
                                        </div>
                                        <ul class="post-list-content">
                                            <h4 class="content-empty">???????????? ?????????????????? ????????? ????????? ?????????.</h4>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    
<%@ include file="../include/footer.jsp"%>