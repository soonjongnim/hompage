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
		  
		              <p style="font-family: Oswald;" ><span class="w3-large w3-bottombar w3-border-dark-grey">PRODUCT</span></p>
					  <div class="w3-bar w3-center w3-white">
					    <button class="w3-bar-item w3-button tablink w3-small w3-black" onclick="openTab(event,'NewArr')">New Arrival</button>
					    <button class="w3-bar-item w3-button tablink w3-small w3-white" onclick="openTab(event,'Coffee')">Coffee/Tea</button>
					    <button class="w3-bar-item w3-button tablink w3-small w3-white" onclick="openTab(event,'Smoothie')">Smoothie</button>
					    <button class="w3-bar-item w3-button tablink w3-small w3-white" onclick="openTab(event,'Dessert')">Dessert</button>
					    <button class="w3-bar-item w3-button tablink w3-small w3-white" onclick="openTab(event,'Brunch')">Brunch</button>
					  </div>

					  <div id="NewArr" class="w3-container w3-border-white fr-content">
					      <p class="w3-text-black w3-small">신상품들을 보여드립니다</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
						  
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee82.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>런치브런치 / 7,000원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>						    						        		    

						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee83.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>런치브런치 / 7,000원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee1.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>에스프레스 / 5,000원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee4.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>카푸치노 / 4,500원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee9.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>아메리카노 / 4,000원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee2.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>카페라떼 / 4,500원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>
						    
						  </div>
		  
					  </div>
					  					  
					  <div id="Coffee" class="w3-container w3-border-white fr-content" style="display:none">
					      <p class="w3-text-black w3-small">카카오 59.5%의 벨지안 다크초콜릿을 에스프레소와 함께 녹여 더욱 풍부하고 쌉싸름해진 카페모카</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee2.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>카페라떼 / 4,500원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee1.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>에스프레스 / 5,000원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee4.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>카푸치노 / 4,500원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee9.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>아메리카노 / 4,000원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>
						  </div>
		  
					  </div>
					
					  <div id="Smoothie" class="w3-container w3-border-white fr-content" style="display:none">

					      <p class="w3-text-black w3-small">리얼 딸기과육에 연유를 첨가하여 부드러우면서 딸기 본연의 맛을 살린 스무디</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee7.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>블루스무디 / 6,000원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee4.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>카푸치노 / 4,500원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee9.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>아메리카노 / 4,000원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>	    		    
						  </div>
					  </div>
					
					  <div id="Dessert" class="w3-container w3-border-white fr-content" style="display:none">
					      <p class="w3-text-black w3-small">초코칩이 들어있는 초코크림 쉬폰에 치즈크림과 쿠키분태를 토핑하여 다양한 식감을 즐기는 제품</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
						  
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee7.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>블루스무디 / 6,000원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>
						    
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee4.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>카푸치노 / 4,500원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>
						    
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee9.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>아메리카노 / 4,000원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>	
						        		    
						  </div>
					  </div>
					  
					  <div id="Brunch" class="w3-container w3-border-white fr-content" style="display:none">
					      <p class="w3-text-black w3-small">리얼 딸기과육에 연유를 첨가하여 부드러우면서 딸기 본연의 맛을 살린 스무디</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
						  
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee8.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>런치브런치 / 7,000원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>	
						    	
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee81.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>런치브런치 / 7,000원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>
						    
						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee82.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>런치브런치 / 7,000원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>						    						        		    

						    <div class="w3-col l4 s6" style="min-height:300px;">
						      <img src="${pageContext.request.contextPath}/images/Template_general/coffee83.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
						      <h6>런치브런치 / 7,000원</h6>
						      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
						    </div>	
						    
						  </div>
					  </div>
		
		</div>
</div>



</body>
</html>
