<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
	<div class="tab">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<button class="tablinks" onclick="openCity(event, 'mile')"
				id="defaultOpen">연혁</button>
			<button class="tablinks" onclick="openCity(event, 'mile2')">인증및수상현황</button>
		</div>
		<div class="col-sm-2"></div>
	</div>
	<div id="mile" class="tabcontent">
		<div class="col-sm-2"></div>
		<div class="col-sm-8 intro-2">
		<br>
			<h3>연혁</h3>
			    <br>
				2017 충칭법인 설립<br>
				2016 멕시코 봉제라인 투자<br>
				2015 염성분공사 → 염성법인 독립법인화<br>
				2013 김천공장 생산라인 4대 → 5대 증설<br>
				2011 장가항법인 내 염성분공사 설립<br>
				2008 "Global Value Creator" 비전 선포, 요트사업 런칭<br>
				2007 원단사업부문(코오롱패션머티리얼) 분할<br>
				2004 중국 장가항법인 설립<br>
				2003 "The Great Company"로 도약 비전 선포 중국 북경법인 설립, TS 16949 등록<br>
				2002 중국 청도법인 설립, 미국 엘파소법인 설립<br>
		</div>
		<div class="col-sm-2"></div>
	</div>
	<div id="mile2" class="tabcontent">
		<div class="col-sm-2"></div>
		<div class="col-sm-8 intro-2">
		<br>
			<h3>인증및수상현황</h3>
			<br>
			품질경쟁력우수기업 인증<br>
			품목대기업부문인증대상전사 품질시스템인증일시2008년~ (1년 주기 갱신)주최기관산업통상자원부,<br>
			 한국표준협회선정분야제조업 부문내용 기업의 지속성장을 가능케하는 품질경영시스템과 기술력분야에서 그 성과가 탁월한<br>
			기업들의 품질경쟁력을 인증하는 제도. 매년 기업 스스로 평가지표에 의거 자체평가<br> 
			후 산ㆍ학ㆍ연 전문가로 구성된 심사위원에 의해 재평가함. 총 13개 항목에 대한 심사 실시<br>
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
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.className += " active";
		}
		// Get the element with id="defaultOpen" and click on it
		document.getElementById("defaultOpen").click();
	</script>
</body>
</html>