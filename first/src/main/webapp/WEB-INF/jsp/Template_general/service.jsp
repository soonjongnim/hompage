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
		  
		              <p style="font-family: Oswald;" ><span class="w3-large w3-bottombar w3-border-dark-grey">SERVICE</span></p>
					  <div class="w3-bar w3-center w3-white">
					    <button class="w3-bar-item w3-button tablink w3-small w3-black" onclick="openTab(event,'Price')">요금안내(PRICE)</button>
					    <button class="w3-bar-item w3-button tablink w3-small w3-white" onclick="openTab(event,'History')">서비스안내</button>

					  </div>

					  <div id="Price" class="w3-container w3-border-white fr-content">
					      <p class="w3-text-black w3-small">아래 3가지형태으로 서비스중이며, 고객님의 상황에 맞게 신청해주십시요.<br>
						         먖춤형SI개발납품계약시에는 고객님이 서버를 준비해주셔야 합니다<br>
						         안정적이고 성능이 우수한   <a href="https://ucloudbiz.olleh.com/" target=_blank><span class="w3-text-red">KTucloud biz서버</span></a>를 사용중입니다 
	        			 </p>
						  <div class="w3-row-padding w3-dark-grey w3-padding-small w3-center" >
 
								   	<div class="w3-third w3-section">
								      <ul class="w3-ul w3-white w3-hover-shadow ">
								        <li class="w3-black w3-large w3-padding-32">무료홈페이지제작</li>
								        <li class="w3-padding-16 "><b>서비스정의</b><br> 
								                            <span class="w3-small">서버사용료만으로,미리준비된 템플릿으로 홈페이지 무료제작받음</span>
								        </li>
								        <li class="w3-padding-16 "><b>제작방식</b><br> 
								                         <span class="w3-small"> 고객의 요구사항을 받아서 템플릿기준으로 제작</span></li> 
								        <li class="w3-padding-16 "><b>기본화면구성</b><br> 
								                          <span class="w3-small">반응형(PC+TABLET+MOBILE동시)홈페이지으로 제공</span></li>
								        <li class="w3-padding-16">
								          <h3 class="w3-text-deep-orange w3-wide">무료</h3>
								          <span class="w3-opacity">FREE</span>
								        </li>
								        <li class="w3-padding-16 w3-opacity w3-small"><span class="w3-tag-big">별도</span> <b>easisoft초기셋팅비:</b> 최초1회 8만원</li>
								        <li class="w3-padding-16 w3-opacity w3-small"><span class="w3-tag-big">별도</span> <b>KTuCloud서버사용료:</b> 월2만원(연간결제)</li>
								        <li class="w3-light-grey w3-padding-24">
								          <button class="w3-button w3-red w3-padding-large">신청</button>
								        </li>
								      </ul>
								    </div>
								   
								    <div class="w3-third w3-section">
								      <ul class="w3-ul w3-white w3-hover-shadow">
								        <li class="w3-black w3-large w3-padding-32">유지보수포함계약</li>
								
								        <li class="w3-padding-16 "><b>BASIC.기본:</b> 월4만원<br>
								              <span class="w3-small"> 오타 및 단순링크 수정 무제한 / 콘텐츠내용수정 월1회 </span>
								        </li>
								        <li class="w3-padding-16 "><b>STANDARD.표준:</b> 월9만원<br>
								              <span class="w3-small">오타 및 단순링크 수정 무제한 / 콘텐츠내용수정 월2회 </span>
								        </li>
								        <li class="w3-padding-16 "><b>PREMIUM.프리미엄:</b> 월14만원 <br>
								             <span class="w3-small">오타 및 단순링크 수정 무제한 / 콘텐츠내용수정 월3회 </span>
								        </li>
								        <li class="w3-padding-16 ">
								          <h3 class="w3-text-deep-orange w3-wide">계약요금</h3>
								          <span class="w3-opacity">월결제(년결제시10%할인)</span>
								        </li>
								        <li class="w3-padding-16 w3-opacity w3-small"><span class="w3-tag-big ">별도</span> <b>easisoft초기셋팅비:</b> 최초1회 8만원</li>
								        <li class="w3-padding-16 w3-opacity w3-small"><span class="w3-tag-big ">별도</span> <b>KTuCloud서버사용료:</b> 월2만원(연간결제)</li>
								        <li class="w3-light-grey w3-padding-24">
								          <button class="w3-button w3-red w3-padding-large">신청</button>
								        </li>
								      </ul>
								    </div>
								    
								     <div class="w3-third w3-section">
								      <ul class="w3-ul w3-white w3-hover-shadow">
								        <li class="w3-green  w3-large w3-padding-32">먖춤형SI개발납품계약</li>
								        <li class="w3-padding-16"><b>운용서버</b> 고객사직접준비</li>
								        <li class="w3-padding-16"><b>견적상담</b> 요구기능규모에 따라 별도상담</li>
								        <li class="w3-padding-16">
								          <h3 class="w3-text-deep-orange  w3-wide">별도상담</h3>
								          <span class="w3-opacity">선금/중도금/잔금방식</span>
								        </li>
								        <li class="w3-light-grey w3-padding-24">
								          <button class="w3-button w3-red w3-padding-large">신청</button>
								        </li>
								      </ul>
								    </div>
								    
					        </div>
		  
					  </div>

					  <div id="History" class="w3-container w3-border-white fr-content" style="display:none">
					      <p class="w3-text-black w3-small">YouTube동영상</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
				            
						  </div>		  
					  </div>
					  					


		
		</div>
</div>



</body>
</html>
