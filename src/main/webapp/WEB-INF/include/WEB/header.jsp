<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic.css" rel="stylesheet">

<style type="text/css">
.header_box{
font-family: 'NanumGothic';
}
</style>
<div class="header_box">
	<div class="main_box_header">
		<div class="header_left_box">
			<div class="header_logo_box">
				<a href="${pageContext.request.contextPath}/"><img
					src="${pageContext.request.contextPath}/assets/img/snu_logo-removebg-preview.png"></a>
			</div>
			<div class="header_left_box_inner">
				<a href="https://www.snu.ac.kr/">서울대학교</a>
			</div>
			<div class="header_left_bar"></div>
			<div class="header_left_box_inner">
				<a href="https://edu.snu.ac.kr/ ">서울대학교 사범대학</a>
			</div>
			<div class='header_left_bar'></div>
			<div class="header_left_box_inner">
				<a href="https://teacher.snu.ac.kr/main/main.php ">교원양성지원센터</a>
			</div>
		</div>
		<div class="header_right_box">
			<div class="header_logo_box">
				<a href="https://pf.kakao.com/_dYZTxd"><img
					src="${pageContext.request.contextPath}/assets/img/kakao.png"></a>
			</div>
			<div class="header_logo_box" id="asd">
				<a href="https://everytime.kr/507155"><img
					src="${pageContext.request.contextPath}/assets/img/everytime.png"></a>
			</div>
			<div class="header_logo_box">
				<a href="https://www.instagram.com/ed_u_snu/"><img
					src="${pageContext.request.contextPath}/assets/img/insta.png"></a>
			</div>
			<div class='header_left_bar'></div>

			<c:choose>
				<c:when test="${member == null }">
					<a style="color: white;" class="login_btn"
						href="${pageContext.request.contextPath}/login.do"><b>Login</b></a>
				</c:when>

				<c:otherwise>
					<b style="color: white">${member.getName()}</b>
					<div class='header_left_bar'></div>
					<a style="color: white;" class="logout_btn"
						href="${pageContext.request.contextPath}/logout.do"><b>Logout</b></a>
				</c:otherwise>

			</c:choose>
			<div class="header_login_box"></div>
		</div>
	</div>
</div>

<div class="snu_tab_box">
	<div class="snu_tab_menu">
		<div class="snu_tab_btn">
			<a href="#">학생회</a>
		</div>
		<div class="snu_tab_menu_content hidden">
			<div class="snu_tab_menu_inner_box">
				<a class="snu_tab_menu_inner_box"
					href="${pageContext.request.contextPath}/Student_Council/introduce.do">학생회
					소개</a>
			</div>
			<div class="snu_tab_menu_inner_box">
				<a href="https://drive.google.com/drive/folders/178bXKJbEItgUvkZXd1_u4L3EMwgtdaTj?usp=sharing">회의록 / 안건지</a>
			</div>
			<div class="snu_tab_menu_inner_box">
				<a href="${pageContext.request.contextPath}/Student_Council/rule.do">학생회칙
					/ 세칙</a>
			</div>
			<div class="snu_tab_menu_inner_box">
				<a href="${pageContext.request.contextPath}/introduce/introduce.do">집행위원회
					소개</a>
			</div>
			<div class="snu_tab_menu_inner_box">
				<a href="${pageContext.request.contextPath}/busin">주요사업소개</a>
			</div>
		</div>
	</div>

	<div class="snu_tab_menu">
		<div class="snu_tab_btn">
			<a href="#">커뮤니티</a>
		</div>
		<div class="snu_tab_menu_content hidden">
			<div class="snu_tab_menu_inner_box">
				<a href="${pageContext.request.contextPath}/community/Q&A.do">건의
					및 Q&A</a>
			</div>
			<div class="snu_tab_menu_inner_box">
				<a href="#">2차 오픈</a>
			</div>
			<div class="snu_tab_menu_inner_box">
				<a href="#">2차 오픈</a>
			</div>
			<div class="snu_tab_menu_inner_box">
				<a href="${pageContext.request.contextPath}/community/Hi.do">Hi
					사범</a>
			</div>
		</div>
	</div>

	<div class="snu_tab_menu">
		<div class="snu_tab_btn">
			<a href="${pageContext.request.contextPath}/community/announce.do">공지사항</a>
		</div>
	</div>

	<div class="snu_tab_menu">
		<div class="snu_tab_btn">
			<a href="${pageContext.request.contextPath}/festive/festive.do">홍보 게시판</a>
		</div>

	</div>

	<div class="snu_tab_menu">
		<div class="snu_tab_btn">
			<a href="#">졸업로드맵</a>
		</div>
		<div class="snu_tab_menu_content hidden">
			<div class="snu_tab_menu_inner_box">
				<a
					href="${pageContext.request.contextPath}/loadmap/snu_class_loadmap.do">과별
					졸업로드맵</a>
			</div>
			<div class="snu_tab_menu_inner_box">
				<a
					href="${pageContext.request.contextPath}/loadmap/snu_education_loadmap.do">교직
					로드맵</a>
			</div>
		</div>
	</div>
	<div class="snu_tab_menu">
		
	</div>

</div>