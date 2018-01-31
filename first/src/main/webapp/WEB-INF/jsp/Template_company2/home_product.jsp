<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="portfolio" class="container-fluid text-center bg-white"> <!--화면전체 너비에 걸쳐있는 컨테이너 -->
  <span class="title-name">제품소개</span>
	<p>상품을 소개합니다</p>
	<br><br><br><br>
	<div class="row text-center slideanim" >
	    <div class="col-sm-2 ">
		</div> 
		<div class="col-sm-2">
		    <img class="img-pro" src="${pageContext.request.contextPath}/images/Template-company2/2.jpg" alt="가전제품" >
			<h4><strong>생활제품세트</strong></h4>
			<p>신상품 입니다</p>
		  </div>
		<div class="col-sm-2 ">
			<img class="img-pro" src="${pageContext.request.contextPath}/images/Template-company2/2-1.jpg" alt="3D프린터">
			<h4><strong>3D프린터</strong></h4>
			<p>생활소재 제품</p>
		   </div>
			<div class="col-sm-2 ">
				<img class="img-pro" src="${pageContext.request.contextPath}/images/Template-company2/2-2.jpg" alt="밥솥">
			<h4><strong>밥솥</strong></h4>
			<p>생활소재 제품</p>
		 </div>
		<div class="col-sm-2 ">
			<img class="img-pro" src="${pageContext.request.contextPath}/images/Template-company2/2-3.jpg" alt="토스트기">
			<h4><strong>토스터기</strong></h4>
			<p>생활소재 제품</p>
		</div>
		<div class="col-sm-2 ">
		</div></div>
<div class="row text-center slideanim">
		<div class="col-sm-2 ">
		</div>
		<div class="col-sm-2">
			<img class="img-pro" src="${pageContext.request.contextPath}/images/Template-company2/2-4.jpg" alt="태양렬">
			<h4><strong>태양열기계</strong></h4>
			<p>에너지소재 제품</p>
		</div>
		<div class="col-sm-2 ">
			<img class="img-pro" src="${pageContext.request.contextPath}/images/Template-company2/2-5.jpg" alt="태양열온수기">
			<h4><strong>태양열온수기</strong></h4>
			<p>에너지소재 제품</p>
		</div>
		<div class="col-sm-2 ">
			<img class="img-pro" src="${pageContext.request.contextPath}/images/Template-company2/2-6.jpg" alt="기어봉">
			<h4><strong>자동차 기어봉</strong></h4>
			<p>인테리어 제품</p>
		</div>
		<div class="col-sm-2 ">
			<img class="img-pro" src="${pageContext.request.contextPath}/images/Template-company2/2-7.jpg" alt="카시트">
			<h4><strong>카시트</strong></h4>
			<p>인테리어 제품</p>
		</div>
		<div class="col-sm-2 ">
		</div>
	  </div><br><br><br><br><br>
    <h3>Best 상품</h3>
    
    <div class="col-sm-2"></div>
    <div class="col-sm-8">
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">  <!--슬라이더쇼 생성 -->
    <!-- Indicators -->
    <ol class="carousel-indicators"> <!--슬라이더쇼 하단의 작은점 추가 -->
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li> <!-- 작은점 눌렀을때 거기로 움직이게 -->
      <li data-target="#myCarousel" data-slide-to="1"></li> <!-- 작은점 갯수 -->
      <li data-target="#myCarousel" data-slide-to="2"></li>
	  <li data-target="#myCarousel" data-slide-to="3"></li>
	  <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">  <!--슬라이더쇼 항목용 컨테이너 -->
      <div class="item active ">  <!--각항목에 클래스 추가 -->
	   <img class="pic2" src="${pageContext.request.contextPath}/images/Template-company2/2-7.jpg" alt="New York" >
        <h4>"1위 카시트"<br><span>가격 224,800원</span></h4>
		</span></h4>
      </div>
      <div class="item"> <!--각항목에 클래스 추가 -->
    	 <img class="pic2"  src="${pageContext.request.contextPath}/images/Template-company2/2-2.jpg" alt="New York" >
        <h4>"2위 밥솥"<br><span>가격 84,800원</span></h4>
      </div>
      <div class="item"> <!--각항목에 클래스 추가 -->
        <img class="pic2"  src="${pageContext.request.contextPath}/images/Template-company2/2-3.jpg" alt="New York">
        <h4>"3위 토스트기"<br><span>가격 24,800원</span></h4>
      </div>
	  <div class="item"> <!--각항목에 클래스 추가 -->
       <img class="pic2"  src="${pageContext.request.contextPath}/images/Template-company2/2-5.jpg" alt="New York" >
        <h4>"4위 태양열 온수기"<br><span>가격 519,800원</span></h4>
      </div>
	  <div class="item"> <!--각항목에 클래스 추가 -->
       <img class="pic2"  src="${pageContext.request.contextPath}/images/Template-company2/2-1.jpg" alt="New York">
        <h4>"5위 3D프린터"<br><span>가격 217,800원</span></h4>
      </div>
	
    <!-- Left and right controls -->
    <a  class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true" ></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
 </div>
</div>
<div class="col-sm-2"></div><br>
</div>
<div  id="pricing" class="">
  <div class="text-center">
    <h3>서비스요금</h3>
    <br>
  </div>
  <div class="row slideanim">
	  <div class="col-sm-2 ">
	  </div>
	  <div class="col-sm-8 " >
		    <div class="col-sm-4" >
		      <div class="panel panel-default text-center">
		        <div class="panel-heading ">
		          <h2 class="font-white">Basic.기본</h2>
		        </div>
		        <div class="panel-body">
		         <p><b>사용량 할인정책</b></p>
		          <p><b>50%</b> 할인</p>
		          <p><b>25%</b> 할인</p>
		          <p><b>10%</b> 할인</p>
		          <p><b>10%미만</b>할인적용대상아님</p>
		        </div>
		        <div class="panel-footer">
		          <h3>20,000원</h3>
		          <h4>한달결제시</h4>
		          <button class="btn btn-lg">신청</button>
		        </div>
		      </div>      
		    </div>     
		    <div class="col-sm-4">
		      <div class="panel panel-default text-center">
		        <div class="panel-heading">
		          <h2 class="font-white">Standard.표준</h2>
		        </div>
		        <div class="panel-body">
		          <p><b>사용량 할인정책</b></p>
		          <p><b>50%</b> 할인</p>
		          <p><b>25%</b> 할인</p>
		          <p><b>10%</b> 할인</p>
		          <p><b>10%미만</b>할인적용대상아님</p>
		        </div>
		        <div class="panel-footer">
		          <h3>39,000원</h3>
		          <h4>한달결제시</h4>
		          <button class="btn btn-lg">신청</button>
		        </div>
		      </div>      
		    </div>       
		    <div class="col-sm-4">
		      <div class="panel panel-default text-center">
		        <div class="panel-heading">
		          <h2 class="font-white">Preminum.프리니엄</h2>
		        </div>
		        <div class="panel-body">
		        <p><b>사용량 할인정책</b></p>
		          <p><b>50%</b> 할인</p>
		          <p><b>25%</b> 할인</p>
		          <p><b>10%</b> 할인</p>
		          <p><b>10%미만</b>할인적용대상아님</p>
		        </div>
		        <div class="panel-footer">
		          <h3><span class="social social-wikipedia"></span>50,000원</h3>
		          <h4>한달결제시</h4>
		          <button class="btn btn-lg">신청</button>
		        </div>
		      </div>      
		    </div>  
      </div> 
    <div class="col-sm-2 ">
		</div>  
  </div>
</div>

</body>
</html>