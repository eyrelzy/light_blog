<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>���</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="../css/main.css" media="all" />
<!--[if IE 6]><link type="text/css" rel="stylesheet" href="css/ie6.css" media="all" /><![endif]-->
<script type="text/javascript" src="../js/mootools.js"></script>
<script type="text/javascript" src="../js/site.js"></script>
<script type="text/javascript">
		    var GB_ROOT_DIR = "./greybox/";
</script>
<script type="text/javascript" src="greybox/AJS.js"></script>
<script type="text/javascript" src="greybox/AJS_fx.js"></script>
<script type="text/javascript" src="greybox/gb_scripts.js"></script>
<link href="greybox/gb_styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
  <div id="container">
    <div id="scene"> <img src="../images/scene.jpg" alt="" />
      <h1>${empty sessionScope.blogtitle ? "����ϵͳ":sessionScope.blogtitle} <br/>
      		<font size="8">${empty sessionScope.idiograph ? "ǩ��":sessionScope.idiograph}</font>
      		</h1>
      <div id="scale_area">
        <div id="scale_knob">&raquo; Font Size &laquo;</div>
      </div>
      <div id="menu">
        <div class="holder"> <a href="../main.jsp">��ҳ</a> </div>
        <div class="holder"> <a href="showUserAllArticle.action">�û���ҳ</a> </div>
        <div class="holder"> <a href="editbloginfo.jsp">���Ի�����</a> </div>
        <div class="holder"> <a href="addArticle.jsp">�²�</a> </div>
        <div class="holder"> <a href="showPhoto.action">�����</a> </div>
      </div>
    </div>
    <div id="content">
      <div id="col_left">
        <div class="post">
          <div class="meta"></div>
          <div class="comments">
            <h2>�ϴ�ͼƬ</h2>
            <form action="photoUpload.action" method="post" enctype="multipart/form-data">
              <div>
                <label>ѡ��Ҫ�ϴ���ͼƬ��</label>
                <input type="file" name="myFile"/>
              </div>
              <div>
                <label></label>
                <div class="clear"> </div>
              </div>
              <div class="button_wrapper">
                <input name="�ύ" type="submit" class="button" value="�ϴ�" />
              </div>
            </form>
          </div>
          
          <div class="comments">
            <h2>��ʾ���ͼƬ</h2>
            <table cellspacing="5" align="center" border="1">
           	<tr>
           	<s:iterator value="#request.photoList" id="photo" status="stu">
				<td>
					<!--a href='photo/${sessionScope.username}/<s:property value="photo"/>' title="�ҵ����" rel="gb_imageset[photos]"-->
						<img src='photo/${sessionScope.username}/<s:property value="photo"/>' width="100" height="120">
					</a>
					<a href="DownLoad.action?fileName=user/photo/${sessionScope.username}/<s:property value="photo"/>">����</a> 
				</td>
				<s:if test="(#stu.index + 1) % 3 == 0">
					</tr>
					<tr>
				</s:if>
			</s:iterator>
			</table>
          </div>
        </div>
      </div>
      <div id="col_right">
        
      </div>
      <div class="clear"> </div>
    </div>
    <div id="footer">
      <div class="clear"> </div>
      <hr />
      <p class="credit">������վϵͳ</p>
    </div>
  </div>
</div>
</body>
</html>
