<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<title>easiHOMEPAGE</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/w3.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Ubuntu">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Caesar+Dressing">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
$(document).ready(function(){ 
// 	var path = ${pageContext.request.contextPath};
// 	alert("path: " + path);
}
</script>
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
    /* background-image: url("${pageContext.request.contextPath}/${pageContext.request.contextPath}/images/com/mac.jpg"); 
    background-image: url("${pageContext.request.contextPath}/${pageContext.request.contextPath}/images/com/bg_header_buloon.png");   
    background-image: url("${pageContext.request.contextPath}/${pageContext.request.contextPath}/images/com/bg_header_mac.png");   
    background-image: url("${pageContext.request.contextPath}/${pageContext.request.contextPath}/images/com/Screenshot_20171216-190539.png"); 
    background-image: url("${pageContext.request.contextPath}/${pageContext.request.contextPath}/images/com/Screenshot_20171216-180641.png"); 
    background-image: url("${pageContext.request.contextPath}/${pageContext.request.contextPath}/images/com/20171217_113827.png");  */
    background-image: url("${pageContext.request.contextPath}/images/com/Screenshot_20171216-195223.png"); 
    
    
        

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
    <a href="/home.do" class="w3-bar-item w3-button "><span class="w3-wide-8" style="font-family:Oswald;  font-size:16px;">easiHOMEPAGE</span></a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="#about" class="w3-bar-item w3-button"><i class="fa fa-bicycle"></i> 제작컨셉</a>
      <a href="#team" class="w3-bar-item w3-button"><i class="fa fa-code-fork"></i> 제작절차</a>
      <a href="#work" class="w3-bar-item w3-button"><i class="fa fa-clone"></i> 제작템플릿</a>
      <a href="#pricing" class="w3-bar-item w3-button"><i class="fa fa-usd"></i> 서비스안내</a>
      <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i> 연락하기</a>
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
  <a href="#about"             onclick="w3_close()" class="w3-bar-item w3-button"><i class="fa fa-bicycle   w3-margin-right"></i>제작컨셉</a>
  <a href="#team"              onclick="w3_close()" class="w3-bar-item w3-button"><i class="fa fa-code-fork w3-margin-right"></i>제작절차</a>
  <a href="#work"              onclick="w3_close()" class="w3-bar-item w3-button"><i class="fa fa-clone     w3-margin-right"></i>제작템플릿</a>
  <a href="#pricing"           onclick="w3_close()" class="w3-bar-item w3-button"><i class="fa fa-usd       w3-margin-right"></i>서비스안내</a>
  <a href="#contact"           onclick="w3_close()" class="w3-bar-item w3-button"><i class="fa fa-envelope  w3-margin-right"></i>연락하기</a>
  <p class="w3-tiny w3-padding">&nbsp;Made by easiSoft.co.kr<br>
  <span style="color:#FFF; font-size:30px;  font-family: 'Caesar Dressing';">es</span>
  </p>
</nav>

<!---------------------------------------------------- HOME TOP    w3-grayscale-min  -->
<header class="bgimg-1 w3-display-container " id="home">
  <div class="w3-display-left w3-text-white" style="padding:48px">
    <span class="w3-xxlarge w3-hide-small" style="font-family:Oswald;">Start your homepage with us</span><br>
    <span class="w3-xlarge  w3-hide-large w3-hide-medium" style="font-family:Oswald;">Start your homepage with us</span><br>
    <span class="w3-large   w3-hide-small">홈페이지고민 이제그만, 쉽고 깔끔한 홈페이지무료제작</span>
    <span class="w3-medium  w3-hide-large w3-hide-medium">홈페이지고민 이제그만, 쉽고 깔끔한 홈페이지무료제작</span>
    <p><a href="#about" class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off"> View 제작컨셉</a></p>
  </div> 
  <div class="w3-display-bottomleft w3-text-white w3-large" style="padding:24px 48px">
     <span style="color:#FFF; line-height:35px;  font-size:35px; font-weight:normal;  font-family: 'Caesar Dressing', cursive;">es</span> &nbsp;&nbsp;&nbsp;
    <i class="fa fa-facebook-official w3-hover-opacity"></i>&nbsp;&nbsp;&nbsp;
    <a href="https://www.instagram.com/easisoft" target=_blank><i class="fa fa-instagram     w3-hover-opacity"></i></a>&nbsp;&nbsp;&nbsp;
    <i class="fa fa-twitter       w3-hover-opacity"></i>&nbsp;&nbsp;&nbsp;
    
<!--     <i class="fa fa-snapchat      w3-hover-opacity"></i> -->
<!--     <i class="fa fa-pinterest-p   w3-hover-opacity"></i> -->
<!--     <i class="fa fa-linkedin      w3-hover-opacity"></i> -->
     
  </div>
</header>

<!--------------------------------------------------------------  제작컨셉  -->
<div class="w3-container" style="padding:128px 16px" id="about">
  <h2 class="w3-center"><b>제작컨셉</b></h2>
  <p class="w3-center w3-medium">홈페이지제작 작업을 위한 기본컨셉을 설명드립니다</p>
  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class="fa fa-desktop w3-margin-bottom w3-jumbo w3-center"></i>
      <p class="w3-large">n-SCREEN</p>
      <p class="w3-small">PC & Tablet & Mobile에서 동시사용가능하도록 반응형디자인(Responsive Web Design)방식으로 제작해드립니다.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-rocket w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">주요기능</p>
      <p class="w3-small">단순게시판보다는 고객님의 회원과 소통할수있는 SNS연동방식으로 제작하며 미리준비된 템플릿기반으로 제작 </p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-road  w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">디자인원칙</p>
      <p class="w3-small">글로벌트랜드, SIMPLE, FLAT-Image, 고품질사진</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-cog w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">서버운영 및 유지보수</p>
      <p class="w3-small">제작이후 운용 및 유지보수를 고려하여 제작한다. 별도 유지보수계약필요합니다</p>
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
      <p><a href="#work" class="w3-button w3-black"><i class="fa fa-clone"></i> View 제작템플릿</a></p>
    </div>
    <div class="w3-col m6 w3-center">
      <img class="w3-image w3-round-medium" src="${pageContext.request.contextPath}/images/com/n-screen.png" alt="n-SCREEN통합환경" width="600" >
    </div>
  </div>
</div>

<!---------------------------------------------------------------------- 제작절차 -->
<div class="w3-container" style="padding:128px 16px" id="team">
  <h2 class="w3-center"><b>제작절차</b></h2>
  <p class="w3-center w3-medium">기본적으로 아래 절차순서대로 진행이 되고 있습니다. 궁금한점은 연락처으로 연락주시면 친절히 답변드리겠습니다</p>
  <div class="w3-row-padding w3-grayscale" style="margin-top:64px">
  
    <div class="w3-col l3 m3 w3-margin-bottom">
      <div class="w3-card">
        <img src="${pageContext.request.contextPath}/images/com/Screenshot_20171216-200114.png" alt="서비스신청" style="width:100%; ">
        <div class="w3-container">
          <h3 class="w3-center">1.서비스신청</h3>
<!--           <p class="w3-opacity">CEO & Founder</p> -->
          <ul style="min-height:100px;" class="w3-small">
                <li>제작템플릿디자인사진과 데모작동을 미리 잘 검토하기</li>
                <li>맘에드는 템플릿 정하기</li>
                <li>서비스 신청서작성하기</li> 
                
           </ul>
           <p class="w3-padding-large"><a href="#work" class="w3-button w3-black"><i class="fa fa-clone"></i> View 제작템플릿</a></p>
<!--           <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p> -->
        </div>
      </div>
    </div>
    
    <div class="w3-col l3 m3 w3-margin-bottom">
      <div class="w3-card">
        <img src="${pageContext.request.contextPath}/images/com/Screenshot_20171216-193526.png" alt="제작상담" style="width:100%; ">
        <div class="w3-container">
          <h3 class="w3-center">2.제작상담</h3>
<!--           <p class="w3-opacity">Art Director</p> -->
          <ul style="min-height:100px;" class="w3-small">
                 <li>요금결제후 템플릿에 들어갈 고객님의 사진과 콘텐츠내용 기초자료를 받는다</li>
                 <li>개발팀과 제작상담하기</li>
                 <li>서버사용료와 초기셋팅비를 결제하기</li>
          </ul>
          <p class="w3-padding-large"><a href="#contact" class="w3-button w3-black "><i class="fa fa-envelope"></i> View 연락하기</a></p>
<!--           <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p> -->
        </div>
      </div>
    </div>
    
    <div class="w3-col l3 m3 w3-margin-bottom">
      <div class="w3-card">
        <img src="${pageContext.request.contextPath}/images/com/bg_header_mac.png" alt="홈페이지제작개발" style="width:100%; ">
        <div class="w3-container">
          <h3 class="w3-center">3.홈페이지제작</h3>
<!--           <p class="w3-opacity">Web Designer</p> -->
          <ul style="min-height:100px;" class="w3-small">
               <li>SW개발자가 홈페이지제작을 시작합니다</li>
               <li>약 1주일정도 예상됩니다</li>
          </ul>
<!--           <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p> -->
        </div>
      </div>
    </div>
    
    <div class="w3-col l3 m3 w3-margin-bottom">
      <div class="w3-card">
        <img src="${pageContext.request.contextPath}/images/com/Screenshot_20171216-190137.png" alt="최종확인" style="width:100%;">
        <div class="w3-container">
          <h3 class="w3-center">4.최종확인</h3>
<!--           <p class="w3-opacity">Designer</p> -->
          <ul style="min-height:100px;" class="w3-small">
                        <li>제작완료후 최종적으로 고객님이 확인하시고 </li>
                        <li>수정사항을 보완하고 마무리합니다.</li>
          </ul>
<!--           <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Contact</button></p> -->
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
  <div class="w3-third">
    <span class="w3-xxlarge">11+</span>
    <br>소프트웨어업력
  </div>
  <div class="w3-third">
    <span class="w3-xxlarge">14+</span>
    <br>개발자들
  </div>
  <div class="w3-third">
    <span class="w3-xxlarge">12+</span>
    <br>템플릿들
  </div>
<!--   <div class="w3-quarter"> -->
<!--     <span class="w3-xxlarge">10+</span> -->
<!--     <br>Meetings -->
<!--   </div> -->
 
</div>

<!---------------------------------------------------------------------  제작템픔릿  -->
<div class="w3-container" style="padding:128px 16px" id="work">
  <h2 class="w3-center"><b>제작템플릿</b></h2>
  <p class="w3-center w3-medium">미리 준비된 템플릿 디자인스타일도 보시고, [데모체험]버튼을 눌러서 실제 작동모습도 보십시요<br>
                 배경사진과 제품사진, 콘텐츠 글내용은 고객님의 것으로 변경해드립니다.</p>

  <div class="w3-row-padding  " style="margin-top:64px">
    <div class="w3-col l2 m3 w3-margin-bottom">
      <img src="${pageContext.request.contextPath}/images/com/template-T00.png" style="width:100%; border:1px solid #cccccc;" onclick="onClick(this)" class="w3-hover-opacity" alt="템플릿">
      <br>
      <span class="w3-small">표준형</span>&nbsp;&nbsp;
      <a href="/Template_general.do" target=_blank><button class="w3-button w3-red  w3-small  w3-padding-small">데모체험</button></a>
    </div>
    
    <div class="w3-col l2 m3 w3-margin-bottom ">
      <img src="${pageContext.request.contextPath}/images/com/template-T10.png" style="width:100%; border:1px solid #cccccc;" onclick="onClick(this)" class="w3-hover-opacity " alt="커피점카페/음식점">
      <br>
      <span class="w3-small">카페요식형</span>&nbsp;&nbsp;
      <a href="/Template_cafe.do"  target=_blank><button class="w3-button w3-red  w3-small  w3-padding-small">데모체험</button></a>
    </div>
    <div class="w3-col l2 m3 w3-margin-bottom">
      <img src="${pageContext.request.contextPath}/images/com/template-T20.png" style="width:100%; border:1px solid #cccccc;" onclick="onClick(this)" class="w3-hover-opacity" alt="템플릿">
      <br>
      <span class="w3-small">서비스형</span>&nbsp;&nbsp;
      <a href="/Template_company.do" target=_blank><button class="w3-button w3-red w3-small w3-padding-small">데모체험</button></a>
    </div>
    <div class="w3-col l2 m3 w3-margin-bottom">
      <img src="${pageContext.request.contextPath}/images/com/template-T40.png" style="width:100%; border:1px solid #cccccc;" onclick="onClick(this)" class="w3-hover-opacity" alt="템플릿">
      <br>
      <span class="w3-small">비즈니스형</span>&nbsp;&nbsp;
      <a href="/Template_company2.do"  target=_blank><button class="w3-button w3-red  w3-small w3-padding-small">데모체험</button></a>
    </div>


    <div class="w3-col l2 m3 w3-margin-bottom">
      <img src="${pageContext.request.contextPath}/images/com/Screenshot_20171216-180641.png" style="width:100%; border:1px solid #cccccc;" onclick="onClick(this)" class="w3-hover-opacity" alt="템플릿">
      <br>템플릿
    </div>
    <div class="w3-col l2 m3 w3-margin-bottom">
      <img src="${pageContext.request.contextPath}/images/com/template13.png" style="width:100%; border:1px solid #cccccc;" onclick="onClick(this)" class="w3-hover-opacity" alt="템플릿">
      <br>템플릿
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


<!------------------------------------------------------------------------------  서비스안내  -->
<div class="w3-container w3-center w3-dark-grey" style="padding:128px 16px" id="pricing">
  <h2 class="w3-center"><b>서비스안내</b></h2>
  <p class="w3-medium">아래 3가지형태으로 서비스중이며, 고객님의 상황에 맞게 신청해주십시요.<br>
         먖춤형SI개발납품계약시에는 고객님이 서버를 준비해주셔야 합니다<br>
         안정적이고 성능이 우수한   <a href="https://ucloudbiz.olleh.com/" target=_blank><span class="w3-text-red">KTucloud biz서버</span></a>를 사용중입니다 </p>
  <div class="w3-row-padding" style="margin-top:64px">
  
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
        <li class="w3-padding-16 w3-opacity w3-small"><span class="w3-tag ">별도</span> <b>easisoft초기셋팅비:</b> 최초1회 8만원</li>
        <li class="w3-padding-16 w3-opacity w3-small"><span class="w3-tag ">별도</span> <b>KTuCloud서버사용료:</b> 월2만원(연간결제)</li>
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
        <li class="w3-padding-16 w3-opacity w3-small"><span class="w3-tag ">별도</span> <b>easisoft초기셋팅비:</b> 최초1회 8만원</li>
        <li class="w3-padding-16 w3-opacity w3-small"><span class="w3-tag ">별도</span> <b>KTuCloud서버사용료:</b> 월2만원(연간결제)</li>
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
  <br><br><a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>Top</a>
</div>

<!-----------------------------------------------------------------------------------   연락하기 -->
<div class="w3-container w3-light-grey" style="padding:128px 16px" id="contact">
  <h2 class="w3-center"><b>연락하기</b></h3>
  <p class="w3-center w3-medium">아래 연락처와 주소를 참조해주시고, 메시지를 남기시면 연락드리겠습니다</p>
  <div class="w3-row-padding" style="margin-top:64px">
    <div class="w3-half">
      <p><i class="fa fa-map-marker fa-fw w3-large w3-margin-right"></i> 서울시 강서구 화곡동 1075-18, 화곡역5번출구</p>
      <p><i class="fa fa-phone      fa-fw w3-large w3-margin-right"></i> Phone: 010-9407-3457</p>
      <p><i class="fa fa-comment    fa-fw w3-large w3-margin-right"></i> 카카오톡플러스친구: easisoft</p>
      <p><i class="fa fa-instagram  fa-fw w3-large w3-margin-right"></i> 인스타그램: easisoft</p>
      <p><i class="fa fa-envelope   fa-fw w3-large w3-margin-right"> </i> Email: nxgong@gmail.com</p>
      <p><i class="fa fa-bank       fa-fw w3-large w3-margin-right"> </i> Bank: 신한은행 100-032-318445 이지소프트랩</p>
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
