<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>博客系统首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/main.css" media="all" />
<!--[if IE 6]><link type="text/css" rel="stylesheet" href="css/ie6.css" media="all" /><![endif]-->
<script type="text/javascript" src="js/mootools.js"></script>
<script type="text/javascript" src="js/site.js"></script>
</head>
<body>
<div id="wrapper">
  <div id="container">
    <div id="scene"> c<img src="images/scene.jpg" alt="" />
      <h1>博客吐槽系统</h1>
      <div id="scale_area">
        <div id="scale_knob">&raquo; Font Size &laquo;</div>
      </div>
      <div id="menu">
        <div class="holder"> <a href="showAllArticle.action">博客首页</a> </div>
        <div class="holder"> <a href="register.jsp">注册</a> </div>
        <div class="holder"> <a href="login.jsp">登录</a> </div>
      </div>
    </div>
    <div id="content">
      <div id="col_left">
        <div class="post">
          <div class="meta"><a class="title" href="">首页</a>
            <div class="clear"></div>
          </div>
        <!-- blog -->
        
      <h1>欢迎您使用"吐槽"博客！</h1>
		 
        <div id="sidebar">
          <h2>页面导航</h2>
          <ul>
            <li><a href="showAllArticle.action">访客首页</a></li>
            <li><a href="register.jsp">注册</a></li>
            <li><a href="login.action">登录</a></li>
          </ul>
        </div>
      </div>
      <div class="clear"> </div>
    </div>
    <div id="footer">
      <div class="clear"> </div>
      <hr />
      <p class="credit">哈工大软件学院</p>
    </div>
  </div>
</div>
</body>
</html>
