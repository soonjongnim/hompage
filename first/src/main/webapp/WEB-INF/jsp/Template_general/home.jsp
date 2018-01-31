<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<title>Template_general</title>
<meta charset="UTF-8">
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
 
<style>
html,body,h1,h2,h3,h4 {font-family:"Lato", sans-serif}
.mySlides {display:none}
.w3-tag, .fa {cursor:pointer}
.w3-tag   {height:10px;width:10px;padding:0;margin-top:6px;margin-left:6px;border-radius:50%;}
</style>
<body  oncontextmenu="return false" onselectstart="return false" ondragstart="return false">

<div  style="max-width:100%;margin-top:0px;margin-bottom:20px">
   <!----------------------------------------------------------------------------- Slideshow -->
   <div >
    <div class="w3-col l12 s12 mySlides ">
      <img src="${pageContext.request.contextPath}/images/Template_general/cafe.jpg" style="width:100%" >
      <div class="w3-container w3-display-topleft  w3-text-white">
         <%@ include file="header.jsp"%>
      </div>
      <div class="w3-display-middle  w3-container ">
          <p class="w3-xxxlarge" style="font-family:Courgette; color:#fff;">2017 Sales 30% Event</p>
          <p class="w3-large" style="font-family:Montserrat; color:#fff;">
                2017년 연말결산 마지막 이벤트할인 <br>
                2017.12.20~12.31까지</span>
          </p>
      </div>       
    </div>
    
     <div class="w3-col l12 s12 mySlides ">
      <img src="${pageContext.request.contextPath}/images/Template_general/handrift.jpg" style="width:100%"  >
      <div class="w3-display-topleft w3-container ">
         <span  style="color:#fff;" ><%@ include file="header.jsp"%> </span>
      </div>
      <div class="w3-display-middle  w3-container ">
          <p class="w3-xxxlarge" style="font-family:Courgette; color:#fff;">Sales 30% Event</p>
          <p class="w3-large" style="font-family:Montserrat; color:#fff;">
                OPEN Event <br>
                           전품목할인 50% 3일간(12.1~12.31)</span>
          </p>
      </div>       
    </div>   
    
    <div class="w3-col l12 s12 mySlides ">
      <img src="${pageContext.request.contextPath}/images/Template_general/rose.jpg" style="width:100%"  >
      <div class="w3-display-topleft w3-container ">
          <span  style="color:#fff;" ><%@ include file="header.jsp"%> </span>
      </div>
       <div class="w3-display-middle  w3-container ">
          <p class="w3-xxxlarge" style="font-family:Courgette; color:#fff;">This is Good Homepage.</p>
      </div>      
    </div> 
    
    <div class="w3-col l12 s12 mySlides ">
      <img src="${pageContext.request.contextPath}/images/Template_general/coffee.jpg" style="width:100%" >
      <div class="w3-display-topleft w3-container ">
          <%@ include file="header.jsp"%> 
      </div>
      <div class="w3-display-middle">
          <p class="w3-xxxlarge" style="font-family:Courgette;  color:#222;">Hello,Thank you for coming here.</p>
      </div>
    </div>
      
      <div class=" mySlides ">
      <img src="${pageContext.request.contextPath}/images/Template_general/roof.jpg" style="width:100%" >
      <div class="w3-display-topleft w3-container ">
          <%@ include file="header.jsp"%> 
      </div>
      <div class="w3-display-middle  w3-container ">
          <p class="w3-xxxlarge" style="font-family:Courgette; color:#222222;">Do your Best at EveryTime or EveryWhere.</p>
      </div>
    </div>
    
    <div class=" mySlides ">
      <img src="${pageContext.request.contextPath}/images/Template_general/food.jpg" style="width:100%" >
      <div class="w3-display-topleft w3-container ">
          <%@ include file="header.jsp"%> 
      </div>
       <div class="w3-display-middle  w3-container ">
          <p class="w3-xxxlarge" style="font-family:Courgette; color:#fff;">This is Good Homepage.</p>
      </div>     
    </div>    

    
    <div class="w3-black w3-display-left  w3-padding-small"  onclick="plusDivs(-1)"><i class="fa fa-angle-left w3-hover-text-dark-grey w3-xxxlarge"></i></div>
    <div class="w3-black w3-display-right w3-padding-small"  onclick="plusDivs(1)"><i class="fa fa-angle-right w3-hover-text-dark-grey w3-xxxlarge"></i></div>
      
<!--      <div class="w3-left" onclick="plusDivs(-1)"><i class="fa fa-arrow-circle-left w3-hover-text-teal"></i></div> -->
<!--      <div class="w3-right" onclick="plusDivs(1)"><i class="fa fa-arrow-circle-right w3-hover-text-teal"></i></div>      -->
      <div class="w3-center w3-large">
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(4)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(5)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(6)"></span>
<!--         <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(7)"></span> -->
<!--         <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(8)"></span> -->
<!--         <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(9)"></span> -->
      </div>
      
  </div>
 
  <!--------------------------------------------------------------------------- About  -->
  <div   style="padding:0px 50px" id="about">
  		 <div class="w3-center w3-padding-16">
	      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16" style="font-family: Yanone Kaffeesatz;">ABOUT COMPANY</span><br>
	      <br>
	      <p>저희 회사홈페이지를 방문해주셔서 감사합니다.</p>
	      <p class="w3-small"> 간략하게 회사소개드립니다.      
	      </p>		      
	     </div>
	    
		 <div class="w3-col l12 s12 w3-padding-16 w3-center">  
		    <img src="${pageContext.request.contextPath}/images/Template_general/machine.jpg"  alt="Me" class="w3-image" style="display:block;margin:auto" width="100%" >
		    <div class="w3-padding-32">
		      <h4><b>I am Who I Am!</b></h4>
		      <h6><i>진정한 커피에 대한 열정으로</i></h6>
		      <p class="w3-small">저희 커피점은, 2002년에 건립되어 커피 제조 판매로 시작하였으며 식당은 2005년 7월에 개업하였다 한다. <br>
		              또한, 대지 420평에 건평 104평으로 본관 1층은 커피 제조공장 및 커피전문점이며 별관으로 이탈리안 레스토랑이 있고 입구에는 제과제빵 시설이 있다.
		      </p>
		    </div>
		 </div>
	    
		 <div class="w3-col l12 s12 w3-padding-16 w3-center">  
            <iframe width="100%" height="400" src="https://www.youtube.com/embed/G63W2Rv4zY0" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
		 </div>

	     <div class="w3-col l12 s12 " style="height:50px;"><br><br>
	     </div>
		 <div class="w3-center">
	      <a href="#" class="w3-button w3-black  w3-small"><i class="fa fa-arrow-up w3-margin-right"></i>To the Top</a>
	     </div>
 </div>
 <hr> 
  <!--------------------------------------------------------------------------- product  -->
  <div class="w3-row "  style="padding:0px 30px"  id="product">
		   <div class="w3-center w3-padding-16">
		      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16" style="font-family: Yanone Kaffeesatz;">PRODUCT</span>
		      <br><br>
		      <p>제품소개</p>
	          <p class="w3-small">저희 회사에서 제공중인 제품사진과 설명입니다.      
	          </p>		      
		   </div>

		  <div class="w3-row-padding w3-padding-small w3-center" >
		    <div class="w3-col l2 s6" style="min-height:300px;">
		      <img src="${pageContext.request.contextPath}/images/Template_general/coffee2.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
		      <h6>카페라떼 / 4,500원</h6>
		      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
		    </div>
		    <div class="w3-col l2 s6" style="min-height:300px;">
		      <img src="${pageContext.request.contextPath}/images/Template_general/coffee1.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
		      <h6>에스프레스 / 5,000원</h6>
		      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
		    </div>
		    <div class="w3-col l2 s6" style="min-height:300px;">
		      <img src="${pageContext.request.contextPath}/images/Template_general/coffee7.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
		      <h6>블루스무디 / 6,000원</h6>
		      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
		    </div>
		    <div class="w3-col l2 s6" style="min-height:300px;">
		      <img src="${pageContext.request.contextPath}/images/Template_general/coffee4.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
		      <h6>카푸치노 / 4,500원</h6>
		      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
		    </div>
		    <div class="w3-col l2 s6" style="min-height:300px;">
		      <img src="${pageContext.request.contextPath}/images/Template_general/coffee9.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
		      <h6>아메리카노 / 4,000원</h6>
		      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
		    </div>
		    <div class="w3-col l2 s6" style="min-height:300px;">
		      <img src="${pageContext.request.contextPath}/images/Template_general/coffee8.jpg" alt="coffee" style="width:100%" class="w3-hover-opacity">
		      <h6>런치브런치 / 7,000원</h6>
		      <p class="w3-small">커피전문점에서 원두커피를 즐기는 모습을 더욱 많이 볼 수 있는데요.</p>
		    </div>		    		    
		  </div>
		  		
		  <!-- Pagination -->
		  <div class="w3-center w3-padding-32">
		    <div class="w3-bar">
		      <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
		      <a href="#" class="w3-bar-item w3-black w3-button">1</a>
		      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
		      <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
		      <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
		      <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
		    </div>
		  </div>
		  
	     <div class="w3-col l12 s12 " style="height:50px;"><br><br>
	     </div>
		 <div class="w3-center">
	      <a href="#" class="w3-button w3-black  w3-small"><i class="fa fa-arrow-up w3-margin-right"></i>To the Top</a>
	     </div>
</div>
<hr>
<!--------------------------------------------------------------------------- SNS  -->  
 <div class="w3-row "  style="padding:0px 30px" id="sns" >
  
	    <div class="w3-center w3-padding-16">
	      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16" style="font-family: Yanone Kaffeesatz;">INSTAGRAM&nbsp;&nbsp;<i class="fa fa-instagram w3-xxlarge"></i>&nbsp;&nbsp;<span class="w3-text-red">easisoft</span></span>
	      <br><br>
	      <p>소셜미디어 스토리</p>
	      <p class="w3-small">게시판도 좋지만 요즘은 인스타그램 SNS를 통하여 사진콘텐츠등을 많이 홈페이지에 실시간으로 보여줘서<br>
	              손님들과 소통하고 마케팅으로 연결합니다. 팔로우를 맺어주세요      
	     </p>		      
	    </div>
	<!--      인스타그램API연결   
    <script src="${pageContext.request.contextPath}/js/instafeed.min.js"></script>
    <script type="text/javascript">
    
    var u_id = parseInt('208882657');
    var token = '208882657.5c99d31.b3f26d49fee64a81937bc7bc8a9f0189';

    var feed = new Instafeed({
        get: 'user',
        userId: u_id,
        accessToken: token,
        limit: '6',
        template: '<a href="{{link}}" target=_blank><img src="{{image}}" width="100"" height="100" style="padding:5px;"/></a>'
    });
    feed.run();
    </script> 
    
    --> 
	    <div class="w3-col l2 s4 w3-light-grey">
	         <img src="${pageContext.request.contextPath}/images/Template_general/shop1.png" style="width:100%" class="w3-hover-opacity">
	    </div>
	    <div class="w3-col l2 s4 w3-light-grey">
	         <img src="${pageContext.request.contextPath}/images/Template_general/shop2.png" style="width:100%" class="w3-hover-opacity">
	    </div>
	    <div class="w3-col l2 s4 w3-light-grey">
	         <img src="${pageContext.request.contextPath}/images/Template_general/shop3.png" style="width:100%" class="w3-hover-opacity">
	    </div>
	    <div class="w3-col l2 s4 w3-light-grey">
	         <img src="${pageContext.request.contextPath}/images/Template_general/shop4.png" style="width:100%" class="w3-hover-opacity">
	    </div>
	    <div class="w3-col l2 s4 w3-light-grey">
	         <img src="${pageContext.request.contextPath}/images/Template_general/shop5.png" style="width:100%" class="w3-hover-opacity">
	    </div>
	    <div class="w3-col l2 s4 w3-light-grey">
	         <img src="${pageContext.request.contextPath}/images/Template_general/shop6.png" style="width:100%" class="w3-hover-opacity">
	    </div>
	    	    	    	    
	     <div class="w3-col l12 s12 " style="height:50px;"><br><br>
	     </div>
		 <div class="w3-center">
	      <a href="#" class="w3-button w3-black  w3-small"><i class="fa fa-arrow-up w3-margin-right"></i>To the Top</a>
	     </div>
  </div>
  <hr>
  <!--------------------------------------------------------------------------- BUSINESS  -->  
  <div class="w3-row "  style="padding:0px 30px" id="business" >
  
	    <div class="w3-center w3-padding-16">
	      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16" style="font-family: Yanone Kaffeesatz;">BUSINESS</span>
	      <br><br>
	      <p>사업내용</p>
	      <p class="w3-small">고객님 회사에 대한 전반적인 사업영역 등 내용을 요약해서 설명하는 곳입니다.	         
	     </p>	
	    </div>
	    
	    <div class="w3-col l3 m6 w3-light-grey w3-center  w3-padding-16">
	      <i class="fa fa-coffee w3-xxlarge"></i>
	      <h3>Coffee/Tea/Ade</h3>
	      <p>커피류/전통차/에이드 등</p>
	    </div>
	    <div class="w3-col l3 m6 w3-grey w3-center w3-padding-16">
	      <i class="fa fa-glass w3-xxlarge"></i>
	      <h3>Smoothie/Prappe</h3>
	      <p>스무디와 프라페</p>
	    </div>
	    <div class="w3-col l3 m6 w3-dark-grey w3-center w3-padding-16">
	      <i class="fa fa-cube w3-xxlarge"></i>
	      <h3>Dessert/Bread</h3>
	      <p>디저트, 브레드빵 등</p>
	    </div>
	    <div class="w3-col l3 m6 w3-black w3-center w3-padding-16">
	      <i class="fa fa-cutlery w3-xxlarge"></i>
	      <h3>Brunch/Sandwich</h3>
	      <p>브런치, 샌드위치 등</p>
	    </div>
	    
	     <div class="w3-col l12 s12 " style="height:50px;"><br><br>
	     </div>
		 <div class="w3-center">
	      <a href="#" class="w3-button w3-black  w3-small"><i class="fa fa-arrow-up w3-margin-right"></i>To the Top</a>
	     </div>
  </div>
  <!-------------------------------------------------------------- PRICE  -->
	    
  <div class="w3-row w3-center w3-dark-grey" style="padding:0px 30px" id="price">

	    <div class="w3-center w3-padding-16">
	      <span class="w3-xlarge w3-bottombar w3-border-white w3-padding-16" style="font-family: Yanone Kaffeesatz;">PRICE</span>
	      <br><br>
	      <p>요금안내</p>
	      <p class="w3-small">아래 3가지형태으로 서비스중이며, 고객님의 상황에 맞게 신청해주십시요.<br>
	         먖춤형SI개발납품계약시에는 고객님이 서버를 준비해주셔야 합니다<br>
	         안정적이고 성능이 우수한   <a href="https://ucloudbiz.olleh.com/" target=_blank><span class="w3-text-red">KTucloud biz서버</span></a>를 사용중입니다 
	     </p>
	    </div>

	  <div class="w3-row-padding" style="margin-top:20px">
	  
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
	     
	     <div class="w3-col l12 s12 " style="height:50px;"><br><br>
	     </div>
		 <div class="w3-center">
	      <a href="#" class="w3-button w3-black  w3-small"><i class="fa fa-arrow-up w3-margin-right"></i>To the Top</a>
	     </div>
  </div>
  <!------------------------------------------------------------------- STAFF -->
  <div class="w3-row" style="padding:0px 30px" id="staff" >
	    <div class="w3-center w3-padding-16">
	      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16" style="font-family: Yanone Kaffeesatz;">STAFF</span>
	      <br><br>
	      <p>스탭들</p>
	      <p class="w3-small">항상 고객님들의 만족을 위하여 전문성과 최선의 노역을 다하겠습니다. <br>
	        고객님 회사의 전문가들으로 구성하여 보여줍니다
	         
	     </p>	      
	    </div>
	    <div  class="w3-center  ">
	
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
  	    
	     <div class="w3-col l12 s12 " style="height:50px;"><br><br>
	     </div>
		 <div class="w3-center">
	      <a href="#" class="w3-button w3-black  w3-small"><i class="fa fa-arrow-up w3-margin-right"></i>To the Top</a>
	     </div>
    </div>
    <hr>
    <!----------------------------------------------------------------------------- Contact -->
    <div class="w3-row" style="padding:0px 30px" id="contact" >

	  	  <div class="w3-center w3-padding-16">
		      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16" style="font-family: Yanone Kaffeesatz;">CONTACT</span>
		      	  <br><br>
			      <p>찾아오시는길</p>
			      <p class="w3-small">서울시 강서구 화곡역5번출구 </p>
		  </div>

		  <div class="w3-margin-bottom">
			  <!-- * Daum 지도 - 지도퍼가기 -->
				<!-- 1. 지도 노드 -->
				<div id="daumRoughmapContainer1513351670059" class="root_daum_roughmap root_daum_roughmap_landing" style="width:100%;height:300px; z-index=-2"></div>
				<script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>
				<script charset="UTF-8">
					new daum.roughmap.Lander({
						"timestamp" : "1513351670059",
						"key" : "kxda",
						"mapWidth" : "100%",
						"mapHeight" : "300"
					}).render();
				</script>
			      <!-- Add Google Maps 
			      <div id="googleMap" class="w3-greyscale-max" style="width:100%;height:510px;"></div>
			      -->
	      </div>
	    
		 <div class="w3-center ">
	      <a href="#" class="w3-button w3-black  w3-small"><i class="fa fa-arrow-up w3-margin-right"></i>To the Top</a>
	     </div>
   </div>
   <hr>
   <!----------------------------------------------------------------------------- Customer -->

    <div class="w3-row" style="padding:0px 30px" id="customer" >
	  	  <div class="w3-center w3-padding-16">
		      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16" style="font-family: Yanone Kaffeesatz;">CUSTOMER</span>
		     	  <br><br>
			      <p>고객센터</p>
			      <p class="w3-small">1:1 온라인상담문의 메시지를 남겨주시면 빠른시간에 연락드리겠습니다.<br>
			                영업시간:  평일 오전9시~저녁10시 / 주말 오전10시~저녁10시
			      </p>
		  </div>
	      <div class="w3-content  "   style="max-width:900px;">
          <div class="w3-row-padding  w3-display-center w3-margin-bottom " >
			  <form class="w3-container" action="/action_page.php" target="_blank">
				    <div class="w3-section">
				      <label></label>
				      <input class="w3-input-bg w3-border w3-hover-border-black" style="width:100%;" type="text" name="Name" placeholder="Name" required>
				    </div>
				    <div class="w3-section">
				      <label></label>
				      <input class="w3-input-bg w3-border w3-hover-border-black" style="width:100%;" type="text" name="CellPhone" placeholder="CellPhone" required>
				    </div>
				    <div class="w3-section">
				      <label></label>
				      <input class="w3-input-bg w3-border w3-hover-border-black" style="width:100%;" name="Subject" placeholder="Subject" required>
				    </div>
				    <div class="w3-section">
				      <label></label>
				      <input class="w3-input-bg w3-border w3-hover-border-black" style="width:100%;" name="Message"  placeholder="Message" required>
				    </div>
				    <button type="submit" class="w3-button w3-block w3-black">SEND Messsage</button>
			  </form>
		  </div>
		  </div>
	    
	     <div class="w3-col l12 s12 " style="height:50px;"><br><br>
	     </div>
		 <div class="w3-center">
	      <a href="#" class="w3-button w3-black  w3-small"><i class="fa fa-arrow-up w3-margin-right"></i>To the Top</a>
	     </div>
  </div>
  
  
</div>  <!-- body끝부분 -->

<footer class="w3-container w3-padding-32 w3-light-grey w3-center">
 
  <span class="w3-small">
     서울시 강서구 화곡동 1075-18 드림빌 604호 주식회사 이지소프트랩<br>
   T.02-2601-2101 F.02-2601-2102 HP.010-9407-3457 nxgong@gmail.com<br>
     </span>

  
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Powered by <a href="https://www.easisoft.co.kr" title="이지소프트랩" target="_blank" class="w3-hover-text-green">easiSoft</a></p>
</footer>


<script>
// Slideshow
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demodots");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-black", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-black";

}
</script>



</body>
</html>
