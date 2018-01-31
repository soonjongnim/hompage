<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<script src="${pageContext.request.contextPath}/js/bbs.js"></script>
</head>
<body>
	<table class="board_view">
		<colgroup>
			<col width="15%"/>
			<col width="35%"/>
			<col width="15%"/>
			<col width="35%"/>
		</colgroup>
		<caption>게시글 상세</caption>
		<tbody>
			<tr>
				<th scope="row">글 번호</th>
				<td>${map.BBS_NO }</td>
				<input type="hidden" id="BBS_NO" name="BBS_NO" value="${map.BBS_NO }">
				<input type="hidden" id="BBS_ID" name="BBS_ID" value="${map.BBS_ID }">
				<input type="hidden" id="COMPANY_CD" name="COMPANY_CD" value="${map.COMPANY_CD }">
				<th scope="row">조회수</th>
				<td>${map.HIT_CNT }</td>
			</tr>
			<tr>
				<th scope="row">작성자</th>
				<td>${map.crt_usr_id }</td>
				<th scope="row">작성시간</th>
				<td>${map.CRT_DT }</td>
			</tr>
			<tr>
				<th scope="row">제목</th>
				<td colspan="3">${map.BBS_TITLE }</td>
			</tr>
			<tr>
				<th scope="row">카테고리</th>
				<td colspan="3">${map.BBS_CATE_NAME }</td>
			</tr>
			<tr>
				<td colspan="4">${map.BBS_CONT }</td>
			</tr>
			
			<tr scope="row">
			<c:if test="${fn:length(attachList) > 0}">
				<th class="bbs-attach-title">
					첨부파일
				</th>
				<td colspan="3">
				<ul class="bbs-attach-list">
					<c:forEach var="result" items="${attachList}" varStatus="i">
						<li>
							<c:choose>
								<c:when test="${fn:contains(header['User-Agent'], 'Mobile')}">
									<c:set var="href" value="${result.FILE_PATH}${result.ATCH_ID}${result.FILE_EXT_NM}"/>
								</c:when>
								<c:otherwise>
									<c:set var="href" value="/bbs/download.do?COMPANY_CD=${result.COMPANY_CD}&BBS_ID=${result.BBS_ID}&BBS_NO=${result.BBS_NO}&ATCH_ID=${result.ATCH_ID}"/>
								</c:otherwise>
							</c:choose>
							<a href="${href}" target="${fn:contains(header['User-Agent'], 'Mobile') ? '_blank' : '_self'}">
								${result.FILE_NM}&nbsp;&nbsp;
								<span class="attach-size">
									<c:choose>
										<c:when test="${result.FILE_SIZE/(1024*1024) > 1}">
											${((result.FILE_SIZE/(1024*1024)*100)-(result.FILE_SIZE/(1024*1024)*100)%1)/100}MB
										</c:when>
										<c:when test="${result.FILE_SIZE/1024 > 1}">
											${((result.FILE_SIZE/1024*10)-(result.FILE_SIZE/1024*10)%1)/10}KB
										</c:when>
										<c:otherwise>
											${result.FILE_SIZE}B
										</c:otherwise>
									</c:choose>
								</span>
							</a>
						</li>
					</c:forEach>
				</ul>
				</td>
			</c:if>
		  </tr>		
		</tbody>
	</table>
	
	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="updatePage">수정하기</a>
	
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_openBoardList();
			});
			
			$("#updatePage").on("click", function(e){ //수정하기 버튼
				e.preventDefault();
				fn_openBoardUpdate($(this));
			});
		});
		
// 		function fn_openBoardList(){
// 			var comSubmit = new ComSubmit();
// 			comSubmit.setUrl("<c:url value='/Template_general/openBoardList.do' />");
// 			comSubmit.submit();
// 		}
		
		
	</script>
</body>
</html>