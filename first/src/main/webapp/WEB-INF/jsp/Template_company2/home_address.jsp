<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="contact" class="container-fluid bg-white text-center">
  <span class="title-name">CONTACT</span><br>
  <br>
  <div class="row ">
   <div class="col-sm-2"></div>
   <div class="col-sm-8">
<div id="daumRoughmapContainer1513140649643" style="margin: auto;width:100%" class="root_daum_roughmap root_daum_roughmap_landing margin100"></div>
<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1513140649643",
		"key" : "kvna",
		"mapWidth" : "",
		"mapHeight" : "300"
	}).render();
</script>
</div>
<div class="col-sm-2"></div>
  </div>
 </div>
</body>
</html>