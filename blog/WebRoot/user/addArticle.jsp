<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>添加吐槽</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="../css/main.css" media="all" />
<!--[if IE 6]><link type="text/css" rel="stylesheet" href="css/ie6.css" media="all" /><![endif]-->
<script type="text/javascript" src="../js/mootools.js"></script>
<script type="text/javascript" src="../js/site.js"></script>
</head>
<body>
<div id="wrapper">
  <div id="container">
    <div id="scene"> <img src="../images/scene.jpg" alt="" />
      <h1>${empty sessionScope.blogtitle ? "吐槽博客网站系统":sessionScope.blogtitle} <br/>
      		<font size="8">${empty sessionScope.idiograph ? "我的签名":sessionScope.idiograph}</font>
      		</h1>
      <div id="scale_area">
        <div id="scale_knob">&raquo; Font Size &laquo;</div>
      </div>
      <div id="menu">
        <div class="holder"> <a href="showUserAllArticle.action">用户首页</a>
         </div>
        <div class="holder"> <a href="addArticle.jsp">吐个槽</a> </div>
        <div class="holder"> <a href="showPhoto.action">相册</a> </div>
        <div class="holder"> <a href="editbloginfo.jsp">主题设置</a> </div>
        <div class="holder"> <a href="logout.action">登出</a> </div>
          <div class="holder"> <a href="../main.jsp">首页</a> </div>
      </div>
    </div>
    <div id="content">
      <div id="col_left">
        <div class="post">
          <div class="meta"></div>
          <div class="comments"><div class="comment"></div>
            <h2>吐槽中</h2>
            <form class="h" action="addArticle.action" method="post">
              <div>
                <label>标题：</label>
                <input type="text" name="title" />
              </div>
              <div>
                <label>内容：</label>
                <FCK:editor instanceName="content" basePath="/user/fckeditor" toolbarSet="myToolbar" height="400"></FCK:editor>
              </div>
              <div>
                <label></label>
                <div class="clear"> </div>
              </div>
              <div class="button_wrapper">
                <input name="提交" type="submit" class="button" value="提交" />
              </div>
            </form>
          </div>
        </div>
      </div>
      <div id="col_right">
        <div id="search_box">
            <% String search= request.getParameter("search");  %>
            <div>
              <input type="text" name="search" />
            </div>
            <div class="button_wrapper">
              <a href="www.baidu.com/s?wd=<%=search%>">百度搜索</a>
            </div>
            <div class="clear"> </div>
          
        </div>
        <div id="sidebar">
          <h2>页面导航</h2>
          <ul>
           
        	<li><a href="showUserAllArticle.action">用户首页</a></li>
        	<li><a href="addArticle.jsp">吐个槽</a></li>
       		<li><a href="showPhoto.action">云相册</a></li>
       		 <li><a href="editbloginfo.jsp">自定义主题</a></li>
       		 <li><a href="logout.action">登出</a></li>
          </ul>
        </div>
      </div>
      <div class="clear"> </div>
    </div>
    <div id="footer">
      <div class="clear"> </div>
      <hr />
      <p class="credit">吐槽系统</p>
    </div>
  </div>
</div>
</body>
</html>
