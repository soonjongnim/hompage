<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<title>Template_general</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Yanone Kaffeesatz">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Russo One">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Caesar+Dressing">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Courgette">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body>
<div  style="max-width:100%;margin-top:0px;margin-bottom:20px">
	      <div class="w3-container ">
	         <%@ include file="header.jsp"%>
	      </div>
		  <div class="w3-center" style="padding: 0px 30px;">
		  
		              <p style="font-family: Oswald;" ><span class="w3-large w3-bottombar w3-border-dark-grey">ABOUT COMPANY</span></p>
					  <div class="w3-bar w3-center w3-white">
					    <button class="w3-bar-item w3-button tablink w3-small w3-black" onclick="openTab(event,'Introduction')">회사소개</button>
					    <button class="w3-bar-item w3-button tablink w3-small w3-white" onclick="openTab(event,'History')">회사연혁</button>
					    <button class="w3-bar-item w3-button tablink w3-small w3-white" onclick="openTab(event,'Certification')">인증서허가증</button>
					  </div>

					  <div id="Introduction" class="w3-container w3-border-white fr-content">
					      <p class="w3-text-black w3-small">저희 커피점은, 2002년에 건립되어 커피 제조 판매로 시작하였으며 식당은 2005년 7월에 개업하였다 한다. <br>
						              또한, 대지 420평에 건평 104평으로 본관 1층은 커피 제조공장 및 커피전문점이며 별관으로 이탈리안 레스토랑이 있고 입구에는 제과제빵 시설이 있다.</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
 
						    <img src="${pageContext.request.contextPath}/images/Template_general/machine.jpg"  alt="Me" class="w3-image" style="display:block;margin:auto" width="100%" >
						    <div class="w3-padding-32">
						      <h4><b>I am Who I Am!</b></h4>
						      <h6><i>진정한 커피에 대한 열정으로</i></h6>
						      <p class="w3-small">
						      </p>
						    </div>
						    
						  </div>
		  
					  </div>
					  					  


					  <div id="History" class="w3-container w3-border-white fr-content" style="display:none">
					      <p class="w3-text-black w3-small">YouTube동영상</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
				            
						  </div>		  
					  </div>
					  					
		             <div id="Certification" class="w3-container w3-border-white fr-content" style="display:none">
					      <p class="w3-text-black w3-small">YouTube동영상</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
				            
						  </div>		  
					  </div>


		
		</div>
</div>



</body>
</html>
