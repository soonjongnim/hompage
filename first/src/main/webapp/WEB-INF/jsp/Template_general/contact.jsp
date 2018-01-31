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
		  

		              <p style="font-family: Oswald;" ><span class="w3-large w3-bottombar w3-border-dark-grey">CONTACT</span></p>

					  <div class="w3-bar w3-center w3-white">
					    <button class="w3-bar-item w3-button tablink w3-small w3-black" onclick="openTab(event,'Location1')">Location1</button>
					    <button class="w3-bar-item w3-button tablink w3-small w3-white" onclick="openTab(event,'Location2')">Location2</button>
					    <button class="w3-bar-item w3-button tablink w3-small w3-white" onclick="openTab(event,'Location3')">Location3</button>
					  </div>

					  <div id="Location1" class="w3-container w3-border-white fr-content">
					      <p class="w3-text-black w3-small"> 서울시 강서구 화곡동 1075-18 드림빌 604호 <br>
					                   지하철5호선 화곡역 5번출구 도보50m</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
						  
					        <!-- * Daum 지도 - 지도퍼가기 -->
							<!-- 1. 지도 노드 -->
							<div id="daumRoughmapContainer1513351670059" class="root_daum_roughmap root_daum_roughmap_landing" style="width:100%;height:600px; z-index=-3"></div>
							<script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>
							<script charset="UTF-8">
								new daum.roughmap.Lander({
									"timestamp" : "1513351670059",
									"key" : "kxda",
									"mapWidth" : "100%",
									"mapHeight" : "600"
								}).render();
							</script>
						    
						  </div>
		  
					  </div>
					  					  
					  <div id="Location2" class="w3-container w3-border-white fr-content" style="display:none">
					      <p class="w3-text-black w3-small">연락전화번호1</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
                                                  연락전화번호1
						  </div>
		  
					  </div>
					
					  <div id="Location3" class="w3-container w3-border-white fr-content" style="display:none">

					      <p class="w3-text-black w3-small">연락전화번호2</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
						  연락전화번호

							    		    
						  </div>
					  </div>
					


		
		</div>
</div>



</body>
</html>
