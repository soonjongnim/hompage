var limitSize = 10485760;

function fn_openBoardWrite(obj){
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("/Template_general/openBoardWrite.do");
	comSubmit.addParam("COMPANY_CD", obj.parent().find("#COMPANY_CD").val());
	comSubmit.addParam("BBS_ID", obj.parent().find("#BBS_ID").val());
	comSubmit.submit();
}

function fn_openBoardDetail(obj){
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("/Template_general/openBoardDetail.do");
	comSubmit.addParam("COMPANY_CD", obj.parent().find("#COMPANY_CD").val());
	comSubmit.addParam("BBS_ID", obj.parent().find("#BBS_ID").val());
	comSubmit.addParam("BBS_NO", obj.parent().find("#BBS_NO").val());
	comSubmit.submit();
}

function fn_openBoardUpdate(obj){
//	var COMPANY_CD = "${map.COMPANY_CD}";
//	var BBS_ID = "${map.BBS_ID}";
//	var BBS_NO = "${map.BBS_NO}";
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("/Template_general/openBoardUpdate.do");
	comSubmit.addParam("COMPANY_CD", obj.parent().find("#COMPANY_CD").val());
	comSubmit.addParam("BBS_ID", obj.parent().find("#BBS_ID").val());
	comSubmit.addParam("BBS_NO", obj.parent().find("#BBS_NO").val());
	comSubmit.submit();
}

function initInputFields(){
	
	$(".attach-files").on("change", addAttachBox);
}

function initButtons(){
	
	$(".easi-file-input").on("click", browseFile);
	$(".btn-remove").on("click", removeAttach);
}

function fn_openBoardList(){
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("/Template_general/openBoardList.do");
	comSubmit.submit();
}

function fn_insertBoard(){
	var param = makeParameter();
	
	if(!param.BBS_TITLE){
		alert("제목을 입력해 주세요.");
		return;
	}
	
	if(!confirm("저장하시겠습니까?")){
		return;
	}
//		alert("param:" + param.BBS_CATE_ID);
	$("#frm").ajaxSubmit({
		type:"POST",
		url:"/Template_general/insertBoard.do",
		cache: false,
		data:param,
		success: function(data, textStatus, jqXHR){
//				alert(data);
//				alert("ok");
			window.location = "/Template_general/openBoardList.do";
		},
		error: function(jqXHR, textStatus, errorThrown){
			alert("오류가 발생하였습니다.");
		} 
	});
//		var comSubmit = new ComSubmit("frm");
//		comSubmit.setUrl("<c:url value='/Template_general/insertBoard.do' />");
//		comSubmit.submit();
}

function fn_updateBoard(){
//		var BBS_CONT = $("#BBS_CONT").val();
//		alert("BBS_CONT: " + BBS_CONT);
//		var comSubmit = new ComSubmit("frm");
//		comSubmit.setUrl("<c:url value='/Template_general/updateBoard.do' />");
//		comSubmit.submit();
	var param = makeParameter();

	$("#frm").ajaxSubmit({
		type:"POST",
		url:"/Template_general/updateBoard.do",
		cache: false,
		data:param,
		success: function(data, textStatus, jqXHR){
			var COMPANY_CD = $("#COMPANY_CD").val();
			var BBS_ID = $("#BBS_ID").val();
			var BBS_NO = $("#BBS_NO").val();
			window.location = "/Template_general/openBoardDetail.do?COMPANY_CD="+COMPANY_CD+"&BBS_ID="+BBS_ID+"&BBS_NO="+BBS_NO+"";
//					$(window).unbind("beforeunload");
		},
		error: function(jqXHR, textStatus, errorThrown){
			alert("오류가 발생하였습니다.");
		} 
	});
}

function fn_deleteBoard(){
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("/Template_general/deleteBoard.do");
	comSubmit.addParam("COMPANY_CD", $("#COMPANY_CD").val());
	comSubmit.addParam("BBS_ID", $("#BBS_ID").val());
	comSubmit.addParam("BBS_NO", $("#BBS_NO").val());
	comSubmit.submit();
	
}

function makeParameter(){
	var param = new Object();
	var COMPANY_CD = $("#COMPANY_CD").val();
	var BBS_ID = $("#BBS_ID").val();
//	alert("COMPANY_CD: " + COMPANY_CD);
	param.BBS_TITLE = $("#BBS_TITLE").val();
	param.BBS_CATE_ID = $("#BBS_CATE_ID").val();
	
	var editorNode = $("#editor").clone(false)[0];
	findAndEscapeTextNode(editorNode);
	param.BBS_CONT = $(editorNode).html().replace(/&amp;/g, "&");
	
//		param.thumbnail = $("#editor img").eq(0).attr("src");
	param.COMPANY_CD = COMPANY_CD;
	param.BBS_ID = BBS_ID;
//		alert("param: " + param.BBS_CONT);
//		param.bbsNo = "${article.bbsNo}";
//		param.topYn = $("#topYn").length > 0 ? $("#topYn").hasClass("active") ? "Y" : "N" : null;
	return param;
}

function findAndEscapeTextNode(node){
	if(node.nodeName == "#text"){
		node.textContent = escapeHtml(node.textContent);
	}else if(node.childNodes){
		for(var i=0;i<node.childNodes.length;i++){
			findAndEscapeTextNode(node.childNodes[i]);
		}
	}
}

function escapeHtml(string) {
	var entityMap = {
		'&': '&amp;',
		'<': '&lt;',
		'>': '&gt;',
		'"': '&quot;',
		"'": '&#39;',
		'/': '&#x2F;',
		'`': '&#x60;',
		'=': '&#x3D;'
	};
	
	return String(string).replace(/[&<>"'`=\/]/g, function (s) {
		return entityMap[s];
	});
}

function browseFile(){
	$(".attach-files:last").trigger("click");
}

function addAttachBox() {
	if(this.files && this.files[0]){
		var totalSize = calcFileSize();
		if(totalSize + parseInt(this.files[0].size) > limitSize){
			alert("첨부파일의 용량은 10MB를 초과 할 수 없습니다.");
			$(this).replaceWith($(this).val("").clone(true));
			return;
		}
		
		var now = new Date();
		var timestamp = now.getTime();
		var attachClass = "attach-" + timestamp;
		
		var $attachItem = $("<li class='" + attachClass + "'>").appendTo(".bbs-attach-box");
		$("<div class='file-name'>" + this.files[0].name + "</div>").appendTo($attachItem);
		$("<div class='btn-remove'>X</div>").on("click", removeAttach).appendTo($attachItem);
		
		$(this).addClass(attachClass);
		var i = $(".attach-files").length + 1;
		$("<input type='file' name='files"+i+"' class='attach-files'>").on("change", addAttachBox).appendTo(".hidden-file-inputs");
		
		$("<input type='hidden' name='fileSize' class='" + attachClass + "' value='" + this.files[0].size + "'>").appendTo(".bbs-attach-limit-size");
		calcFileSize();
	}
}

function removeAttach(){
	var removeItemClass = $(this).parent().attr("class");
	$("." + removeItemClass).remove();
	calcFileSize();
}

function calcFileSize(){
	var $fileSize = $("input[name=fileSize]");
	var totalSize = 0;
	for(var i=0;i<$fileSize.length;i++){
		totalSize += parseInt($fileSize.eq(i).val());
	}
	var percentage = totalSize == 0 ? 0 : totalSize/limitSize*100;
	$(".bbs-attach-current-size").css("width", percentage + "%");
	$(".percentage").text((Math.round(percentage*10)/10) + "%");
	$(".current-size").text(totalSize);
	return totalSize;
}