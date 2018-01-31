<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<script src="${pageContext.request.contextPath}/js/bbs.js"></script>
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
th { text-align: center;}
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
</head>
<body>
<div  style="max-width:100%;margin-top:0px;margin-bottom:20px">
	<div class="w3-container ">
	         <%@ include file="/WEB-INF/include/header.jspf"%>
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
											 <col style="width:135px;">
											 <col style="width:auto;">
											 <col style="width:84px;">
											 <col style="width:80px;">
											 <col style="width:55px;">
										 </colgroup>
							<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
							 <tr style=" ">
								<th scope="col">게시물번호</th>
				                <th scope="col">게시판ID</th>
				                <th scope="col">제목</th>
				                <th scope="col">작성자</th>
				                <th scope="col">작성일자</th>
				                <th scope="col">조회수</th>
							 </tr>
							</thead>
							<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
							<!--
							                    $count = 2
							                    $login_page_url = /member/login.html
							                    $deny_access_url = /index.html
							                -->
							
							<c:choose>
								<c:when test="${fn:length(list) > 0}">
									<c:forEach items="${list }" var="row">
										<tr class="xans-record-">
											<td>${row.BBS_NO }</td>
											<td>${row.BBS_ID }</td>
											<td class="subject left txtBreak">
												<a href="#this" name="title">${row.BBS_TITLE }</a>
												<input type="hidden" id="COMPANY_CD" value="${row.COMPANY_CD }">
												<input type="hidden" id="BBS_ID" value="${row.BBS_ID }">
												<input type="hidden" id="BBS_NO" value="${row.BBS_NO }">
											</td>
											<td>${row.crt_usr_id }</td>
											<td><span class="txtNum">${row.CRT_DT }</span></td>
											<td>${row.HIT_CNT }</td>
<%-- 											<td class="displaynone">${row.HIT_CNT }</td> --%>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="4">조회된 결과가 없습니다.</td>
									</tr>
								</c:otherwise>
							</c:choose> 
							 
							</tbody>
							</table>
							
							<c:if test="${not empty paginationInfo}">
					        <ui:pagination paginationInfo="${paginationInfo}" type="text" jsFunction="fn_search"/>
					    </c:if>
					    <input type="hidden" id="currentPageNo" name="currentPageNo"/>
					     
							    </div>
						</div>
		  				
		  				<br/>
						<a href="#this" class="btn" id="write">글쓰기</a>
								
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
		
	
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#write").on("click", function(e){ //글쓰기 버튼
				e.preventDefault();
				fn_openBoardWrite($(this));
			});	
			
			$("a[name='title']").on("click", function(e){ //제목 
				e.preventDefault();
				fn_openBoardDetail($(this));
			});
			
		});
		
		function fn_search(pageNo){
		    var comSubmit = new ComSubmit();
		    comSubmit.setUrl("/Template_general/openBoardList.do");
		    comSubmit.addParam("currentPageNo", pageNo);
		    comSubmit.submit();
		} 
		
	</script>	
	</div>
</body>
</html>