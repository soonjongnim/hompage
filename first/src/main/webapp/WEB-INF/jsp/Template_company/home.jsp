<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<title>Template_Company</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Ubuntu">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Caesar+Dressing">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<!---  "Raleway"   -->
body,h1,h2,h3,h4,h5,h6 {font-family: Oswald, sans-serif}
body, html {
    height: 100%;
    line-height: 1.8;
}
/* Full height image header */
.bgimg-1 {
    background-position: center;
    background-size: cover;
    /* background-image: url("${pageContext.request.contextPath}/images/Template_company/mac.jpg"); 
  
    background-image: url("${pageContext.request.contextPath}/images/Template_company/bg_header_mac.png");   
    background-image: url("${pageContext.request.contextPath}/images/Template_company/Screenshot_20171216-190539.png"); 
    background-image: url("${pageContext.request.contextPath}/images/Template_company/Screenshot_20171216-180641.png"); 
    background-image: url("${pageContext.request.contextPath}/images/Template_company/20171217_113827.png");  
    background-image: url("${pageContext.request.contextPath}/images/Template_company/Screenshot_20171216-195223.png"); */
    
    background-image: url("${pageContext.request.contextPath}/images/Template_company/bg_header_buloon.png");    
    
        

    min-height: 100%;
}
.w3-bar .w3-button {
    padding: 16px;
}
</style>
<body  oncontextmenu="return false" onselectstart="return false" ondragstart="return false">

<!--------------------------------------------- Nav 메뉴바 (PC화면) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="#home" class="w3-bar-item w3-button "><span class="w3-wide-8" style="font-family:Oswald;  font-size:16px;">COMPANY-NAME</span></a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="#about" class="w3-bar-item w3-button"><i class="fa fa-bicycle"></i> 회사소개</a>
      <a href="#team" class="w3-bar-item w3-button"><i class="fa fa-code-fork"></i> 사업영역</a>
      <a href="#work" class="w3-bar-item w3-button"><i class="fa fa-clone"></i> 제품서비스</a>
      <a href="#pricing" class="w3-bar-item w3-button"><i class="fa fa-usd"></i> 가격안내</a>
      <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i> 연락처</a>
    </div>
    
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->
    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!------------------------------------------------ NAV 메뉴바(모바일) -->
<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-rght-align w3-padding-16">Close x</a>
  <a href="#about"             onclick="w3_close()" class="w3-bar-item w3-button"><i class="fa fa-bicycle   w3-margin-right"></i>회사소개</a>
  <a href="#team"              onclick="w3_close()" class="w3-bar-item w3-button"><i class="fa fa-code-fork w3-margin-right"></i>사업영역</a>
  <a href="#work"              onclick="w3_close()" class="w3-bar-item w3-button"><i class="fa fa-clone     w3-margin-right"></i>제품서비스</a>
  <a href="#pricing"           onclick="w3_close()" class="w3-bar-item w3-button"><i class="fa fa-usd       w3-margin-right"></i>가격안내</a>
  <a href="#contact"           onclick="w3_close()" class="w3-bar-item w3-button"><i class="fa fa-envelope  w3-margin-right"></i>연락처</a>
  <p class="w3-tiny w3-padding">&nbsp;Made by easiSoft.co.kr<br>
  <span style="color:#FFF; font-size:30px;  font-family: 'Caesar Dressing';">es</span>
  </p>
</nav>

<!---------------------------------------------------- HOME TOP    w3-grayscale-min  -->
<header class="bgimg-1 w3-display-container " id="home">
  <div class="w3-display-left w3-text-white" style="padding:48px">
    <span class="w3-xxlarge w3-hide-small" style="font-family:Oswald;">Better Smart, Less Time</span><br>
    <span class="w3-xlarge  w3-hide-large w3-hide-medium" style="font-family:Oswald;">Better Smart, Less Time</span><br>
    <span class="w3-large   w3-hide-small">보다 스마트하게, 고객과 함께하는 기업이 되겠습니다. </span>
    <span class="w3-medium  w3-hide-large w3-hide-medium">보다 스마트하게, 고객과 함께하는 기업이 되겠습니다.</span>
    <p><a href="#about" class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off"> View 회사소개</a></p>
  </div> 
  <div class="w3-display-bottomleft w3-text-white w3-large" style="padding:24px 48px">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>&nbsp;&nbsp;&nbsp;
    <a href="https://www.instagram.com/easisoft" target=_blank><i class="fa fa-instagram     w3-hover-opacity"></i></a>&nbsp;&nbsp;&nbsp;
    <i class="fa fa-twitter       w3-hover-opacity"></i>&nbsp;&nbsp;&nbsp;
    
<!--     <i class="fa fa-snapchat      w3-hover-opacity"></i> -->
<!--     <i class="fa fa-pinterest-p   w3-hover-opacity"></i> -->
<!--     <i class="fa fa-linkedin      w3-hover-opacity"></i> -->
  </div>
</header>

<!--------------------------------------------------------------  회사소개  -->
<div class="w3-container" style="padding:128px 16px" id="about">
  <h2 class="w3-center"><b>회사소개</b></h2>
  <p class="w3-center w3-medium">우리회사의 주요특징들</p>
  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class="fa fa-desktop w3-margin-bottom w3-jumbo w3-center"></i>
      <p class="w3-large">반응형디자인</p>
      <p class="w3-small">PC & Tablet & Mobile에서 동시사용가능하도록 반응형디자인(Responsive Web Design)방식</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-rocket w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">열정과 비전</p>
      <p class="w3-small">주어진 업무와 서비스를 위하여 최선을 다하겠습니다 </p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-road  w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">디자인중심</p>
      <p class="w3-small">글로벌트랜드, SIMPLE, FLAT-Image, 고품질사진</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-cog w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">고객지원</p>
      <p class="w3-small">고객을 만족시키기위하여 고객센터를 운용</p>
    </div>
  </div>
  
  <div class="w3-center">
    <br><br>
    <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>Top</a>
   </div>
</div>

<!------------------------------------------------------------- 반응형디자인이란 -->
<div class="w3-container w3-light-grey" style="padding:128px 16px">
  <div class="w3-row-padding">
    <div class="w3-col m6">
      <h4>반응형디자인(Responsive Web Design)</h4>
      <p>웹 디자인 기법 중 하나. 웹(Web)에 접속하는 디바이스에 반응하는(Responsive) 디자인(Design)을 말한다.<br>
         <span class="w3-small w3-text-gray">여러 장치의 다양한 특성에 대응하는 하나의 웹 문서 또는 사이트으로써, 
               브라우저의 크기(스크린의 크기)에 실시간으로 반응하여 크기에 따라 레이아웃이 변하는 웹 사이트를 말합니다. 
               하나의 콘텐츠에 단말기상관없이 오직 하나의 HTML 소스만 존재한다<br>
         </span>
      </p>
      <p><a href="#work" class="w3-button w3-black"><i class="fa fa-clone"></i> View 제품서비스</a></p>
    </div>
    <div class="w3-col m6 w3-center">
      <img class="w3-image w3-round-medium" src="${pageContext.request.contextPath}/images/Template_company/n-screen.png" alt="반응형디자인" width="600" >
    </div>
  </div>
</div>

<!---------------------------------------------------------------------- 사업영역 -->
<div class="w3-container" style="padding:128px 16px" id="team">
  <h2 class="w3-center"><b>사업영역</b></h2>
  <p class="w3-center w3-medium">크게 4개영역으로 사업을 하고 있습니다 </p>
  <div class="w3-row-padding w3-grayscale" style="margin-top:64px">
  
    <div class="w3-col l3 m3 w3-margin-bottom">
      <div class="w3-card">
        <img src="${pageContext.request.contextPath}/images/Template_company/Screenshot_20171216-200114.png" alt="서비스신청" style="width:100%; ">
        <div class="w3-container">
          <h3 class="w3-center">사업영역A</h3>
          <p class="w3-small">자동화 설비제조 및 부품제조 분야에서 국내 유일의 전문가로써 지속적인 성장을 하고 있으며, 최상의 품질을 최우선으로 하는 경영 방침 아래 혁신적인 기술과 차별화된 서비스로 최적의 엔지니어링 솔루션을 제공하고 있습니다.</p>
          <ul style="min-height:100px;" class="w3-small">
                <li>세부사항들</li>
                <li>세부사항들</li>
                <li>세부사항들</li> 
           </ul>
           <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
    
    <div class="w3-col l3 m3 w3-margin-bottom">
      <div class="w3-card">
        <img src="${pageContext.request.contextPath}/images/Template_company/Screenshot_20171216-193526.png" alt="제작상담" style="width:100%; ">
        <div class="w3-container">
          <h3 class="w3-center">사업영역B</h3>
          <p class="w3-small">자동화 설비제조 및 부품제조 분야에서 국내 유일의 전문가로써 지속적인 성장을 하고 있으며, 최상의 품질을 최우선으로 하는 경영 방침 아래 혁신적인 기술과 차별화된 서비스로 최적의 엔지니어링 솔루션을 제공하고 있습니다.</p>
          <ul style="min-height:100px;" class="w3-small">
                <li>세부사항들</li>
                <li>세부사항들</li>
                <li>세부사항들</li> 
           </ul>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
    
    <div class="w3-col l3 m3 w3-margin-bottom">
      <div class="w3-card">
        <img src="${pageContext.request.contextPath}/images/Template_company/bg_header_mac.png" alt="홈페이지제작개발" style="width:100%; ">
        <div class="w3-container">
          <h3 class="w3-center">사업영역C</h3>
          <p class="w3-small">자동화 설비제조 및 부품제조 분야에서 국내 유일의 전문가로써 지속적인 성장을 하고 있으며, 최상의 품질을 최우선으로 하는 경영 방침 아래 혁신적인 기술과 차별화된 서비스로 최적의 엔지니어링 솔루션을 제공하고 있습니다.</p>
          <ul style="min-height:100px;" class="w3-small">
                <li>세부사항들</li>
                <li>세부사항들</li>
                <li>세부사항들</li> 
           </ul>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
    
    <div class="w3-col l3 m3 w3-margin-bottom">
      <div class="w3-card">
        <img src="${pageContext.request.contextPath}/images/Template_company/Screenshot_20171216-190137.png" alt="최종확인" style="width:100%;">
        <div class="w3-container">
          <h3 class="w3-center">사업영역D</h3>
          <p class="w3-small">자동화 설비제조 및 부품제조 분야에서 국내 유일의 전문가로써 지속적인 성장을 하고 있으며, 최상의 품질을 최우선으로 하는 경영 방침 아래 혁신적인 기술과 차별화된 서비스로 최적의 엔지니어링 솔루션을 제공하고 있습니다.</p>
          <ul style="min-height:100px;" class="w3-small">
                <li>세부사항들</li>
                <li>세부사항들</li>
                <li>세부사항들</li> 
           </ul>
           <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
  </div>
  
   <div class="w3-center">
    <br><br>
    <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>Top</a>
   </div>
   
</div>

<!-- Promo Section "Statistics" -->
<div class="w3-container w3-row w3-center w3-dark-grey w3-padding-64">
  <div class="w3-quarter">
    <span class="w3-xxlarge">14+</span>
    <br>Partners
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">55+</span>
    <br>Projects Done
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">89+</span>
    <br>Happy Clients
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">150+</span>
    <br>Meetings
  </div>
 
</div>

<!---------------------------------------------------------------------  제품서비스  -->
<div class="w3-container" style="padding:128px 16px" id="work">
  <h2 class="w3-center"><b>제품서비스</b></h2>
  <p class="w3-center w3-medium">아래와 같이 제품상품들이 준비되어 있습니다. 많은 관심을 바랍니다</p>

  <div class="w3-row-padding" style="margin-top:64px">
    <div class="w3-col l3 m3 w3-margin-bottom">
      <img src="${pageContext.request.contextPath}/images/Template_company/tech_mic.jpg" style="width:100%; " onclick="onClick(this)" class="w3-hover-opacity" alt="tech_mic">
      <br>tech_mic
    </div>
    <div class="w3-col l3 m3 w3-margin-bottom">
      <img src="${pageContext.request.contextPath}/images/Template_company/tech_phone.jpg" style="width:100%; " onclick="onClick(this)" class="w3-hover-opacity" alt="tech_phone">
      <br>tech_phone
    </div>
    <div class="w3-col l3 m3 w3-margin-bottom">
      <img src="${pageContext.request.contextPath}/images/Template_company/tech_drone.jpg" style="width:100%; " onclick="onClick(this)" class="w3-hover-opacity" alt="tech_drone">
      <br>tech_drone
    </div>
    <div class="w3-col l3 m3 w3-margin-bottom">
      <img src="${pageContext.request.contextPath}/images/Template_company/tech_sound.jpg" style="width:100%; " onclick="onClick(this)" class="w3-hover-opacity" alt="tech_sound">
      <br>tech_sound
    </div>
    <div class="w3-col l3 m3 w3-margin-bottom">
      <img src="${pageContext.request.contextPath}/images/Template_company/tech_tablet.jpg" style="width:100%; " onclick="onClick(this)" class="w3-hover-opacity" alt="tech_tablet">
      <br>tech_tablet
    </div>
    <div class="w3-col l3 m3 w3-margin-bottom">
      <img src="${pageContext.request.contextPath}/images/Template_company/tech_camera.jpg" style="width:100%; " onclick="onClick(this)" class="w3-hover-opacity" alt="tech_camera">
      <br>tech_camera
    </div>
    <div class="w3-col l3 m3 w3-margin-bottom">
      <img src="${pageContext.request.contextPath}/images/Template_company/tech_typewriter.jpg" style="width:100%; " onclick="onClick(this)" class="w3-hover-opacity" alt="tech_typewriter">
      <br>tech_typewriter
    </div>
    <div class="w3-col l3 m3 w3-margin-bottom">
      <img src="${pageContext.request.contextPath}/images/Template_company/tech_tableturner.jpg" style="width:100%; " onclick="onClick(this)" class="w3-hover-opacity" alt="tech_tableturner">
      <br>tech_tableturner
    </div>


    
         
  </div>
  
   <div class="w3-center">
    <br><br>
    <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>Top</a>
   </div>
</div>

<!-- Modal for full size images on click-->
<div id="modal01" class="w3-modal w3-black" onclick="this.style.display='none'">
  <span class="w3-button w3-xxlarge w3-black w3-padding-large w3-display-topright" title="Close Modal Image">×</span>
  <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <img id="img01" class="w3-image">
    <p id="caption" class="w3-opacity w3-large"></p>
  </div>
</div>

<!--------------------------------------------------------------------- 구현기술소개 -->
<div class="w3-container w3-light-grey w3-padding-64">
  <div class="w3-row-padding">
    <div class="w3-col m6">
      <h3>Our Skills.</h3>
      <p>홈페이지제작에 적용되는 기술들은 다양합니다. 주요기술은 아래와같으며, 요구사항에 따라 그 비중은 다소차이가 있습니다. 최신기술트랜드으로 개발하여 보다 나은 서비스를 구현합니다.<br>
                <ul style="min-height:100px;" class="w3-small">
               <li>HTML5, CSS3, BootStarp</li>
               <li>Javascript, JAVA, SPRING</li>
               <li>Maria-DB: 데이터베이스</li>
               <li>Photography:사진작업</li>
               <li>Web Design:웹디자인설계</li>
               <li>Photoshop:이미지작업</li>
          </ul>
      </p>

    </div>
    <div class="w3-col m6">
      <p class="w3-wide"><i class="fa fa-desktop w3-margin-right"></i>Web Design</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:40%">40%</div>
      </div>
      <p class="w3-wide"><i class="fa fa-code w3-margin-right"></i>Code Development</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:30%">30%</div>
      </div>
      <p class="w3-wide"><i class="fa fa-camera w3-margin-right"></i>Photography</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:20%">20%</div>
      </div>
      <p class="w3-wide"><i class="fa fa-photo w3-margin-right"></i>Photoshop</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:10%">10%</div>
      </div>
    </div>
  </div>
   <div class="w3-center">
    <br><br>
    <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>Top</a>
   </div>
</div>


<!------------------------------------------------------------------------------  가격안내  -->
<div class="w3-container w3-center w3-dark-grey" style="padding:128px 16px" id="pricing">
  <h2 class="w3-center"><b>가격안내</b></h2>
  <p class="w3-medium">아래 3가지형태으로 가입유형이며, 각 항목별 참조하시어 신청해주십시요</p>
  <div class="w3-row-padding" style="margin-top:64px">
  
    <div class="w3-third w3-section">
      <ul class="w3-ul w3-white w3-hover-shadow ">
        <li class="w3-black w3-large w3-padding-32">BASIC.기본</li>
        <li class="w3-padding-16 "><b>서비스항목</b> 10회</li>
        <li class="w3-padding-16 "><b>서비스항목</b> 11회</li>
        <li class="w3-padding-16 "><b>서비스항목</b> 12회</li>
        <li class="w3-padding-16">
          <h3 class="w3-text-deep-orange w3-wide">월 5만원</h3>
          <span class="w3-opacity"></span>
        </li>

        <li class="w3-light-grey w3-padding-24">
          <button class="w3-button w3-red w3-padding-large">신청</button>
        </li>
      </ul>
    </div>
   
    <div class="w3-third w3-section">
      <ul class="w3-ul w3-white w3-hover-shadow">
        <li class="w3-black w3-large w3-padding-32">STANDARD.표준</li>
        <li class="w3-padding-16 "><b>서비스항목</b> 10회</li>
        <li class="w3-padding-16 "><b>서비스항목</b> 11회</li>
        <li class="w3-padding-16 "><b>서비스항목</b> 12회</li>
        <li class="w3-padding-16 ">
          <h3 class="w3-text-deep-orange w3-wide">월 10만원</h3>
          <span class="w3-opacity"></span>
        </li>

        <li class="w3-light-grey w3-padding-24">
          <button class="w3-button w3-red w3-padding-large">신청</button>
        </li>
      </ul>
    </div>
    
      <div class="w3-third w3-section">
      <ul class="w3-ul w3-white w3-hover-shadow">
        <li class="w3-green  w3-large w3-padding-32">PREMIUM.프리미엄</li>
        <li class="w3-padding-16 "><b>서비스항목</b> 10회</li>
        <li class="w3-padding-16 "><b>서비스항목</b> 11회</li>
        <li class="w3-padding-16 "><b>서비스항목</b> 12회</li>
        <li class="w3-padding-16">
          <h3 class="w3-text-deep-orange  w3-wide">월 20만원</h3>
          <span class="w3-opacity"></span>
        </li>
        <li class="w3-light-grey w3-padding-24">
          <button class="w3-button w3-red w3-padding-large">신청</button>
        </li>
      </ul>
    </div>
    
    
  </div>
  <br><br><a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>Top</a>
</div>

<!-----------------------------------------------------------------------------------   CONTACT -->
<div class="w3-container w3-light-grey" style="padding:128px 16px" id="contact">
  <h2 class="w3-center"><b>CONTACT</b></h3>
  <p class="w3-center w3-medium">아래 연락처와 주소를 참조해주시고, 메시지를 남기시면 연락드리겠습니다</p>
  <div class="w3-row-padding" style="margin-top:64px">
    <div class="w3-half">
      <p><i class="fa fa-map-marker fa-fw w3-large w3-margin-right"></i> 서울시 강남구 신사동 652 우림빌딩 403호</p>
      <p><i class="fa fa-phone      fa-fw w3-large w3-margin-right"></i> Phone: 02-2600-1234</p>
      <p><i class="fa fa-comment    fa-fw w3-large w3-margin-right"></i> 카카오톡플러스친구: companyID</p>
      <p><i class="fa fa-instagram  fa-fw w3-large w3-margin-right"></i> 인스타그램: companyID</p>
      <p><i class="fa fa-envelope   fa-fw w3-large w3-margin-right"> </i> Email: master@gmail.com</p>
      <p><i class="fa fa-bank       fa-fw w3-large w3-margin-right"> </i> Bank: 기업은행 100-032-234567 예금주명</p>
      <br>
      <form action="/action_page.php" target="_blank">
        <p><input class="w3-input w3-border" type="text" placeholder="Name" required name="Name"></p>
        <p><input class="w3-input w3-border" type="text" placeholder="Email" required name="Email"></p>
        <p><input class="w3-input w3-border" type="text" placeholder="Subject" required name="Subject"></p>
        <p><input class="w3-input w3-border" type="text" placeholder="Message" required name="Message"></p>
        <p>
          <button class="w3-button w3-black" type="submit">
            <i class="fa fa-paper-plane"></i> SEND MESSAGE
          </button>
        </p>
      </form>
    </div>
    <div class="w3-half">
			  <!-- * Daum 지도 - 지도퍼가기 -->
				<!-- 1. 지도 노드 -->
				<div id="daumRoughmapContainer1513351670059" class="root_daum_roughmap root_daum_roughmap_landing" style="width:100%;height:500px; z-index=-2"></div>
				<script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>
				<script charset="UTF-8">
					new daum.roughmap.Lander({
						"timestamp" : "1513351670059",
						"key" : "kxda",
						"mapWidth" : "100%",
						"mapHeight" : "500"
					}).render();
				</script>
      <!-- Add Google Maps 
      <div id="googleMap" class="w3-greyscale-max" style="width:100%;height:510px;"></div>
      -->
      
    </div>
  </div>
     <div class="w3-center">
    <br><br>
    <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>Top</a>
   </div>
</div>

<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64">
  
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>&nbsp;&nbsp;
    <i class="fa fa-instagram w3-hover-opacity"></i>&nbsp;&nbsp;
    <i class="fa fa-twitter w3-hover-opacity"></i>
    
<!--     <i class="fa fa-snapchat w3-hover-opacity"></i> -->
<!--     <i class="fa fa-pinterest-p w3-hover-opacity"></i> -->
<!--     <i class="fa fa-linkedin w3-hover-opacity"></i> -->
  </div>
  <p>Maded by <a href="https://www.easisoft.co.kr" title="이지소프트랩(easiSoft)" target="_blank" class="w3-hover-text-green">easiSoft</a></p>
</footer>
 
<!-- Add Google Maps -->
<script>
function myMap()
{
  myCenter=new google.maps.LatLng(41.878114, -87.629798);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}


// Toggle between showing and hiding the sidebar when clicking the menu icon
var mySidebar = document.getElementById("mySidebar");

function w3_open() {
    if (mySidebar.style.display === 'block') {
        mySidebar.style.display = 'none';
    } else {
        mySidebar.style.display = 'block';
    }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

</body>
</html>
