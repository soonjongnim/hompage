<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<title>Template_general</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Yanone Kaffeesatz">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Russo One">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Caesar+Dressing">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Courgette">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
body, code {
    font: 0.75em 'NanumGothic',LetterGothicStd,LetterGothicStd-Bold,나눔고딕;
    color: #353535;
}
	.xans-board-listpackage .boardSort {
    float: left;
    margin: 0 0 10px;
}
.xans-board-listpackage .ec-base-table {
    clear: both;
}
.ec-base-table.typeList table {
    border-top-color: #d7d5d5;
} 
.ec-base-table table {
    position: relative;
    margin: px 0 0;
    border-top: 1px solid #d7d5d5;
    border-bottom: 1px solid #d7d5d5;
    border-top-color: #fff;
    color: #fff;
    line-height: 1.5;
}
.ec-base-table table + .message {
    margin: -1px 0 0;
} 
.ec-base-table .message {
    padding: 50px 0;
    text-align: center;
    color: #9e9e9e;
    font-weight: normal;
}
.displaynone {
    display: none !important;
}
.xans-board-buttonlist.ec-base-button.typeBG {
    border-top: 0 none;
} 
.ec-base-button.typeBG {
    padding: 10px 20px;
}
.ec-base-table table {
    color: #fff;
    line-height: 1.5;
}
.ec-base-table th:first-child {
    border-left: 0;
    border-right: 0;
} 
.ec-base-table thead th {
    padding: 11px 0 10px;
    border-bottom: 1px solid #dfdfdf;
    color: #353535;
    vertical-align: middle;
    font-weight: normal;
}
th, td {
    border: 0; 
}
.ec-base-table .center {
    text-align: center;
}
.ec-base-table.typeList td {
    padding: 8px 10px 7px;
} 
.ec-base-table td { 
    border-top: 1px solid #dfdfdf;
    color: #353535;
    vertical-align: middle;
}
.ec-base-table.typeList .center td.left {
    padding-left: 10px;
} 
.ec-base-table.typeList .center td, .ec-base-table.typeList td.center {
    padding-left: 0;
    padding-right: 0;
} 
.ec-base-table.gBorder td {
    border-left: 0;
} 
.ec-base-table.typeList td {
    padding: 8px 10px 7px;
} 
.ec-base-table .left {
    text-align: left;
} 
.ec-base-table td {
    padding: 11px 10px 10px;
    border-top: 1px solid #dfdfdf;
    color: #353535;
    vertical-align: middle;
} 
.txtBreak {
    word-break: break-all;
    word-wrap: break-word;
} 
    table {
    width: 100%;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
}
</style>
<body>
<div  style="max-width:100%;margin-top:0px;margin-bottom:20px">
	      <div class="w3-container ">
	         <%@ include file="header.jsp"%>
	      </div>
		  <div class="w3-center" style="padding: 0px 30px;">
		  
		              <p style="font-family: Oswald;" ><span class="w3-large w3-bottombar w3-border-dark-grey">CUSTOMER</span></p>
					  <div class="w3-bar w3-center w3-white">
					    <button class="w3-bar-item w3-button tablink w3-small w3-black" onclick="openTab(event,'Bbs')">공지사항</button>
					    <button class="w3-bar-item w3-button tablink w3-small w3-white" onclick="openTab(event,'History')">회사연혁</button>
					    <button class="w3-bar-item w3-button tablink w3-small w3-white" onclick="openTab(event,'Certification')">인증서허가증</button>
					  </div>

					  <div id="Bbs" class="w3-container w3-border-white fr-content">
					      <div class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
					      <div class="boardSort">
                			<span class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>
    					  </div>
							<div class="ec-base-table typeList gBorder">
							        <table border="1" summary="">
										<caption>게시판 목록</caption>
							             <colgroup class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
								             <col style="width:70px;">
											 <col style="width:135px;" class="displaynone">
											 <col style="width:auto;">
											 <col style="width:84px;">
											 <col style="width:80px;" class="">
											 <col style="width:55px;" class="displaynone">
											 <col style="width:80px;" class="displaynone">
										 </colgroup>
							<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
							 <tr style=" ">
								<th scope="col"> NO</th>
				                <th scope="col" class="displaynone">CATEGORY</th>
				                <th scope="col">SUBJECT</th>
				                <th scope="col">NAME</th>
				                <th scope="col" class="">DATE</th>
				                <th scope="col" class="displaynone">추천</th>
				                <th scope="col" class="displaynone">평점</th>
							 </tr>
							</thead>
							<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
							<!--
							                    $count = 2
							                    $login_page_url = /member/login.html
							                    $deny_access_url = /index.html
							                -->
			                <tr class="xans-record-">
								<td> 공지</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                        <strong> <a href="/Template_general/bbsDetal" style="color:#555555;">2017 10월 추석연휴 출고일 안내</a> <span class="txtEm"></span></strong>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2017-09-19</span></td>
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							<tr class="xans-record-">
								<td> 공지</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                        <strong> <a href="/Template_general/bbsDetal" style="color:#555555;">상품 포장 방식 변경</a> <span class="txtEm"></span></strong>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2017-03-14</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							</tbody>
							<tbody class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002 center">
							<!--
							                    $login_page_url = /member/login.html
							                    $deny_access_url = /index.html
							                -->
			                <tr class="xans-record-">
								<td> 51</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                         <a href="/Template_general/bbsDetal" style="color:#555555;">2017 헤비츠 겨울 팩토리 세일에 초대합니다!</a> <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_hit.gif" alt="HIT"><span class="txtEm"></span>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2017-12-12</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							<tr class="xans-record-">
								<td> 50</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                         <a href="/Template_general/bbsDetal" style="color:#555555;">2017 추석연휴 헤비츠 온라인 및 쇼룸 특별 이벤트 안내 (하단 쿠폰 재중)</a> <span class="txtEm"></span>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2017-09-28</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							<tr class="xans-record-">
								<td> 49</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                         <a href="/Template_general/bbsDetal" style="color:#555555;">2017 헤비츠 워크샵으로 인한 휴무 안내</a> <span class="txtEm"></span>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2017-08-21</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							<tr class="xans-record-">
								<td> 48</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                         <a href="/Template_general/bbsDetal" style="color:#555555;">방문수령 옵션 추가 및 사은품 안내 공지</a> <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_hit.gif" alt="HIT"><span class="txtEm"></span>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2017-07-17</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							<tr class="xans-record-">
								<td> 47</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                         <a href="/Template_general/bbsDetal" style="color:#555555;">DIY 브레이드 레더 팔찌 만들기~!</a> <span class="txtEm"></span>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2017-07-05</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							<tr class="xans-record-">
								<td> 46</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                         <a href="/Template_general/bbsDetal" style="color:#555555;">헤비츠 안암 팩토리 샵 오픈 패밀리 세일에 초대합니다.</a> <span class="txtEm"></span>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2017-06-14</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							<tr class="xans-record-">
								<td> 45</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                         <a href="/Template_general/bbsDetal" style="color:#555555;">5월 황금 연휴로 인한 출고일 조정 안내</a> <span class="txtEm"></span>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2017-04-24</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							<tr class="xans-record-">
								<td> 44</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                         <a href="/Template_general/bbsDetal" style="color:#555555;">헤비츠 구정 배송 안내</a> <span class="txtEm"></span>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2017-01-17</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							<tr class="xans-record-">
								<td> 43</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                         <a href="/Template_general/bbsDetal" style="color:#555555;">2016년 추석 연휴 배송 공지 (날짜 수정)</a> <span class="txtEm"></span>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2016-08-31</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							<tr class="xans-record-">
								<td> 42</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                         <a href="/Template_general/bbsDetal" style="color:#555555;">Galaxy S7 edge/S7의 플립커버 예약주문</a> <span class="txtEm"></span>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2016-03-11</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							<tr class="xans-record-">
								<td> 41</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                         <a href="/Template_general/bbsDetal" style="color:#555555;">헤비츠 가죽가방 구매 고객분들께 사은품을 드립니다</a> <span class="txtEm"></span>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2015-12-31</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							<tr class="xans-record-">
								<td> 40</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                         <a href="/Template_general/bbsDetal" style="color:#555555;">일부 제품 가격인상 안내</a> <span class="txtEm"></span>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2015-02-27</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							<tr class="xans-record-">
								<td> 39</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                         <a href="/Template_general/bbsDetal" style="color:#555555;">키케이스 안쪽 가죽이 베이지 베지터블로 변경됩니다</a> <span class="txtEm"></span>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2015-02-25</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							<tr class="xans-record-">
								<td> 38</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                         <a href="/Template_general/bbsDetal" style="color:#555555;">2015년 설연휴 배송 공지</a> <span class="txtEm"></span>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2015-02-09</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							<tr class="xans-record-">
								<td> 37</td>
			                    <td class="displaynone"></td>
			                    <td class="subject left txtBreak">
			                         <a href="/Template_general/bbsDetal" style="color:#555555;">인스탁스키퍼 오일풀업 예약구매자 발송 안내</a> <span class="txtEm"></span>
			                    </td>
			                    <td>헤비츠</td>
			                    <td class=""><span class="txtNum">2015-01-29</span></td> 
			                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
			                </tr>
							</tbody>
							</table><p class="xans-element- xans-board xans-board-empty-1002 xans-board-empty xans-board-1002 message displaynone "></p>
							    </div>
							<div class="xans-element- xans-board xans-board-buttonlist-1002 xans-board-buttonlist xans-board-1002 ec-base-button typeBG displaynone "><span class="gRight">
							            <a href="/board/free/write.html?board_no=1" class="displaynone"><img src="/artfinger/img/btn_board_write.jpg" alt="글쓰기"></a>
							        </span>
							</div>
						</div>
		  
					  </div>
					  					  


					  <div id="History" class="w3-container w3-border-white fr-content" style="display:none">
					      <p class="w3-text-black w3-small">YouTube동영상</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
				            
						  </div>		  
					  </div>
					  					
		             <div id="Certification" class="w3-container w3-border-white fr-content" style="display:none">
					      <p class="w3-text-black w3-small">YouTube동영상</p>
						  <div class="w3-row-padding w3-padding-small w3-center" >
				            
						  </div>		  
					  </div>


		
		</div>
</div>



</body>
</html>
