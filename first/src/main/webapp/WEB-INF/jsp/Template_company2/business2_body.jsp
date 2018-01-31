<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<div class="col-sm-2"></div>
	<div class="col-sm-8" style="height:80px">
	 </div>	  
     <div class="col-sm-2"></div>
<div class="tabcontent">
 	<div class="col-sm-2"></div>
	<div class="col-sm-8 intro-2">
		<br>
				    <div class="col-sm-6 "  style="padding-top:10px" ><h3>에너지사업 소개</h3><br><br>
                           <span style="color:#0444BA">다양한 소재개발</span>개발로 해외수출을 통한 글로벌화에도 앞장서고 있습니다.<br>
                           <span style="color:#0444BA">설비투자와 기술연구</span>로 선두주자의 위치를 지켜나감과 동시에 인간중심</div>
                    <div class="col-sm-2" style="padding-top:50px;padding-bottom:50px;padding-left:"><span class="glyphicon glyphicon-certificate logo-b"></span></div>
                    <div class="col-sm-2" style="padding-top:50px;padding-bottom:50px;padding-left:px"><span class="glyphicon glyphicon-fire logo-b"></span></div>
                    <div class="col-sm-2" style="padding-top:50px;padding-bottom:50px;padding-left:spx"><span class="glyphicon glyphicon-flash logo-b"></span></div>
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