<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>注册</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/main.css" media="all" />
<!--[if IE 6]><link type="text/css" rel="stylesheet" href="css/ie6.css" media="all" /><![endif]-->
<script type="text/javascript" src="js/mootools.js"></script>
<script type="text/javascript" src="js/site.js"></script>
</head>
<body>
<div id="wrapper">
  <div id="container">
    <div id="scene"> <img src="images/scene.jpg" alt="" />
      <h1>welcome!</h1>
      <div id="scale_area">
        <div id="scale_knob">&raquo; Font Size &laquo;</div>
      </div>
      <div id="menu">
        <div class="holder"> <a href="showAllArticle.action">博客首页</a> </div>
        <div class="holder"> <a href="register.jsp">Blog注册</a> </div>
        <div class="holder"> <a href="login.jsp">Blog登录</a> </div>
      </div>
    </div>
    <div id="content">
      <div id="col_left">
        <div class="post">
          <div class="meta"></div>
          <div class="comments"><div class="comment"></div>
            <h2>新博客注册</h2>
            <form class="h" action="register.action" method="post">
              <div>
                <FONT face="Adobe 仿宋 Std R"><label>帐号:</label></FONT>
                <input type="text" name="username"/>*
                <s:fielderror><s:param>username</s:param></s:fielderror>
              </div>
              <div>
                <label>密码:</label>
               <input type="password" name="password"/>*
               <s:fielderror><s:param>password</s:param></s:fielderror>
              </div>
			   <div>
                <label>确认密码:</label>
                <input type="password" name="repassword"/>*
                <s:fielderror><s:param>repassword</s:param></s:fielderror>
              </div>
              <div>
                <label></label>
                <div class="clear"> </div>
              </div>
              <div class="button_wrapper">
                <input name="提交" type="submit" class="button" value="注册" />
              </div>
            </form>
          </div>
        </div>
      </div>
      <div id="col_right">
        
        <div id="sidebar">
          <h2>页面导航</h2>
          <ul>
            <li><a href="showAllArticle.action">吐槽首页</a></li>
            <li><a href="register.jsp">新人注册</a></li>
            <li><a href="login.jsp">吐槽登录</a></li>
          </ul>
        </div>
      </div>
      <div class="clear"> </div>
    </div>
    <div id="footer">
      <div class="clear"> </div>
      <hr/>
      <p class="credit">吐槽系统</p>
    </div>
  </div>
</div>
</body>
</html>
