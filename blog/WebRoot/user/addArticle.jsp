<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>����²�</title>
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
      <h1>${empty sessionScope.blogtitle ? "�²۲�����վϵͳ":sessionScope.blogtitle} <br/>
      		<font size="8">${empty sessionScope.idiograph ? "�ҵ�ǩ��":sessionScope.idiograph}</font>
      		</h1>
      <div id="scale_area">
        <div id="scale_knob">&raquo; Font Size &laquo;</div>
      </div>
      <div id="menu">
        <div class="holder"> <a href="showUserAllArticle.action">�û���ҳ</a>
         </div>
        <div class="holder"> <a href="addArticle.jsp">�¸���</a> </div>
        <div class="holder"> <a href="showPhoto.action">���</a> </div>
        <div class="holder"> <a href="editbloginfo.jsp">��������</a> </div>
        <div class="holder"> <a href="logout.action">�ǳ�</a> </div>
          <div class="holder"> <a href="../main.jsp">��ҳ</a> </div>
      </div>
    </div>
    <div id="content">
      <div id="col_left">
        <div class="post">
          <div class="meta"></div>
          <div class="comments"><div class="comment"></div>
            <h2>�²���</h2>
            <form class="h" action="addArticle.action" method="post">
              <div>
                <label>���⣺</label>
                <input type="text" name="title" />
              </div>
              <div>
                <label>���ݣ�</label>
                <FCK:editor instanceName="content" basePath="/user/fckeditor" toolbarSet="myToolbar" height="400"></FCK:editor>
              </div>
              <div>
                <label></label>
                <div class="clear"> </div>
              </div>
              <div class="button_wrapper">
                <input name="�ύ" type="submit" class="button" value="�ύ" />
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
              <a href="www.baidu.com/s?wd=<%=search%>">�ٶ�����</a>
            </div>
            <div class="clear"> </div>
          
        </div>
        <div id="sidebar">
          <h2>ҳ�浼��</h2>
          <ul>
           
        	<li><a href="showUserAllArticle.action">�û���ҳ</a></li>
        	<li><a href="addArticle.jsp">�¸���</a></li>
       		<li><a href="showPhoto.action">�����</a></li>
       		 <li><a href="editbloginfo.jsp">�Զ�������</a></li>
       		 <li><a href="logout.action">�ǳ�</a></li>
          </ul>
        </div>
      </div>
      <div class="clear"> </div>
    </div>
    <div id="footer">
      <div class="clear"> </div>
      <hr />
      <p class="credit">�²�ϵͳ</p>
    </div>
  </div>
</div>
</body>
</html>
