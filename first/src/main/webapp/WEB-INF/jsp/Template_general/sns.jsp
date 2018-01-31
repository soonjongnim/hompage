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
		  
		              <p style="font-family: Oswald;" ><span class="w3-large w3-bottombar w3-border-dark-grey">STORY</span></p>
					  <div class="w3-bar w3-center w3-white">
					    <button class="w3-bar-item w3-button tablink w3-small w3-black" onclick="openTab(event,'Instagram')">Instagram</button>
					    <button class="w3-bar-item w3-button tablink w3-small w3-white" onclick="openTab(event,'YouTube')">YouTube</button>
					    <button class="w3-bar-item w3-button tablink w3-small w3-white" onclick="openTab(event,'Facebook')">Facebook</button>

					  </div>

					  <div id="Instagram" class="w3-container w3-border-white fr-content">
					      <p class="w3-text-black w3-small">게시판도 좋지만 요즘은 인스타그램 SNS를 통하여 사진콘텐츠등을 많이 홈페이지에 실시간으로 보여줘서<br>
	                                              손님들과 소통하고 마케팅으로 연결합니다. 팔로우를 맺어주세요    </p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
 
							    <div class="w3-col l3 s4 w3-light-grey">
							         <img src="${pageContext.request.contextPath}/images/Template_general/shop1.png" style="width:100%" class="w3-hover-opacity">
							    </div>
							    <div class="w3-col l3 s4 w3-light-grey">
							         <img src="${pageContext.request.contextPath}/images/Template_general/shop2.png" style="width:100%" class="w3-hover-opacity">
							    </div>
							    <div class="w3-col l3 s4 w3-light-grey">
							         <img src="${pageContext.request.contextPath}/images/Template_general/shop3.png" style="width:100%" class="w3-hover-opacity">
							    </div>
							    <div class="w3-col l3 s4 w3-light-grey">
							         <img src="${pageContext.request.contextPath}/images/Template_general/shop4.png" style="width:100%" class="w3-hover-opacity">
							    </div>
							    <div class="w3-col l3 s4 w3-light-grey">
							         <img src="${pageContext.request.contextPath}/images/Template_general/shop5.png" style="width:100%" class="w3-hover-opacity">
							    </div>
							    <div class="w3-col l3 s4 w3-light-grey">
							         <img src="${pageContext.request.contextPath}/images/Template_general/shop6.png" style="width:100%" class="w3-hover-opacity">
							    </div>
												    
						  </div>
		  
					  </div>
					  					  
					  <div id="YouTube" class="w3-container w3-border-white fr-content" style="display:none">
					      <p class="w3-text-black w3-small">YouTube동영상</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
                            <iframe width="100%" height="400" src="https://www.youtube.com/embed/G63W2Rv4zY0" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
						  </div>		  
					  </div>

					  <div id="Facebook" class="w3-container w3-border-white fr-content" style="display:none">
					      <p class="w3-text-black w3-small">Facebook</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >

						  </div>		  
					  </div>
		
		</div>
</div>



</body>
</html>
