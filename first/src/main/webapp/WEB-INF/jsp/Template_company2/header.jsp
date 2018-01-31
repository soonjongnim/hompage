<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>Template_company2</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
  <link href="${pageContext.request.contextPath}/css/Template-company2.css" rel="stylesheet" >
</head>
<body id="home" >
	<nav class="navbar navbar-default navbar-fixed-top menubar"><!--네비바 모양 클래스를 사용   디포트값지정   상단에 고정  3가지 부트스트랩사용 -->
	<!-- 정의된 컨테이너 부트스트랩사용-->
	
		<div  class="col-sm-2"></div>
			<div class="col-sm-8">
				<a class="navbar-brand" href="home" style="font-family:Raleway;font-weight:bold;">easiSOFT</a>
				<div class="navbar-header">
			<button style="background-color: white" type="button"
				class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
				</div>

			<div class="collapse navbar-collapse  " id="myNavbar">
		<ul class="nav navbar-nav  ">
		   
			<li ><a href="/Template_company2/home"><b>HOME</b></a></li>
			<li><a href="#about"><b>회사소개</b></a>
				<ul class="dropdown-menu">
				
					<li class=" navbar-nav1"><a href="/Template_company2/intro" target="_top">회사개요</a></li>
					<li class=" navbar-nav1"><a href="/Template_company2/ceo" target="_top">CEO인사말</a></li>
					<li class=" navbar-nav1"><a href="/Template_company2/milestone" target="_top">마일스톤</a></li>
					<li class=" navbar-nav1"><a href="/Template_company2/finance" target="_top">재무정보</a></li>
					<li class=" navbar-nav1"><a href="/Template_company2/ciui" target="_top">CI&BI</a></li>
				</ul>
			<li><a href="#services"><b>사업영역</b></a>
				<ul class="dropdown-menu">
					<li><a href="/Template_company2/business">생활소재</a></li>
					<li><a href="/Template_company2/business2">에너지</a></li>
					<li><a href="/Template_company2/business3">인테리어</a></li>
				</ul></li>
			<li><a href="#portfolio"><b>제품소개</b></a>
				<ul class="dropdown-menu">
					<li><a href="/Template_company2/product">솔루션1</a></li>
					<li><a href="/Template_company2/product2">솔루션2</a></li>
				</ul></li>
			<li><a href="/Template_company2/careers"><b>인재채용</b></a></li>
			<li><a href="/Template_company2/contact"><b>CONTACT</b></a></li>
		</ul>
	</div>
	</div>
	<div class="col-sm-2"></div>
	</nav>
</body>
</html>