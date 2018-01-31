<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<script src="${pageContext.request.contextPath}/js/bbs.js"></script>
</head>
<body>
	<form id="frm" enctype="multipart/form-data">
		<table class="board_view">
			<colgroup>
				<col width="15%">
				<col width="*"/>
			</colgroup>
			<caption>게시글 작성</caption>
			<tbody>
				<tr>
					<th scope="row">제목</th>
					<td><input type="text" id="BBS_TITLE" name="BBS_TITLE" class="wdp_90"></input></td>
				</tr>
				<tr>
					<th scope="row">카테고리</th>
					<td><select id="BBS_CATE_ID" name="BBS_CATE_ID">
							<c:forEach items="${cateList }" var="row">
											<option value="${row.BBS_CATE_ID }">${row.BBS_CATE_NAME }</option>
							</c:forEach>
						</select>
					</td>
					 
				</tr>
				<tr>
					<td colspan="2" class="view_text">
<!-- 						<textarea rows="20" cols="100" title="내용" id="BBS_CONT" name="BBS_CONT"></textarea> -->
						<%@ include file="/WEB-INF/include/editor.jspf" %>
					</td>
				</tr>
				
				<tr>
					<td colspan="4">
<%-- 				<c:if test="${bbs.attachYn eq 'Y'}"> --%>
							<div class="bbs-attach-wrap">
								<div class="easi-file-input" id="bbsFile" style="width:80px;border:0px;height:25px">
									<div class="input-wrap" style="border-radius:3px">
										파일첨부
									</div>
								</div>
								
								<div class="bbs-attach-limit-size">
									<div class="bbs-attach-current-size"></div>
									<span><span class="current-size">0</span> / <span class="limit-size">10485760</span>&nbsp;(<span class="percentage">0%</span>)</span>
									<c:forEach var="result" items="${attachList}" varStatus="i">
										<input type="hidden" name="fileSize" class="${result.atchId}" value="${result.fileSize}">
									</c:forEach>
								</div>
								
								<ul class="bbs-attach-box">
									<c:forEach var="result" items="${attachList}" varStatus="i">
										<li class="${result.atchId}">
											<div class="file-name">${result.fileNm}</div>
											<div class="btn-remove">X</div>
										</li>
									</c:forEach>
								</ul>
								
								<div class="hidden-file-inputs">
									<c:forEach var="result" items="${attachList}" varStatus="i">
										<input type="hidden" name="atchIds" class="${result.atchId}" value="${result.atchId}">
									</c:forEach>
									<input type="file" name="files1" class="attach-files">
								</div>
							</div>
<%-- 						</c:if> --%>
						</td>
					</tr>	
				<input type="hidden" id="COMPANY_CD" value="${commandMap.COMPANY_CD }">
				<input type="hidden" id="BBS_ID" value="${commandMap.BBS_ID }">
			</tbody>
		</table>
		
		<a href="#this" class="btn" id="write">작성하기</a>
		<a href="#this" class="btn" id="list">목록으로</a>
	</form>
	
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
		
		
		$(document).ready(function(){
			 
			$("#editor").html($("#BBS_CONT").val());
			initInputFields();
			initButtons();
			
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_openBoardList();
			});
			
			$("#write").on("click", function(e){ //작성하기 버튼
				e.preventDefault();
				fn_insertBoard();
			});
		});
		
		
	</script>
</body>
</html>