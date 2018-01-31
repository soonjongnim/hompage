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
		  <button class="tablinks" onclick="openCity(event, 'finance')" id="defaultOpen">연혁</button>
		  <button class="tablinks" onclick="openCity(event, 'finance2')">제무제표</button>
		 </div>
  <div class="col-sm-2"></div>
</div>
<div id="finance" class="tabcontent">
	<div class="col-sm-2"></div>
		  <div class="col-sm-8 intro-2">
		      <br>
			  <h3 >연혁</h3><br>
			    이사 및 감사 현황<br>
				이사 및 감사 현황<br>
				직위	  성명   담당업무<br>
				대표이사 임꺽정   대표이사<br>
				<br>
				         장보고	現LM사업본부장<br>
				         홍길동	現AM사업본부장<br>
				         이순신	現경영지원본부장<br>
				종업원 현황<br>
				종업원 현황<br>
				<br>
				구분	정규직	계약직	기타	합계<br>
				남	     558	  8      -  	566<br>
				여	      81	  3      -	     84<br>
				합계	  639	  11	 -	    650<br>

		  </div>	  
	<div class="col-sm-2"></div>
</div>
<div id="finance2" class="tabcontent">
	<div class="col-sm-2"></div>
		  <div class="col-sm-8 intro-2">
		  <br>
			  <h3 >재무제표</h3>
				<br>
				구분	    2011년	2012년	2013년	2014년<br>
				유동자산	4,262	2,924	2,546	2,613<br>
				비유동자산	3,657	3,773	4,246	4,530<br>
				자산총계	7,918	6,698	6,793	7,143<br>
				유동부채	2,825	1,807	2,055	1,732<br>
				비유동부채	1,801	1,501	1,216	1,703<br>
				부채총계	4,626	3,308	3,271	3,436<br>
				자본총계	3,293	3,390	3,522	3,707<br>
				매출액	    6,015	5,672	6,071	6,181<br>
				영업이익	396	266	279	215<br>
				당기순이익	1,014	276	123	209<br>
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
        tablinks[i].className = tablinks[i].className.replace("active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
</body>
</html>