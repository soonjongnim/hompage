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
		  <button class="tablinks" onclick="openCity(event, 'CI')" id="defaultOpen">CI</button>
		  <button class="tablinks" onclick="openCity(event, 'UI')">BI</button>
			  </div>
  <div class="col-sm-2"></div>
</div>
<div id="CI" class="tabcontent">
	<div class="col-sm-2"></div>
		  <div class="col-sm-8 intro-2">
			  <br>
			  <h3 >CI</h3>
			  <br>
			  심볼마크는 정확한 균형과 조화로 이루어진 7개의 양각 삼각형과 보여주면서 전체적으로<br>
			   3개의 음각 삼각 형이 큰 삼각형 3개와 작은 음각 삼각형 3개를<br>
			  음, 양의 조화를 이룬 유기적 삼각형태로 되어 있습니다.<br>
			  
		 </div>	  
	<div class="col-sm-2"></div>
</div>
<div id="UI" class="tabcontent">
	<div class="col-sm-2"></div>
		  <div class="col-sm-8 intro-2">
		  <br>
			  <h3 >BI</h3>
			  <br>
			  글로텍스<br>
			  코니그린<br>
			  히텍스<br>
			  PURELON<br>
			
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