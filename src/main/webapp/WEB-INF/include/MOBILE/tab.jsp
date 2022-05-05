<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic.css"
	rel="stylesheet">
<style>
.snu_m_tab_box {
	font-family: 'NanumGothic';
}
</style>
<div class="snu_m_tab_box">
	<div class="tab_logo_box"></div>
	<div class="tab_inner">
		<div class="tab_inner_box" style="margin-bottom: 20px;">
			<div class="btn" id="tab_btn2" style="display: block;">

				<c:choose>
					<c:when test="${member == null }">
						<a style="color: white; font-size: 25px;" class="login_btn"
							href="${pageContext.request.contextPath}/login.do"><b>로그인</b></a>
					</c:when>

					<c:otherwise>
						<b style="font-size:25px">${member.name}님 </b>
						<a style="color: white; font-size: 12px;" class="logout_btn"
							href="${pageContext.request.contextPath}/logout.do">로그아웃</a>
					</c:otherwise>

				</c:choose>
			</div>
		</div>
		<div class="tab_inner_box">
			<div class="btn">
				<div>학생회</div>
				<div>
					<i class="fas fa-chevron-down"></i>
				</div>
			</div>
			<div class="tab_btn_inner">
				<div>
					<a
						href="${pageContext.request.contextPath}/Student_Council/introduce.do">학생회
						소개</a>
				</div>
				<div>
					<a href="https://drive.google.com/drive/folders/178bXKJbEItgUvkZXd1_u4L3EMwgtdaTj?usp=sharing">회의록 / 안건지</a>
				</div>
				<div>
					<a
						href="${pageContext.request.contextPath}/Student_Council/rule.do">학생회칙
						/ 세칙</a>
				</div>
				<div>
					<a href="${pageContext.request.contextPath}/introduce/introduce.do">집행위원회
						소개</a>
				</div>
				<div>
					<a href="${pageContext.request.contextPath}/busin">주요사업소개</a>
				</div>
			</div>
		</div>
		<div class="tab_inner_box">
			<div class="btn" id="tab_btn2">
				<div>커뮤니티</div>
				<div>
					<i class="fas fa-chevron-down"></i>
				</div>
			</div>

			<div class="tab_btn_inner">
				<div>
					<a href="${pageContext.request.contextPath}/community/Q&A.do">건의
						및 Q&A</a>
				</div>

				<div>
					<a href="${pageContext.request.contextPath}/game/game.do">MBTI
						게임</a>
				</div>


				<div>
					<a href="${pageContext.request.contextPath}/community/Hi.do">Hi
						사범</a>
				</div>

				<div>
					<a href="#">2차오픈</a>
				</div>
			</div>
		</div>

		<div class="tab_inner_box">
			<div class="btn" id="tab_btn2">
				<div>
					<a href="${pageContext.request.contextPath}/community/announce.do">공지사항</a>
				</div>

			</div>

		</div>



		<div class="tab_inner_box">
			<div class="btn" id="tab_btn2">
				<div>
					<a href="${pageContext.request.contextPath}/festive/festive.do">홍보게시판</a>
				</div>
			</div>
		</div>

		<div class="tab_inner_box">
			<div class="btn" id="tab_btn2">
				<div>졸업로드맵</div>
				<div>
					<i class="fas fa-chevron-down"></i>
				</div>
			</div>

			<div class="tab_btn_inner">
				<div>
					<a
						href="${pageContext.request.contextPath}/loadmap/snu_class_loadmap.do">과별
						졸업로드맵</a>
				</div>
				<div>
					<a
						href="${pageContext.request.contextPath}/loadmap/snu_education_loadmap.do">교직
						로드맵</a>
				</div>
			</div>
		</div>




	</div>

</div>