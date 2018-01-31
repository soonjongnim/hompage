<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<div class="tab">
  <div class="col-sm-2"></div>
	<div class="col-sm-8">
		  <button class="tablinks" onclick="openCity(event, 'product')" id="defaultOpen">제품2-1</button>
		  <button class="tablinks" onclick="openCity(event, 'product2')">제품2-2</button>
		  <button class="tablinks" onclick="openCity(event, 'product3')">요금체계</button>
		  </div>
  <div class="col-sm-2"></div>
</div>
<div class="col-sm-2"></div>
<div class="col-sm-8" style="height:80px"></div>	  
<div class="col-sm-2"></div>
<div id="product" class="tabcontent">
	<div class="col-sm-2"></div>
	    <div class="col-sm-8 t-al-cen">
				<div class="col-sm-4">
				    <img class="img-in" src="${pageContext.request.contextPath}/images/Template-company2/p4.jpg" alt="아동화">
					<p><strong>아동화</strong></p>
					<p>생활소재제품</p>
				  </div>
				<div class="col-sm-4">
					<img class="img-in"src="${pageContext.request.contextPath}/images/Template-company2/2-7.jpg" alt="카시트">
					<p><strong>"카시트"</strong></p>
					<p>인테리어소재제품</p>
				   </div>
				 <div class="col-sm-4">
					<img class="img-in"src="${pageContext.request.contextPath}/images/Template-company2/2.jpg" alt="청소기">
					<p><strong>청소기</strong></p>
					<p>생활소재제품</p>
				   </div>  
		</div>  
	<div class="col-sm-2"></div>
</div>
<div id="product2" class="tabcontent">
	<div class="col-sm-2"></div>
    	<div class="col-sm-8 t-al-cen">
				<div class="col-sm-4">
				    <img class="img-in"src="${pageContext.request.contextPath}/images/Template-company2/p1.jpg" alt="아동화">
					<p><strong>아동화</strong></p>
					<p>생활소재제품</p>
				  </div>
				<div class="col-sm-4">
					<img class="img-in"src="${pageContext.request.contextPath}/images/Template-company2/p2.jpg" alt="아동화">
					<p><strong>아동화</strong></p>
					<p>생활소재제품</p>
				   </div>
				 <div class="col-sm-4">
					<img class="img-in"src="${pageContext.request.contextPath}/images/Template-company2/p3.jpg" alt="아동화">
					<p><strong>아동화</strong></p>
					<p>생활소재제품</p>
				   </div>  
		</div>  
	<div class="col-sm-2"></div>
</div>
<div id="product3" class="tabcontent">
	<div class="col-sm-2"></div>
		  <div class="col-sm-8">
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
	<div class="col-sm-2"></div>
</div>
<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
</body>
</html>