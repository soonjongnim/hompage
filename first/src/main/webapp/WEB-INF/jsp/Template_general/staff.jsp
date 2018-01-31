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
		  
		              <p style="font-family: Oswald;" ><span class="w3-large w3-bottombar w3-border-dark-grey">STAFF</span></p>
					  <div class="w3-bar w3-center w3-white">
					    <button class="w3-bar-item w3-button tablink w3-small w3-black" onclick="openTab(event,'Introduction')">스텝진</button>
					    <button class="w3-bar-item w3-button tablink w3-small w3-white" onclick="openTab(event,'History')">조직도</button>

					  </div>

					  <div id="Introduction" class="w3-container w3-border-white fr-content">
					      <p class="w3-text-black w3-small">항상 고객님들의 만족을 위하여 전문성과 최선의 노역을 다하겠습니다. <br>
	                                            고객님 회사의 전문가들으로 구성하여 보여줍니다</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
					                 <div class="w3-col l4 s12  w3-padding-small">
								      <div class="w3-center w3-border w3-padding-32">
								        <img src="${pageContext.request.contextPath}/images/Template_general/baristar0.jpg" alt="John" class="w3-circle" style="width:150px; height:150px;">
								        <div class="w3-container">
								          <h3>김사랑</h3>
								          <p class="w3-opacity">점장</p>
								          <p class="w3-small">우리회사의 주요인물소개란입니다. 인사말이나 수행역할등의 자세한 설명을 기록하는곳입니다</p>
								          <p><button class="w3-button  w3-tag-big">E-mail</button></p>
								        </div>
								      </div>
								    </div>
								
								    <div class="w3-col l4 s12 w3-padding-small">
								      <div class="w3-center w3-border w3-padding-32">
								        <img src="${pageContext.request.contextPath}/images/Template_general/baristar2.png" alt="Mike" class="w3-circle" style="width:150px;   height:150px;">
								        <div class="w3-container">
								          <h3>이종현</h3>
								          <p class="w3-opacity">바리스타</p>
								          <p class="w3-small">우리회사의 주요인물소개란입니다. 인사말이나 수행역할등의 자세한 설명을 기록하는곳입니다</p>
								          <p><button class="w3-button w3-tag-big">E-mail</button></p>
								        </div>
								      </div>
								    </div>
								
								    <div class="w3-col l4 s12 w3-padding-small">
								      <div class="w3-center w3-border w3-padding-32">
								        <img src="${pageContext.request.contextPath}/images/Template_general/baristar1.png" alt="Jane" class="w3-circle" style="width:150px;  height:150px;">
								        <div class="w3-container">
								          <h3>다니엘킴</h3>
								          <p class="w3-opacity">바리스타</p>
								          <p class="w3-small">우리회사의 주요인물소개란입니다. 인사말이나 수행역할등의 자세한 설명을 기록하는곳입니다</p>
								          <p><button class="w3-button w3-tag-big">E-mail</button></p>
								        </div>
								      </div>
								    </div>
						    
						  </div>
		  
					  </div>
					  <div id="History" class="w3-container w3-border-white fr-content" style="display:none">
					      <p class="w3-text-black w3-small">조직도</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
				            
						  </div>		  
					  </div>



		
		</div>
</div>



</body>
</html>
