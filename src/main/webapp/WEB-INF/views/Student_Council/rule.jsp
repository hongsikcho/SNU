<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>제41대 사범대학 학생회 늘품</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/snu_main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/side_btn.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/header.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/footer.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/mobile_header.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/mobile_footer.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/style.css" />


<style type="text/css">
.rule_pdf {
	margin: 50px 0px;
}
</style>

</head>

<body>
	<!-- pc부분 -->
	<div class="main_box">
		<div class="header">
			<%@ include file="../../include/WEB/header.jsp"%>
			<%@ include file="../../include/WEB/side_bar.jsp"%>
		</div>
		<div class="snu_main_box">
			<div class="snu_main_header">
				<span>학생회칙 / 세칙</span> <img
					src="${pageContext.request.contextPath}/assets/img/snu_logo.png" />
			</div>

			<iframe class="rule_pdf" width="100%" height="1000"
				src="${pageContext.request.contextPath}/assets/file/pdf/education_college_rule_202108.pdf"></iframe>
		</div>

		<%@ include file="../../include/WEB/footer.jsp"%>


	</div>

	<!--모바일 -->
	<div class="snu_mobile_box">

		<!-- 모바일 헤더-->

		<%@ include file="../../include/MOBILE/header.jsp"%>
		 <%@ include file="../../include/MOBILE/tab.jsp"%>
		<!--모바일 컨텐츠 박스-->
		<div class="snu_mobile_main_box">
			<div class="snu_main_header">
				<span>학생회칙 / 세칙</span> 
			</div>

			<iframe class="rule_pdf" width="100%" height="500"
				src="${pageContext.request.contextPath}/assets/file/pdf/education_college_rule_202108.pdf"></iframe>
		</div>


		<!--모바일 footer-->
		<%@ include file="../../include/MOBILE/footer.jsp"%>


	</div>




	<script src="https://kit.fontawesome.com/695be3a17b.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js">
		
	</script>


</body>
</html>