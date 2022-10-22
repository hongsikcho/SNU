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
<meta NAME="ROBOTS" CONTENT="NOINDEX,NOFOLLOW">
<title>제41대 사범대학 학생회 늘품</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/assets/img/basic_logo.png" />
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic.css"
	rel="stylesheet">
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/notice.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/main/pagination.css" />


<style type="text/css">
.main_box {
	font-family: 'NanumGothic';
}


@media (max-width: 900px) {
</style>

</head>

<body>
	<!-- pc부분 -->
	<div class="main_box">
		<div class="header">
			<%@ include file="../include/WEB/header.jsp"%>
			<%@ include file="../include/WEB/side_bar.jsp"%>
		</div>

		<div class="snu_main_box">
			<div class="snu_main_header">
				<span>예약 현황 확인</span> <img
					src="${pageContext.request.contextPath}/assets/img/snu_logo.png" />
			</div>


			<div class="snu_qna_box">



				<div class="snu_qna_content" id="snu_qna_header">
					<div style="width: 20%;">예약일</div>
					<div style="width: 15%;">호실</div>
					<div style="width: 15%;">시간</div>
					<div style="width: 20%;">예약자 이름</div>

				</div>

				<c:forEach var="item" items="${calendar}" varStatus="status">
					<c:set var="starttime" value="${item.starttime}" />
					<c:set var="endtime" value="${item.endtime}" />
					<c:set var="date" value="${item.date}" />
					<c:set var="membername" value="${item.membername}" />
					<c:set var="phonenum" value="${item.phonenum}" />
					<c:set var="studentid" value="${item.studentid}" />
					<c:set var="peoplenum" value="${item.peoplenum}" />
					<c:set var="roomNum" value="${item.roomNum}" />
					<c:set var="purpose" value="${item.purpose}" />
					<c:set var="calendarNo" value="${item.calendarNo}" />
					<a
						href="${pageContext.request.contextPath}/reservation/info.do?studentid=${studentid}&calendarNo=${calendarNo}">
						<div class="snu_qna_content" id="snu_qna_header"
							style="font-weight: 600;">
							<div style="width: 20%; display: inline-block;">${date}</div>
							<div style="width: 15%; display: inline-block;">${roomNum }</div>
							<div style="width: 15%; display: inline-block;">${starttime}-
								${endtime }</div>
							<div style="width: 20%; display: inline-block;">${membername}</div>
						</div>
					</a>
				</c:forEach>



			</div>
			
			<div class="paging_box ">
				<ul class="pagination">
					<c:choose>
						<c:when test="${pageData.prevPage >0 }">
							<c:url value="/community/announce.do" var="prevPageUrl">
								<c:param name="page" value="${pageData.prevPage }" />
							</c:url>
							<li><a href="${prevPageUrl }"><i
									class="fas fa-angle-left"></i></a></li>

						</c:when>
						<c:otherwise>
							<li class="disabled"><a href="#"><i
									class="fas fa-angle-left"></i></a></li>
						</c:otherwise>


					</c:choose>

					<c:forEach var="i" begin="${pageData.startPage}"
						end="${pageData.endPage}" varStatus="status">
						<c:url value="/community/conform.do" var="pageUrl">
							<c:param name="page" value="${i}" />
						</c:url>
						<c:choose>
							<c:when test="${pageData.nowPage ==i }">
								<li class="active"><span style="color: white;">${i}</span></li>
							</c:when>
							<c:otherwise>
								<li><a href="${pageUrl}">${i}</a></li>

							</c:otherwise>
						</c:choose>

					</c:forEach>
					<c:choose>
						<c:when test="${pageData.nextPage >0 }">
							<c:url value="/community/conform.do" var="nextPageUrl">
								<c:param name="page" value="${pageData.nextPage }" />
							</c:url>
							<li><a href="${nextPageUrl }"><i
									class="fas fa-angle-right"></i></a></li>

						</c:when>

						<c:otherwise>

						</c:otherwise>



					</c:choose>
				</ul>
			</div>
			 




		</div>






		<%@ include file="../include/WEB/footer.jsp"%>


	</div>

	<!--모바일 -->
	<div class="snu_mobile_box">

		<!-- 모바일 헤더-->

		<%@ include file="../include/MOBILE/header.jsp"%>
		<%@ include file="../include/MOBILE/tab.jsp"%>
		<!--모바일 컨텐츠 박스-->

		<div class="snu_mobile_main_box">
			<div class="snu_main_header">
				<span>예약 현황 확인</span>

			</div>
			<div class="snu_mobile_qna_main_box">
			
			<div class="snu_qna_content" id="snu_qna_header">
					<div style="width: 20%;">예약일</div>
					<div style="width: 15%;">호실</div>
					<div style="width: 15%;">시간</div>
					<div style="width: 20%;">예약자 이름</div>

				</div>

				<c:forEach var="item" items="${calendar}" varStatus="status">
					<c:set var="starttime" value="${item.starttime}" />
					<c:set var="endtime" value="${item.endtime}" />
					<c:set var="date" value="${item.date}" />
					<c:set var="membername" value="${item.membername}" />
					<c:set var="phonenum" value="${item.phonenum}" />
					<c:set var="studentid" value="${item.studentid}" />
					<c:set var="peoplenum" value="${item.peoplenum}" />
					<c:set var="roomNum" value="${item.roomNum}" />
					<c:set var="purpose" value="${item.purpose}" />
					<c:set var="calendarNo" value="${item.calendarNo}" />

					
				<a
						href="${pageContext.request.contextPath}/reservation/info.do?studentid=${studentid}&calendarNo=${calendarNo}">
						<div class="snu_qna_content" id="snu_qna_header"
							style="font-weight: 600;">
							<div style="width: 20%; display: inline-block;">${date}</div>
							<div style="width: 15%; display: inline-block;">${roomNum }</div>
							<div style="width: 15%; display: inline-block;">${starttime}-
								${endtime }</div>
							<div style="width: 20%; display: inline-block;">${membername}</div>
						</div>
					</a>


				</c:forEach>
			</div>

			
			<div class="paging_box ">
				<ul class="pagination">
					<c:choose>
						<c:when test="${pageData.prevPage >0 }">
							<c:url value="/community/announce.do" var="prevPageUrl">
								<c:param name="page" value="${pageData.prevPage }" />
							</c:url>
							<li><a href="${prevPageUrl }"><i
									class="fas fa-angle-left"></i></a></li>
						</c:when>
						<c:otherwise>
							<li class="disabled"><a href="#"><i
									class="fas fa-angle-left"></i></a></li>
						</c:otherwise>
					</c:choose>

					<c:forEach var="i" begin="${pageData.startPage}"
						end="${pageData.endPage}" varStatus="status">
						<c:url value="/community/announce.do" var="pageUrl">
							<c:param name="page" value="${i}" />
						</c:url>
						<c:choose>
							<c:when test="${pageData.nowPage ==i }">
								<li class="active"><span style="color: white;">${i}</span></li>
							</c:when>
							<c:otherwise>
								<li><a href="${pageUrl}">${i}</a></li>

							</c:otherwise>
						</c:choose>

					</c:forEach>
					<c:choose>
						<c:when test="${pageData.nextPage >0 }">
							<c:url value="/community/announce.do" var="nextPageUrl">
								<c:param name="page" value="${pageData.nextPage }" />
							</c:url>
							<li><a href="${nextPageUrl }"><i
									class="fas fa-angle-right"></i></a></li>

						</c:when>

						<c:otherwise>

						</c:otherwise>



					</c:choose>
				</ul>
			</div>



		</div>





		<!--모바일 footer-->
		<%@ include file="../include/MOBILE/footer.jsp"%>


	</div>


	<script src="https://kit.fontawesome.com/695be3a17b.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js">
		
	</script>


</body>
</html>