<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <title>HOMPAGE조봉기</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="${pageContext.request.contextPath}/css/easisoft.css" rel="stylesheet" >
  </head>
<body>
<!-- 해더부분 -->
<%@ include file="header.jsp" %>

<!-- 인트로 해더부분 -->
<%@ include file="finance_head.jsp" %>
 
<!-- 인트로 바디부분 --> 
<%@ include file="finance_body.jsp" %>

<!-- 푸터부분  -->
<%@ include file="footer.jsp" %>
</body>
</html>