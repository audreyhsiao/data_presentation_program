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
    <title>chart</title>
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
	
	
    <!-- Wrapper -->
    <div id="wrapper">

        <!-- Main -->
        <div id="main">
            <div class="inner">

                <!-- Header -->
                <header id="header">
                    <a href="index.html" class="logo"><strong>Java数据库展示作业</strong> by HTML5 UP</a>
                    <ul class="icons">
                        <!--TODO Github-->
                        <li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
                    </ul>
                </header>

                <!-- Banner -->
                <section id="banner">
                    
                    
                                <!--todo 介绍图-->
                     
                        <div>
                            <h1>地图显示</h1>
                            

                            
                            <div class="features">
                                <article>
                                    <span class="icon solid fa-rocket"></span>
                                    <div class="content">
                                        <h3>動態地圖展示</h3>
                                     
                                        <ul class="actions">
                                            <li><a href="map.html" class="button big">开始</a></li>
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
                                <a href="#">管理員登入</a>

                            </li>
                        </ul>
                    </nav>

                    <!-- Section -->


                    <!-- Section -->
                    <section>
                        <header class="major ">
                            <h2>Get in touch</h2>
                        </header>
                        <p>Sed varius enim lorem ullamcorper dolore aliquam aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
                        <ul class="contact ">
                            <li class="icon solid fa-envelope "><a href="# ">information@untitled.tld</a></li>
                            <li class="icon solid fa-phone ">(000) 000-0000</li>
                            <li class="icon solid fa-home ">1234 Somewhere Road #8254<br /> Nashville, TN 00000-0000</li>
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