<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <!--Header-part-->
 <div id="header">
   <h1><a href="dashboard.html">z-fire管理平台</a></h1>
 </div>
 <!--close-Header-part--> 

 <!--top-Header-menu-->
 <div id="user-nav" class="navbar navbar-inverse">
     <ul class="nav">
         <li  class="dropdown" id="profile-messages" >
             <a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle">
                 <i class="icon icon-user"></i>&nbsp;
                 <span class="text" id="userName">欢迎你，admin</span>&nbsp;
                 <b class="caret"></b>
             </a>
             <ul class="dropdown-menu">
                 <li><a href="#"><i class="icon-user"></i> 个人资料</a></li>
                 <li class="divider"></li>
                 <li><a href="#"><i class="icon-check"></i> 我的任务</a></li>
                 <li class="divider"></li>
                 <li><a href="login.html"><i class="icon-key"></i> 退出系统</a></li>
             </ul>
         </li>
         <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">&nbsp;退出系统</span></a></li>
     </ul>
 </div>
 <!--close-top-Header-menu-->

 <!--start-top-serch-->
 <div id="search">
     <input type="text" placeholder="搜索..."/>
     <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
 </div>
 <!--close-top-serch-->
