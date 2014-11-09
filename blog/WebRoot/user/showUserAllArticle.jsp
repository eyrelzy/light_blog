<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>�ҵ�ȫ���²�</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="../css/main.css" media="all" />
<!--[if IE 6]><link type="text/css" rel="stylesheet" href="css/ie6.css" media="all" /><![endif]-->
<script type="text/javascript" src="../js/mootools.js"></script>
<script type="text/javascript" src="../js/site.js"></script>
</head>
<body>
<div id="wrapper">
  <div id="container">
    <div id="scene"> c<img src="../images/scene.jpg" alt="" />
       <h1>${empty sessionScope.blogtitle ? "�²�ϵͳ":sessionScope.blogtitle} <br/>
      		<font size="8">${empty sessionScope.idiograph ? "�ҵ�ǩ��":sessionScope.idiograph}</font>
      		</h1>
      <div id="scale_area">
        <div id="scale_knob">&raquo; Font Size &laquo;</div>
      </div>
      <div id="menu">
      
       <div class="holder"> <a href="showUserAllArticle.action">�û���ҳ</a>
         </div>
          <div class="holder"> <a href="../main.jsp">��ҳ</a>
         </div>
        <div class="holder"> <a href="addArticle.jsp">�¸���</a> </div>
        <div class="holder"> <a href="showPhoto.action">���</a> </div>
        <div class="holder"> <a href="editbloginfo.jsp">��������</a> </div>
        <div class="holder"> <a href="logout.action">�ǳ�</a> </div>
            </div>
    <div id="content">
    
        <div class="post">
          <div class="meta"><a class="title" href="">�ҵ�ȫ������</a>
            <div class="clear"></div>
          </div>
        <!-- ѭ����� -->
		<s:iterator value="#request.all" id="art" status="sta">
          <div class="comments">
            <div class="comment">
              <div class="meta"> <span><a href="showArticle.action?username=<s:property value='#art.username'/>&id=<s:property value='#art.id'/>"><s:property value="#art.title"/></a> <small>:</small></span>
                <div class="clear"> </div>
              </div>
            </div>
            <div class="comment alt">
              <div class="meta"><span class="datetime">
              	<!-- ����ʱ�� -->
														������:
														<s:date name="#art.date"/>
														<!-- ���������� -->
														|����(<s:property value="#request.critiqueCounts[#sta.index]"/>)|���(<s:property value="#art.hasread"/>)
														|<a href="deleteArticle.action?id=<s:property value='#art.id'/>">ɾ��</a>
														|<a href="editArticle.action?username=<s:property value='#art.username'/>&id=<s:property value='#art.id'/>">�༭</a>
              </span>
                <div class="clear"> </div>
              </div>
            </div>
          </div>
		 </s:iterator>
		  <div class="comment" align="center">
		  	��ǰ��${page.currentPage}ҳ����${page.totalPage}ҳ��ÿҳ��ʾ${page.everyPage}����¼
			<s:if test="#request.page.hasPrePage">
				<a href="showUserAllArticle.action?currentPage=1">��ҳ</a>
				<a href="showUserAllArticle.action?currentPage=${page.currentPage -1 }">��һҳ</a>
			</s:if>
			<s:else>
				��ҳ
				��һҳ
			</s:else>
			
			<s:if test="#request.page.hasNextPage">
				<a href="showUserAllArticle.action?currentPage=${page.currentPage + 1 }">��һҳ</a>
				<a href="showUserAllArticle.action?currentPage=${page.totalPage }">βҳ</a>			
			</s:if>
			<s:else>
				��һҳ
				βҳ
			</s:else>
		  </div>
        </div>
       
    <div id="footer">
      <div class="clear"> </div>
      <hr />
      <p class="credit">�²� ϵͳ</p>
    </div>
  </div>
</div>
</body>
</html>