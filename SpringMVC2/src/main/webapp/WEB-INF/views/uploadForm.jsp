<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js'></script>
<script type="text/javascript">
  var cnt=1;
  function file_add(){
	 $("#d_file").append("<br>"+"<input type='file' name='file"+cnt+"'/>"); 
	 cnt++;
  }
</script>
</head>
<body>
<div class="container">
  <h2>다중파일 업로드</h2>
  <div class="panel panel-default">
    <div class="panel-heading">스프링을 이용한 다중 파일 업로드 구현</div>
    <div class="panel-body">
	 <form class="form-horizontal" action="<c:url value='/upload.do'/>" enctype="multipart/form-data" method="post">
	  <div class="form-group">
	    <label class="control-label col-sm-2" for="id">아이디:</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="id"  name="id" placeholder="Enter id" style="width: 30%">
	    </div>
	  </div>
	  <div class="form-group">
	    <label class="control-label col-sm-2" for="name">이름:</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" id="name" name="name" placeholder="Enter name" style="width: 30%">
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label class="control-label col-sm-2" for="">파일추가:</label>
	    <div class="col-sm-10">
	      <input type="button" value="파일 추가" onClick="file_add()"><br>
	      <div id="d_file"></div>
	    </div>
	  </div>	 
	  	 
	  <div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10">
	      <button type="submit" class="btn btn-primary">업로드</button>
	    </div>
	  </div>
	</form>    
    </div>
    <div class="panel-footer">인프런 화이팅~</div>
  </div>
</div>
</body>
</html>