<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>�ҵ�ȫ������</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="../css/main.css" media="all" />
<!--[if IE 6]><link type="text/css" rel="stylesheet" href="css/ie6.css" media="all" /><![endif]-->
<script type="text/javascript" src="../js/mootools.js"></script>
<script type="text/javascript" src="../js/site.js"></script>
</head>
<body>
<div id="wrapper">
  <div id="container">
    <div id="scene"><img src="../images/scene.jpg" alt="" />
       <h1>${empty sessionScope.blogtitle ? "������վϵͳ":sessionScope.blogtitle} <br/>
      		<font size="8">${empty sessionScope.idiograph ? "�ҵ�ǩ��":sessionScope.idiograph}</font>
      		</h1>
      <div id="scale_area">
        <div id="scale_knob">&raquo; Font Size &laquo;</div>
      </div>
      <div id="menu">
         <div class="holder"> <a href="../showAllArticle.action">������ҳ</a> </div>
        <div class="holder"> <a href="showUserAllArticle.action">�û���ҳ</a> </div>
        <div class="holder"> <a href="editbloginfo.jsp">���Ի�����</a> </div>
        <div class="holder"> <a href="addArticle.jsp">д��־</a> </div>
        <div class="holder"> <a href="showPhoto.action">���</a> 
     
                               
                              ��ӭ��ʹ��ϵͳ��̨����!</div>
      </div>
    </div>
    <div id="content">
    
        
        <div id="sidebar">
          <h2>ҳ�浼��</h2>
          <ul>
             <li><a href="../showAllArticle.action">������ҳ</a></li>
        	<li><a href="showUserAllArticle.action">�û���ҳ</a></li>
        	<li><a href="editbloginfo.jsp">���Ի�����</a></li>
        	<li><a href="addArticle.jsp">�¸���</a></li>
       		<li><a href="showPhoto.action">���</a></li>
          </ul>
        
      </div>
      <div class="clear"> </div>
    </div>
    <div id="footer">
      <div class="clear"> </div>
      <hr />
      <p class="credit">ϵͳ</p>
    </div>
  </div>
</div>
</body>
</html>
