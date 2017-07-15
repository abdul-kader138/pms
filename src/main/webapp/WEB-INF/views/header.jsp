<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> Project Monitor </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <!-- Place favicon.ico in the root directory -->
    <link rel="stylesheet" href="resources/node_modules/modular_admin/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="resources/node_modules/datatable/jquery.dataTables.min.css">
    <script src="resources/node_modules/datatable/jquery.js"></script>
    <!-- Theme initialization -->
    <script>
        var themeSettings = (localStorage.getItem('themeSettings')) ? JSON.parse(localStorage.getItem('themeSettings')) :
        {};
        var themeName = themeSettings.themeName || '';
        if (themeName) {
            document.write('<link rel="stylesheet" id="theme-style" href="/resources/node_modules/modular_admin/css/app-' + themeName + '.css">');
        }
        else {
            document.write('<link rel="stylesheet" id="theme-style" href="/resources/node_modules/modular_admin/css/app.css">');
        }
    </script>
</head>

<body>
<div class="main-wrapper">
    <div class="app" id="app">
        <header class="header">
            <div class="header-block header-block-collapse hidden-lg-up">
                <button class="collapse-btn" id="sidebar-collapse-btn">
                    <i class="fa fa-bars"></i>
                </button>
            </div>
            <div class="header-block header-block-search hidden-sm-down">
                <form role="search">
                    <div class="input-container"><i class="fa fa-search"></i> <input type="search" placeholder="Search">

                        <div class="underline"></div>
                    </div>
                </form>
            </div>
            <div class="header-block header-block-nav">
                <ul class="nav-profile">
                    <li class="notifications new"><a href="" data-toggle="dropdown">
                        <i class="fa fa-bell-o"></i>
                        <sup>
                            <span class="counter">8</span>
                        </sup>
                    </a>

                        <div class="dropdown-menu notifications-dropdown-menu">
                            <ul class="notifications-container">
                                <li>
                                    <a href="" class="notification-item">
                                        <div class="img-col">
                                            <div class="img" style="background-image: url('resources/node_modules/modular_admin/assets/faces/3.jpg')"></div>
                                        </div>
                                        <div class="body-col">
                                            <p><span class="accent">Zack Alien</span> pushed new commit: <span
                                                    class="accent">Fix page load performance issue</span>. </p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="notification-item">
                                        <div class="img-col">
                                            <div class="img" style="background-image: url('resources/node_modules/modular_admin/assets/faces/5.jpg')"></div>
                                        </div>
                                        <div class="body-col">
                                            <p><span class="accent">Amaya Hatsumi</span> started new task: <span
                                                    class="accent">Dashboard UI design.</span>. </p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="notification-item">
                                        <div class="img-col">
                                            <div class="img" style="background-image: url('resources/node_modules/modular_admin/assets/faces/8.jpg')"></div>
                                        </div>
                                        <div class="body-col">
                                            <p><span class="accent">Andy Nouman</span> deployed new version of <span
                                                    class="accent">NodeJS REST Api V3</span></p>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <footer>
                                <ul>
                                    <li><a href="">
                                        View All
                                    </a></li>
                                </ul>
                            </footer>
                        </div>
                    </li>
                    <li class="profile dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                           aria-haspopup="true" aria-expanded="false">
                            <div class="img"
                                 style="background-image: url('https://avatars3.githubusercontent.com/u/3959008?v=3&s=40')"></div> <span
                                class="name">
    			      John Doe
    			    </span> </a>

                        <div class="dropdown-menu profile-dropdown-menu" aria-labelledby="dropdownMenu1"><a
                                class="dropdown-item" href="#">
                            <i class="fa fa-user icon"></i>
                            Profile
                        </a> <a class="dropdown-item" href="#">
                            <i class="fa fa-bell icon"></i>
                            Notifications
                        </a> <a class="dropdown-item" href="#">
                            <i class="fa fa-gear icon"></i>
                            Settings
                        </a>

                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="login.html">
                                <i class="fa fa-power-off icon"></i>
                                Logout
                            </a></div>
                    </li>
                </ul>
            </div>
        </header>
        <aside class="sidebar">
            <div class="sidebar-container">
                <div class="sidebar-header">
                    <div class="brand">
                        <div class="logo"><span class="l l1"></span> <span class="l l2"></span> <span
                                class="l l3"></span> <span class="l l4"></span> <span class="l l5"></span></div>
                        Modular Admin
                    </div>
                </div>
                <nav class="menu">
                    <ul class="nav metismenu" id="sidebar-menu">
                        <li class="active"><a href="index.html">
                            <i class="fa fa-home"></i> Dashboard
                        </a></li>
                        <li><a href="">
                            <i class="fa fa-th-large"></i> Items Manager
                            <i class="fa arrow"></i>
                        </a>
                            <ul>
                                <li><a href="/company">
                                   Customer Setup
                                </a></li>
                                <li><a href="item-editor.html">
                                    Item Editor
                                </a></li>
                            </ul>
                        </li>
                        <li><a href="">
                            <i class="fa fa-bar-chart"></i> Charts
                            <i class="fa arrow"></i>
                        </a>
                            <ul>
                                <li><a href="charts-flot.html">
                                    Flot Charts
                                </a></li>
                                <li><a href="charts-morris.html">
                                    Morris Charts
                                </a></li>
                            </ul>
                        </li>
                        <li><a href="">
                            <i class="fa fa-table"></i> Tables
                            <i class="fa arrow"></i>
                        </a>
                            <ul>
                                <li><a href="static-tables.html">
                                    Static Tables
                                </a></li>
                                <li><a href="responsive-tables.html">
                                    Responsive Tables
                                </a></li>
                            </ul>
                        </li>
                        <li><a href="forms.html">
                            <i class="fa fa-pencil-square-o"></i> Forms
                        </a></li>
                        <li><a href="">
                            <i class="fa fa-desktop"></i> UI Elements
                            <i class="fa arrow"></i>
                        </a>
                            <ul>
                                <li><a href="buttons.html">
                                    Buttons
                                </a></li>
                                <li><a href="cards.html">
                                    Cards
                                </a></li>
                                <li><a href="typography.html">
                                    Typography
                                </a></li>
                                <li><a href="icons.html">
                                    Icons
                                </a></li>
                                <li><a href="grid.html">
                                    Grid
                                </a></li>
                            </ul>
                        </li>
                        <li><a href="">
                            <i class="fa fa-file-text-o"></i> Pages
                            <i class="fa arrow"></i>
                        </a>
                            <ul>
                                <li><a href="login.html">
                                    Login
                                </a></li>
                                <li><a href="signup.html">
                                    Sign Up
                                </a></li>
                                <li><a href="reset.html">
                                    Reset
                                </a></li>
                                <li><a href="error-404.html">
                                    Error 404 App
                                </a></li>
                                <li><a href="error-404-alt.html">
                                    Error 404 Global
                                </a></li>
                                <li><a href="error-500.html">
                                    Error 500 App
                                </a></li>
                                <li><a href="error-500-alt.html">
                                    Error 500 Global
                                </a></li>
                            </ul>
                        </li>
                        <li><a href="https://github.com/modularcode/modular-admin-html">
                            <i class="fa fa-github-alt"></i> Theme Docs
                        </a></li>
                    </ul>
                </nav>
            </div>
            <footer class="sidebar-footer">
                <ul class="nav metismenu" id="customize-menu">
                    <li>
                        <ul>
                            <li class="customize">
                                <div class="customize-item">
                                    <div class="row customize-header">
                                        <div class="col-xs-4"></div>
                                        <div class="col-xs-4"><label class="title">fixed</label></div>
                                        <div class="col-xs-4"><label class="title">static</label></div>
                                    </div>
                                    <div class="row hidden-md-down">
                                        <div class="col-xs-4"><label class="title">Sidebar:</label></div>
                                        <div class="col-xs-4"><label>
                                            <input class="radio" type="radio" name="sidebarPosition"
                                                   value="sidebar-fixed">
                                            <span></span>
                                        </label></div>
                                        <div class="col-xs-4"><label>
                                            <input class="radio" type="radio" name="sidebarPosition" value="">
                                            <span></span>
                                        </label></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-4"><label class="title">Header:</label></div>
                                        <div class="col-xs-4"><label>
                                            <input class="radio" type="radio" name="headerPosition"
                                                   value="header-fixed">
                                            <span></span>
                                        </label></div>
                                        <div class="col-xs-4"><label>
                                            <input class="radio" type="radio" name="headerPosition" value="">
                                            <span></span>
                                        </label></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-4"><label class="title">Footer:</label></div>
                                        <div class="col-xs-4"><label>
                                            <input class="radio" type="radio" name="footerPosition"
                                                   value="footer-fixed">
                                            <span></span>
                                        </label></div>
                                        <div class="col-xs-4"><label>
                                            <input class="radio" type="radio" name="footerPosition" value="">
                                            <span></span>
                                        </label></div>
                                    </div>
                                </div>
                                <div class="customize-item">
                                    <ul class="customize-colors">
                                        <li><span class="color-item color-red" data-theme="red"></span></li>
                                        <li><span class="color-item color-orange" data-theme="orange"></span></li>
                                        <li><span class="color-item color-green active" data-theme=""></span></li>
                                        <li><span class="color-item color-seagreen" data-theme="seagreen"></span></li>
                                        <li><span class="color-item color-blue" data-theme="blue"></span></li>
                                        <li><span class="color-item color-purple" data-theme="purple"></span></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                        <a href="">
                            <i class="fa fa-cog"></i> Customize
                        </a></li>
                </ul>
            </footer>
        </aside>
        <div class="sidebar-overlay" id="sidebar-overlay"></div>
