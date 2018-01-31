<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="about" class=" bg-white t-al-cen">
	<br>
	<span class="title-name">회사소개</span>
	<br><br><br> 
	<div class="row ">
		<div class="col-sm-1" >
		</div> 
		<div class="col-sm-5"> <!--  반응 그리드 작은 사이즈로 12중에 8칸만슴-->
			<span class="sub-title">
			<br><br>
			    우리회사는 고객에게 최상의 가치와 만족을 드리기 위해<br>
			    항상 노력하며, 오늘보다 더 나은 내일을 만들어 갑니다.<br>
			    감사합니다.</span><br><br><br>
			<p>자세한 회사소개를 보시려면 아래를 클릭하세요</p><br>
			<button class="btn btn-default btn-lg" ><a href="intro" target="_top">회사소개</a></button>
		</div>
		<div class="col-sm-5" >
		    <!--  		<i class="glyphicon glyphicon-signal logo  "></i> -->
			<img src="${pageContext.request.contextPath}/images/Template_company2/chart01.png"></img>
		</div>
		<div class="col-sm-1" >
		</div>
	</div>
	<br><br>
</div>
</body>
</html>