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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/FAQ.css" />




<style type="text/css">
.main_box {
	font-family: 'NanumGothic';
}

.btn_delete {
	background-color: #0f0f70;
	color: white;
	border-radius: 5px;
	border: none;
}

.btn {
	display: flex;
	justify-content: flex-end;
}

.comment_who {
	margin-bottom: 5px;
}

.comment_rely_num {
	font-size: 17px;
	color: #0f0f70;
	font-weight: bold;
}

.comment_rely_name {
	font-weight: bold;
	border-left: 1px solid black;
	padding-left: 5px;
}

.comment_box {
	border: 2px solid #0f0f70;
	border-radius: 10px;
	padding: 7px;
	margin-top: 10px;
}

.post_main_box {
	padding: 50px 0px;
	border-bottom: 3px solid #0f0f70;
}

.post_main_header b {
	font-size: 30px;
	display: block;
}

.post_main_header {
	margin-bottom: 30px;
}

.post_main_text {
	width: 80%;
	font-size: 18px;
	line-height: 25px;
}

.post_btn_box {
	text-align: right;
	margin-top: 10px;
	margin-bottom: 100px;
}

.write {
	border: none;
	color: white;
	background-color: #0f0f70;
	padding: 7px 15px;
	border-radius: 10px;
	font-size: 15px;
}

.post_btn_box a {
	border: none;
	color: white;
	background-color: #0f0f70;
	padding: 7px 15px;
	border-radius: 10px;
	font-size: 15px;
}

@media ( max-width : 900px) {
	.post_main_text {
		width: 100%;
		font-size: 18px;
		line-height: 25px;
	}
}

@media ( max-width : 420px) {
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
				건의 및 Q&A<img
					src="${pageContext.request.contextPath }/assets/img/snu_logo.png" />
			</div>

			<c:set var="postdate" value="${output.postdate}" />
			<c:choose>
				<c:when test="${output.posttype eq '익명'}">
					<c:set var="name" value="익명" />
				</c:when>
				<c:otherwise>
					<c:set var="name" value="${output.name}" />

				</c:otherwise>
			</c:choose>

			<div class="post_main_box">
				<div class="post_main_header">
					<b>${output.posttitle}</b> <br> <span>${output.postcategory}</span>
					/ ${fn:substring(postdate,0,10)} / 조회수 ${output.postview} / ${name}
				</div>

				<div class="post_main_text">${output.postcontent}</div>
			</div>
			<c:forEach var="comment" items="${reply}" varStatus="status">
				<div class="comment_box">
					<div class="comment_who">
						<div class="comment_rely_num">${status.count}번째
							댓글 <span class="comment_rely_name">${comment.reply_name}</span>
						</div>
					</div>
					<div class="comment_main">${comment.reply_txt}</div>
					<c:if test='${comment.reply_name eq member.name}'>
						<form class="btn"
							action="${pageContext.request.contextPath}/community/reply_delete.do"
							method="GET">
							<input type="hidden" name='reply_num'
								value="${reply[0].reply_num}" />
							<button class="btn_delete">삭제</button>
						</form>
					</c:if>
				</div>





			</c:forEach>



			<div class="post_btn_box">
				<form class="reply_write_insert"
					action="${pageContext.request.contextPath}/community/reply_write_insert.do"
					method="POST">
					<input id="postno" type="hidden" name='postno'
						value="${output.postno}" />

					<textarea id="posttext" name="posttext"
						style="width: 99%; height: 100px; padding: 10px 5px; font-size: 20px;"
						placeholder="댓글을 입력해 주세요...."></textarea>

					<button class="write">글쓰기</button>
					<a href="${pageContext.request.contextPath}/community/Q&A.do">목록</a>
				</form>

			</div>

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

			<div class="snu_main_header">건의 및 Q&A</div>

			<!--모바일 메인 이너-->
			
			<div class="post_main_box">
				<div class="post_main_header">
					<b>${output.posttitle }</b> <br> <span>${output.postcategory} / ${output.postdate} /
						조회수 ${output.postview} / 작성자 <c:choose>
				<c:when test="${output.posttype eq '익명'}">
					익명
				</c:when>
				<c:otherwise>
					${output.name}

				</c:otherwise>
			</c:choose></span>
				</div>

				<div class="post_main_text">${output.postcontent}</div>
			</div>

<c:forEach var="comment" items="${reply}" varStatus="status">
				<div class="comment_box" style="margin:10px 0;">
					<div class="comment_who">
						<div class="comment_rely_num">${status.count}번째
							댓글 <span class="comment_rely_name">${comment.reply_name}</span>
						</div>
					</div>
					<div class="comment_main">${comment.reply_txt}</div>
					<c:if test='${comment.reply_name eq member.name}'>
						<form class="btn"
							action="${pageContext.request.contextPath}/community/reply_delete.do"
							method="GET">
							<input type="hidden" name='reply_num'
								value="${reply[0].reply_num}" />
							<button class="btn_delete">삭제</button>
						</form>
					</c:if>
				</div>


			</c:forEach>
			<div class="post_btn_box">
				<form class="reply_write_insert_m"
					action="${pageContext.request.contextPath}/community/reply_write_insert.do"
					method="POST">
					<input id="postno" type="hidden" name='postno'
						value="${output.postno}" />

					<textarea id="posttext_m" name="posttext"
						style="width: 99%; height: 100px; padding: 10px 5px; font-size: 20px;"
						placeholder="댓글을 입력해 주세요...."></textarea>

					<button class="write">글쓰기</button>
					<a href="${pageContext.request.contextPath}/community/Q&A.do">목록</a>
				</form>

			</div>
			<!--모바일 메인 이너 끝-->

		</div>




		<!--모바일 footer-->
		<%@ include file="../../include/MOBILE/footer.jsp"%>


	</div>




	<script src="https://kit.fontawesome.com/695be3a17b.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/style.js">
		
	</script>
	<script src="${pageContext.request.contextPath}/assets/js/regex.js"></script>
	<script>
		$(".reply_write_insert")
				.submit(
						function(e) {
							var postno = $("#postno").val();
							var posttext = $("#posttext").val();
							console.log(postno);

							e.preventDefault();
							var formData = new FormData(this);
							if (!regex.value('#posttext', '답글을 입력해 주세요')) {
								return false;
							}

							$
									.ajax({
										type : "GET",
										url : "${pageContext.request.contextPath}/community/reply_write_insert.do?postno="
												+ postno
												+ "&posttext="
												+ posttext,

										success : function() {
											alert("답글 작성이 완료되었습니다");
											location.reload();

										},
										cache : false,
										contentType : false,
										processData : false,
										error : function(request, status, error) {

											alert("code:" + request.status
													+ "\n" + "message:"
													+ request.responseText
													+ "\n" + "error:" + error);
										}
									});

						});
	</script>

<script>
		$(".reply_write_insert_m")
				.submit(
						function(e) {
							var postno = $("#postno").val();
							var posttext = $("#posttext_m").val();
							console.log(postno);

							e.preventDefault();
							var formData = new FormData(this);
							if (!regex.value('#posttext_m', '답글을 입력해 주세요')) {
								return false;
							}

							$
									.ajax({
										type : "GET",
										url : "${pageContext.request.contextPath}/community/reply_write_insert.do?postno="
												+ postno
												+ "&posttext="
												+ posttext,

										success : function() {
											alert("답글 작성이 완료되었습니다");
											location.reload();

										},
										cache : false,
										contentType : false,
										processData : false,
										error : function(request, status, error) {

											alert("code:" + request.status
													+ "\n" + "message:"
													+ request.responseText
													+ "\n" + "error:" + error);
										}
									});

						});
	</script>

</body>
</html>