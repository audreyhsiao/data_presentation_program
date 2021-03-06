<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<head>
    <title>Presentation Name</title>
    <!--引入echart.js  -->
    <script src="https://cdn.jsdelivr.net/npm/echarts@5.2.2/dist/echarts.js"></script>
    <!-- 引入jquery.js -->
    
    <script src="https://code.jquery.com/jquery-2.2.4.js" 
    integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" 
    crossorigin="anonymous"></script>
    
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
</head>

<body class="is-preload">
	<!-- <h2>歡迎<%=session.getAttribute("uname") %>登錄！</h2> -->
	
    <!-- Wrapper -->
    <div id="wrapper">

        <!-- Main -->
        <div id="main">
            <div class="inner">

                <!-- Header -->
                <header id="header">
                    <a href="index.html" class="logo"><strong>Java数据库展示作业</strong> by xyz</a>
                    <ul class="icons">
                        <!--TODO Github-->
                        <li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
                    </ul>
                </header>

                <!-- Banner -->
                <section id="banner">
                    <div class="content">
       
        
                    </div>
                    
                                <!--todo 介绍图-->
                     
                        <div>
                            <h1>Java Web<br /> </h1>
                            <p>PKU 2021 fall semester Java course</p>

                            <p>要求Web系统能够实现指标的增加、删除、修改（包括一级指标、二级指标、三级指标），其中在“Java指标体系&数据.xlsx”中标红的部分要求在数据库中一定包含，其他未标红的部分为机动部分，即提供这些数据让你们做增、删、改之用。</p>
                            <div class="features">
                                <article>
                                    <span class="icon solid fa-rocket"></span>
                                    <div class="content">
                                        <h3>動態地圖展示</h3>
                                     
                                        <ul class="actions">
                                            <li><a href="chart.jsp" class="button big">开始</a></li>
                                        </ul>
                                    </div>
                                </article>
                                <article>
                                    <span class="icon solid fa-signal"></span>
                                    <div class="content">
                                    
                                        <h3>数据库查詢</h3>
                                       
                                        <ul class="actions">
                                            <li><a href="search.jsp" class="button big">开始</a></li>
                                        </ul>
                                    </div>
                                </article>
                            </div>

                        </div>



                </section>

                <!-- Section -->

                </div>
            </div>

            <!-- Sidebar -->
            <div id="sidebar">
                <div class="inner">

                    <!-- Search -->
                    <section id="search" class="alt">
                        <form method="post" action="#">
                            <input type="text" name="query" id="query" placeholder="Search" />
                        </form>
                    </section>

                    <!-- Menu -->
                    <nav id="menu">
                        <header class="major">
                            <h2>Menu</h2>
                        </header>
                        <ul>
                            <li><a href="index.jsp">Homepage</a></li>
                           
                            <li><a href="chart.jsp">数据可视化</a></li>
                              <li><a href="serch.jsp">数据查詢</a></li>
                            
                            <li>
                                <a href="login.jsp">管理員登入</a>

                            </li>
                        </ul>
                    </nav>

                    <!-- Section -->


                    <!-- Section -->
                    <section>
                        <header class="major ">
                            <h2>小组成员</h2>
                        </header>
                   
                        <ul class="contact ">
                            <li >1900017470 萧又筑</li>
                            <li  >2000016618 周韋翰</li>
                            <li  >2000093020 李家愿</li>
                            
                        </ul>
                    </section>

                    <!-- Footer -->
                    <footer id="footer ">
                        <p class="copyright ">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com ">Unsplash</a>. Design: <a href="https://html5up.net ">HTML5 UP</a>.</p>
                    </footer>

                </div>
            </div>

        </div>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js "></script>
        <script src="assets/js/browser.min.js "></script>
        <script src="assets/js/breakpoints.min.js "></script>
        <script src="assets/js/util.js "></script>
        <script src="assets/js/main.js "></script>

</body>

</html>