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

.ec-base-table tbody th {
    padding: 11px 0 10px 18px;
    border: 1px solid #dfdfdf;
    border-bottom-width: 0;
    color: #353535;
    text-align: left;
    font-weight: normal;
}
.xans-board-read .ec-base-table .etcArea li {
    display: inline-block;
/*     margin: 0 0 9px; */
    padding: 8px 20px 10px;
    vertical-align: top;
/*     line-height: 22px; */
    color: #666;
}
.ec-base-table.typeWrite td {
    padding: 8px 10px 7px;
}
.xans-board-read .ec-base-table .detail {
    padding: 30px 20px;
    border-top: 1px solid #eaeaea;
    margin: -9px 0 0;
    word-break: break-all;
    line-height: normal;
}
.xans-board-movement {
    border: 1px solid #d7d5d5;
    margin: 20px 0;
}
.xans-board-movement li {
    overflow: hidden;
    padding: 0 20px;
    border-bottom: 1px solid #e9e9e9;
    line-height: 140%;
    color: #353535;
}
.xans-board-movement li strong, .xans-board-movement li a {
    float: left;
    padding: 10px;
}
.xans-board-movement li {
    overflow: hidden;
    padding: 0 20px;
    border-bottom: 1px solid #e9e9e9;
    line-height: 140%;
    color: #353535;
}
.xans-board-movement li strong {
    width: 6%;
    padding-left: 15px;
    border-right: 1px solid #e9e9e9;
    font-weight: normal;
    background: url(//img.echosting.cafe24.com/skin/base/board/ico_move_prev.gif) no-repeat 0 15px;
} 
.xans-board-movement li strong, .xans-board-movement li a {
    float: left;
    padding: 10px;
}
 ul {padding-left:0;    margin: 0;}
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
					      <div class="xans-element- xans-board xans-board-read-1002 xans-board-read xans-board-1002">
					      <!--
						            $login_page_url = /member/login.html
						            $deny_access_url = /board/free/list.html
						        -->
						<div class="ec-base-table typeWrite ">
						            <table border="1" summary="">
						<caption>게시판 상세</caption>
						            <colgroup>
						<col style="width:130px;">
						<col style="width:auto;">
						</colgroup>
						<tbody>
						<tr>
						<th scope="row">제목</th>
						                    <td style="text-align:  left;">헤비츠 구정 배송 안내</td>
						                </tr>
						<tr>
						<th scope="row">작성자</th>
						                    <td style="text-align:  left;"> 헤비츠 <span class="displaynone">(ip:)</span> </td>
						                </tr>
						<tr>
						<td colspan="2">
						                        <ul class="etcArea" style="text-align:  left;">
						<li class="displaynone">
						                                <strong>평점</strong> <img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점">
						                            &nbsp;</li>
						                            <li class="">
						                                <strong>작성일</strong> <span class="txtNum">2017-01-17</span>
						                            </li>
						                            <li class="displaynone">
						                                <strong>추천</strong> <span class="txtNum"><a href="#none" onclick="BOARD_READ.article_vote('/exec/front/Board/vote/1?no=15831&amp;board_no=1&amp;page=&amp;return_url=/article/notice/1/15831/');"> <img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_recommend.gif" alt="추천하기"></a></span>
						                            </li>
						                            <li class="">
						                                <strong>조회수</strong> <span class="txtNum">275</span>
						                            </li>
						                        </ul>
						<div class="detail"><p></p><p align="center"><img style="width: 500px; height: 601px;" src="http://shop1.hevitz.cafe24.com/web/upload/NNEditor/20170117/copy(1484636755)-BCB3B9E8BCDBB0F8C1F6_170117.jpg" vspace="0" hspace="5"></p><p><br></p></div>
						                    </td>
						                </tr>
						<tr class="attach displaynone">
						<th scope="row">첨부파일</th>
						                    <td></td>
						                </tr>
						<tr class="displaynone ">
						<th scope="row">비밀번호</th>
						                    <td><input id="password" name="password" fw-filter="" fw-label="비밀번호" fw-msg="" onkeydown="if (event.keyCode == 13 || event.which == 13) { return false; }" value="" type="password"> <span class="ec-base-help txtInfo">수정 및 삭제하려면 비밀번호를 입력하세요.</span>
						</td>
						                </tr>
						</tbody>
						</table>
						</div>
						<div class="ec-base-button " style="text-align:  left;margin-top: 10px;">
						            <span class="gLeft">
						                <span class="displaynone">
						                    <a href="#none" onclick="" class="admin displaynone"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_admin.gif" alt="관리자게시"></a>
						                    <a href="#none" onclick="" class="admin displaynone"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_admin2.gif" alt="게시안함"></a>
						                    <a href="#none" onclick=""><img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_spam1.gif" alt="스팸신고"></a>
						                    <a href="#none" onclick=""><img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_spam2.gif" alt="스팸해제"></a>
						                </span>
						                <a href="/Template_general/bbs"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_list.gif" alt="목록"></a>
						            </span>
						            <span class="gRight">
						                <a href="#none" onclick="BOARD_READ.article_delete('BoardDelForm','1');" class="displaynone"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_delete.gif" alt="삭제"></a>
						                <a href="/board/free/modify.html?board_act=edit&amp;no=15831&amp;board_no=1" class="displaynone"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_modify.gif" alt="수정"></a>
						                <a href="/board/free/reply.html" class="displaynone"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_reply.gif" alt="답변"></a>
						            </span>
						  </div>
						</div>
		  <div class="xans-element- xans-board xans-board-movement-1002 xans-board-movement xans-board-1002 "><ul>
<li class="prev ">
<strong>이전글</strong><a href="/article/notice/1/16586/">5월 황금 연휴로 인한 출고일 조정 안내</a>
</li>
        <li class="next ">
<strong>다음글</strong><a href="/article/notice/1/14694/">2016년 추석 연휴 배송 공지 (날짜 수정)</a>
</li>
    </ul>
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
