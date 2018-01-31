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
		  <button class="tablinks" onclick="openCity(event, 'intro')" id="defaultOpen">연락처</button>
		  <button class="tablinks" onclick="openCity(event, 'intro2')">찾아오는길</button>
		   </div>
  <div class="col-sm-2"></div>
</div>
<div id="intro" class="tabcontent">
	<div class="col-sm-2"></div>
		  <div class="col-sm-8">
			  <h3 >연락처</h3>
			  <p>CONTACT US</p>
			  <p>Tel. 010-9189-9199</p>
			  <p>Fax. 02-977-3691</p>
			  <p>Email. http://www.easisoft.co.kr</p>
		
	  </div>	  
	<div class="col-sm-2"></div>
</div>
<div id="intro2" class="tabcontent">
		  <%@ include file="home_address.jsp" %>
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