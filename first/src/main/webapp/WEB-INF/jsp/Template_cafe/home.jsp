<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<title>Template_Cafe</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Ubuntu">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inconsolata">
<style>
body, html {
    height: 100%;
    font-family: "Ubuntu", sans-serif;
}
.bgimg {
    background-position: center;
    background-size: cover;
    /*
    background-image: url("${pageContext.request.contextPath}/images/Template_cafe/coffeehouse.jpg"); */
    background-image: url("${pageContext.request.contextPath}/images/Template_cafe/starbucks.png");
    min-height: 65%;
}
.menu {
    display: none;
}
</style>
<body  oncontextmenu="return false" onselectstart="return false" ondragstart="return false">

<!--------------------------------------  TOP 메뉴  ------------------->
<div class="w3-top">
  <div class="w3-row w3-padding-xsmall w3-black">
    <div class="w3-col ss15">
      <a href="#home" class="w3-button w3-block w3-black">HOME</a>
    </div>
    <div class="w3-col ss20">
      <a href="#about" class="w3-button w3-block w3-black">카페소개</a>
    </div>
    <div class="w3-col ss20">
      <a href="#menu" class="w3-button w3-block w3-black">주문메뉴</a>
    </div>
    <div class="w3-col ss20">
      <a href="#story" class="w3-button w3-block w3-black">스토리</a>
    </div>
    <div class="w3-col ss25">
      <a href="#where" class="w3-button w3-block w3-black">지도위치</a>
    </div>
  </div>
</div>

<!-----------------------------------------  Header이미지 ---------------->
<header class="bgimg w3-display-container w3-grayscale-min" id="home">
  <div class="w3-display-bottomleft w3-center w3-padding-large ">
    <span class="w3-tag w3-small">매장영업시간 AM 6:00 ~ PM 5:00</span>
  </div>
  <div class=" w3-center w3-cell-top"><br><br><br>
    <span class="w3-text-white" style="font-size:40px">The Roasting Cafe</span>
  </div>
  <div class="w3-display-bottomright w3-center w3-padding-large">
    <span class="w3-tag w3-small">서울시 강남구 신사동 615</span>
  </div>
</header>

<!-- Add a background color and large text to the whole page  w3-sand  w3-grayscale-->
<div class="w3-greyscale-min25  w3-large">

		<!----------------------------------------------------  카페소개 ------------->
		<div class="w3-container" id="about">
		  <div class="w3-content" style="max-width:900px">
		    <h6 class="w3-center w3-padding-64"><span class="w3-tag-big w3-wide">카페 소개</span></h6>
		    <p class="w3-small">안녕하세요 카페로스팅 홈페이지에 오신것을 환영합니다. 카페로스팅은 2007년에 서울시 강남구 신사동에서 설립되었습니다.</p>
		    <p class="w3-small">맛있는 커피에스프레스와 드립커피 등으로 아침과 점심런치 샌드위치등을 제공중이며 또한 다양한 사이드메뉴와 샐러드바 등이 준비되어 있습니다.</p>
		    <p class="w3-small">
				 다양한 토양과 기후에서 자란 커피 원두는 그 속에 각기 다른 맛과 향의 비밀을 숨기고 있습니다.<br>
				생두를 로스팅하여 에스프레소를 만드는 과정은 단순하고 평범해 보이지만, 사실은 로스팅과 추출법 등의 미묘하고 작은 차이가 
				커피 맛을 변화시킵니다. <br>
				<br>
				원두에 숨겨진 이러한 커피의 비밀을 하나 하나 밝혀가면서 많은 사람들이 커피와 함께 소중한 순간을 즐기도록 해주는 것이 
				바로 저희 커피점이 추구하는 ‘커피의 즐거움’입니다.<br>
				오늘도 원두 본연의 맛을 살리기 위한 수많은 블랜딩을 개발하는 등 다양한 노력을 지속하고 있습니다. <br>
				커피가 주는 아름다움을 보다 많은 고객들이 즐길 수 있도록, 매 순간 의미 있는 작은 차이를 만들어가는 커피점이  되겠습니다. <br>
				</p>
		
		    <div class="w3-panel w3-leftbar w3-light-grey">
		      <p><i>"신선한 재료와 최고의 맛으로 커피를 제공하라, 항상 편안한 분위기으로 손님에게 위안을 주는 카페"</i></p>
		      <p>Chef 바리스타겸 점장 올림</p>
		    </div>
		    <img src="${pageContext.request.contextPath}/images/Template_cafe/coffeeshop.jpg" style="width:100%;max-width:1000px" class="w3-margin-top">
		    <p class="w3-small"><strong>영업시간:</strong> 평일 오전9시 ~ 오후10시 / 주말 오전10시 ~ 오후10시</p>
		    <p class="w3-small"><strong>주소:</strong> 서울시 강남구 신사동 615</p>
		  </div>
		</div>
		 <hr style="border-top: 1px solid #999999;">
		<!-------------------------------------------------------  Menu ------------>
		<div class="w3-container" id="menu">
		  <div class="w3-content w3-padding-12" style="max-width:900px; ">
		    
		    <h6 class="w3-center w3-padding-48"><span class="w3-tag-big w3-wide-8">주문메뉴</span></h6>
		  
		    <div class="w3-row w3-center w3-card w3-padding">
		
		      <a href="javascript:void(0)" onclick="openMenu(event, 'Drinks1');" id="myLink">
		        <div class="w3-col s3 tablink w3-small w3-padding-12">커피/차/에이드</div>
		      </a>
		      <a href="javascript:void(0)" onclick="openMenu(event, 'Drinks2');">
		        <div class="w3-col s3 tablink w3-small w3-padding-12">스무디/프라페</div>
		      </a>
		      <a href="javascript:void(0)" onclick="openMenu(event, 'Drinks3');">
		        <div class="w3-col s3 tablink w3-small w3-padding-12">디저트/빵</div>
		      </a>
		      <a href="javascript:void(0)" onclick="openMenu(event, 'Eat');" >
		        <div class="w3-col s3 tablink w3-small w3-padding-12">브런치</div>
		      </a>      
		            
		    </div>
		
		    <div id="Drinks1" class="w3-container menu w3-padding-48 w3-card ">
		
		      <table class="w3-table w3-striped  w3-small w3-animate-bottom">
		      <thead>
		      <tr>
		      <th>메뉴명</th>
		      <th>HOT</th>
		      <th>ICE</th>
		      <th>비고</th>
		      </tr></thead>
		      <tbody>
		      <tr><td>아메리카노 Americano</td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>카페라떼  CafeLatte</td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>에스프레소 Espresso</td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>카페모카  Cafe Mocca</td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>밀크티 Milk Tea</td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>그린포레스토</td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>아메리카노</td><td>3,500</td><td>4,000</td><td></td></tr>
		      </tbody>
		      </table>
		      
		    </div>  
		
		    <div id="Drinks2" class="w3-container menu w3-padding-48 w3-card">
		      <table class="w3-table w3-striped  w3-small w3-animate-bottom">
		      <thead>
		      <tr>
		      <th>메뉴명</th>
		      <th>HOT</th>
		      <th>ICE</th>
		      <th>비고</th>
		      </tr></thead>
		      <tbody>
		      <tr><td>플레인요거트스무디 Smoothie</td><td></td><td>4,000</td><td></td></tr>
		      <tr><td>딸기바나나요거트스무디 Smoothie</td><td></td><td>4,000</td><td></td></tr>
		      <tr><td>망고파인애플요거트스무디 Smoothie</td><td></td><td>4,000</td><td></td></tr>
		      <tr><td>블루베리요거트스무디 Smoothie </td><td></td><td>4,000</td><td></td></tr>
		      <tr><td>오레오프라페 Prappe</td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>자바칩프라페 Prappe</td><td></td><td>4,000</td><td></td></tr>
		      <tr><td>그린티프라페 Prappe</td><td>3,500</td><td>4,000</td><td></td></tr>
		      </tbody>
		      </table>
		    </div>  
		
		    <div id="Drinks3" class="w3-container menu w3-padding-48 w3-card">
		      <table class="w3-table w3-striped  w3-small w3-animate-bottom">
		      <thead>
		      <tr>
		      <th>메뉴명</th>
		      <th>HOT</th>
		      <th>ICE</th>
		      <th>비고</th>
		      </tr></thead>
		      <tbody>
		      <tr><td>아메리카노 Dessert&Bread</td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>카페라떼 Dessert&Bread  </td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>에스프레소 Dessert&Bread</td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>카페모카 Dessert&Bread </td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>아메리카노 Dessert&Bread</td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>아메리카노 Dessert&Bread</td><td>3,500</td><td>4,000</td><td></td></tr>
		      </tbody>
		      </table>
		    </div>  
		    
		    <div id="Eat" class="w3-container menu w3-padding-48 w3-card">
		      <table class="w3-table w3-striped  w3-small w3-animate-bottom">
		      <thead>
		      <tr>
		      <th>메뉴명</th>
		      <th>HOT</th>
		      <th>ICE</th>
		      <th>비고</th>
		      </tr></thead>
		      <tbody>
		      <tr><td>아메리카노 Brunch</td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>카페라떼 Brunch </td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>에스프레소 Brunch</td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>카페모카 Brunch </td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>아메리카노 Brunch</td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>아메리카노 Brunch</td><td>3,500</td><td>4,000</td><td></td></tr>
		      <tr><td>아메리카노 Brunch</td><td>3,500</td><td>4,000</td><td></td></tr>
		      </tbody>
		      </table>
		    </div>
		    <div class="w3-col l4 s4">           
		    <img src="${pageContext.request.contextPath}/images/Template_cafe/coffeehouse2.jpg" style="width:100%;max-width:900px;margin-top:10px;">
		    </div>
		    <div class="w3-col l4 s4">
		    <img src="${pageContext.request.contextPath}/images/Template_cafe/coffee1.png"  style="width:100%;max-width:900px;margin-top:10px;">
		    </div>
		     <div class="w3-col l4 s4">
		    <img src="${pageContext.request.contextPath}/images/Template_cafe/coffee2.png"  style="width:100%;max-width:900px;margin-top:10px;">
		    </div>
		  </div>
		</div>
		
		<hr style="border-top: 1px solid #999999;">
		
		<!----------------------------------------------------  스토리  ------------->
		<div class="w3-container" id="story">
		  <div class="w3-content" style="max-width:900px">
		    <h6 class="w3-center w3-padding-64"><span class="w3-tag-big w3-wide">SNS스토리</span></h6>
		    
		    <p class="w3-small">맛있는 커피에스프레스와 드립커피 등으로 아침과 점심런치 샌드위치등을 제공중이며 또한 다양한 사이드메뉴와 샐러드바 등이 준비되어 있습니다.</p>
		    <div class="w3-col l2 s3">           
		    <img src="${pageContext.request.contextPath}/images/Template_cafe/coffee1.png" class="w3-hover-opacity" style="width:100%;max-width:900px;margin-top:10px;">
		    </div>
		    <div class="w3-col l2 s3">
		    <img src="${pageContext.request.contextPath}/images/Template_cafe/coffee2.png" class="w3-hover-opacity" style="width:100%;max-width:900px;margin-top:10px;">
		    </div> 
		     <div class="w3-col l2 s3">
		    <img src="${pageContext.request.contextPath}/images/Template_cafe/coffee1.png" class="w3-hover-opacity" style="width:100%;max-width:900px;margin-top:10px;">
		    </div>
		     <div class="w3-col l2 s3">
		     <img src="${pageContext.request.contextPath}/images/Template_cafe/coffee2.jpg" class="w3-hover-opacity" style="width:100%;max-width:900px;margin-top:10px;">
		    </div>
		     <div class="w3-col l2 s3">
		     <img src="${pageContext.request.contextPath}/images/Template_cafe/coffee2.png" class="w3-hover-opacity" style="width:100%;max-width:900px;margin-top:10px;">
		    </div>
		     <div class="w3-col l2 s3">
		     <img src="${pageContext.request.contextPath}/images/Template_cafe/coffee2.jpg" class="w3-hover-opacity" style="width:100%;max-width:900px;margin-top:10px;">
		    </div>    
		     <div class="w3-col l2 s3">
		     <img src="${pageContext.request.contextPath}/images/Template_cafe/coffee3.png" class="w3-hover-opacity" style="width:100%;max-width:900px;margin-top:10px;">
		    </div>
		    <div class="w3-col l2 s3">
		     <img src="${pageContext.request.contextPath}/images/Template_cafe/coffee2.jpg" class="w3-hover-opacity" style="width:100%;max-width:900px;margin-top:10px;">
		    </div>
		     <div class="w3-col l2 s3">
		     <img src="${pageContext.request.contextPath}/images/Template_cafe/coffee2.png" class="w3-hover-opacity" style="width:100%;max-width:900px;margin-top:10px;">
		    </div>
		    <div class="w3-col l2 s3">
		     <img src="${pageContext.request.contextPath}/images/Template_cafe/coffee2.jpg"  style="width:100%;max-width:900px;margin-top:10px;">
		    </div> 
		    <div class="w3-col l2 s3">           
		    <img src="${pageContext.request.contextPath}/images/Template_cafe/coffee1.png" style="width:100%;max-width:900px;margin-top:10px;">
		    </div>
		    <div class="w3-col l2 s3">           
		    <img src="${pageContext.request.contextPath}/images/Template_cafe/coffee4.png" style="width:100%;max-width:900px;margin-top:10px;">
		    </div>           
		  </div>
		</div>
		 <hr style="border-top: 1px solid #999999;">
		 
		<!---------------------------------------------------    Contact/Area  -------->
		<div class="w3-container w3-padding-12" id="where" style="padding-bottom:32px;">
		  <div class="w3-content" style="max-width:900px">
		
		    <h6 class="w3-center w3-padding-48"><span class="w3-tag-big w3-wide-8">  지도위치  </span></h6>
		    <p class="w3-small">아래 지도를 보시면 저희 가게의 위치를 알수 있습니다 언제든지 찾아주세요.</p>
		<!--     <div id="googleMap" class="w3-sepia" style="width:100%;height:400px;"></div> -->
		        <!-- * Daum 지도 - 지도퍼가기 -->
				<!-- 1. 지도 노드 -->
				<div id="daumRoughmapContainer1513351670059" class="root_daum_roughmap root_daum_roughmap_landing" style="width:100%;height:350px; z-index=-2"></div>
				<script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>
				<script charset="UTF-8">
					new daum.roughmap.Lander({
						"timestamp" : "1513351670059",
						"key" : "kxda",
						"mapWidth" : "100%",
						"mapHeight" : "300"
					}).render();
				</script>
						
		    <p class="w3-small"><span class="w3-tag">Notice!</span>우리는 크고 작은 모든 행사에 완벽한 서비스를 제공합니다. 우리는 귀하의 필요를 이해하며, 우리는 그들 모두의 가장 큰 기준 인 룩앤필을 만족시키는 음식을 제공 할 것입니다</p>
		    <p class="w3-small"><strong>예약등록하세요</strong> 오늘 중요한 약속을 미리예약하세요, 아래 메시지를 보내주세요</p>
		    <form action="/action_page.php" target="_blank">
		      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="이름" required name="Name"></p>
		      <p><input class="w3-input w3-padding-16 w3-border" type="number" placeholder="총몇명" required name="People"></p>
		      <p><input class="w3-input w3-padding-16 w3-border" type="datetime-local" placeholder="일자와 시각" required name="date" value="2017-11-16T20:00"></p>
		      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="메시지내용 \ 특이요청사항 등" required name="Message"></p>
		      <p><button class="w3-button w3-black" type="submit">SEND MESSAGE</button></p>
		    </form>
		  </div>
		</div>

<!-- End page content -->
</div>

<!-- Footer -->
<footer class="w3-center w3-light-grey w3-padding-48 w3-large">
  <p>Made by <a href="http://www.easisoft.co.kr" target="_blank" class="w3-hover-text-green">easisoft.co.kr</a></p>
</footer>

<!-- Add Google Maps -->
<script>
function myMap()
{
  myCenter=new google.maps.LatLng(37.498295, 127.026857 );
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

// Tabbed Menu
function openMenu(evt, menuName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("menu");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
     tablinks[i].className = tablinks[i].className.replace(" w3-dark-grey", "");
  }
  document.getElementById(menuName).style.display = "block";
  evt.currentTarget.firstElementChild.className += " w3-dark-grey";
}
document.getElementById("myLink").click();
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

</body>
</html>
