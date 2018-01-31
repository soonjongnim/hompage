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
				<col width="15%"/>
				<col width="35%"/>
				<col width="15%"/>
				<col width="35%"/>
			</colgroup>
			<caption>게시글 상세</caption>
			<tbody>
				<tr>
					<th scope="row">글 번호</th>
					<td>
						${map.BBS_NO }
						<input type="hidden" id="BBS_NO" name="BBS_NO" value="${map.BBS_NO }">
						<input type="hidden" id="BBS_ID" name="BBS_ID" value="${map.BBS_ID }">
						<input type="hidden" id="COMPANY_CD" name="COMPANY_CD" value="${map.COMPANY_CD }">
					</td>
					<th scope="row">조회수</th>
					<td>${map.HIT_CNT }</td>
				</tr>
				<tr>
					<th scope="row">작성자</th>
					<td>${map.CRT_USR_ID }</td>
					<th scope="row">작성시간</th>
					<td>${map.CRT_DT }</td>
				</tr>
				<tr>
					<th scope="row">제목</th>
					<td colspan="3">
						<input type="text" id="BBS_TITLE" name="BBS_TITLE" class="wdp_90" value="${map.BBS_TITLE }"/>
					</td>
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
					<td colspan="4" class="view_text">
<%-- 						<textarea rows="20" cols="100" title="내용" id="BBS_CONT" name="BBS_CONT">${map.BBS_CONT }</textarea> --%>
					<%@ include file="/WEB-INF/include/editor.jspf" %>
					</td>
				</tr>
				<tr>
				   <td colspan="4">	
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
								<input type="hidden" name="fileSize" class="${result.ATCH_ID}" value="${result.FILE_SIZE}">
							</c:forEach>
						</div>
						
						<ul class="bbs-attach-box">
							<c:forEach var="result" items="${attachList}" varStatus="i">
								<li class="${result.ATCH_ID}">
									<div class="file-name">${result.FILE_NM}</div>
									<div class="btn-remove">X</div>
								</li>
							</c:forEach>
						</ul>
						
						<div class="hidden-file-inputs">
							<c:forEach var="result" items="${attachList}" varStatus="i">
								<input type="hidden" name="atchIds" class="${result.ATCH_ID}" value="${result.ATCH_ID}">
							</c:forEach>
							<input type="file" name="files1" class="attach-files">
						</div>
					</div>
				  </td>	
				</tr>
			</tbody>
		</table>
	</form>
	
	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">저장하기</a>
	<a href="#this" class="btn" id="delete">삭제하기</a>
	
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
	
// 		var limitSize = 10485760;
		$(document).ready(function(){
			var BBS_CATE_ID = "${map.BBS_CATE_ID}";
// 			alert("BBS_CATE_ID: " + BBS_CATE_ID);
			$("#BBS_CATE_ID").val(BBS_CATE_ID);
			var BBS_CONT = '${map.BBS_CONT }';
			$("#editor").html(BBS_CONT);
// 			$("#editor").html($("#BBS_CONT").val());

			initInputFields();
			initButtons();
			
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_openBoardList();
			});
			
			$("#update").on("click", function(e){ //저장하기 버튼
				e.preventDefault();
				fn_updateBoard();
			});
			
			$("#delete").on("click", function(e){ //삭제하기 버튼
				e.preventDefault();
				fn_deleteBoard();
			});
		});
		
		
	</script>
</body>
</html>