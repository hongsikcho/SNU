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
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic.css" rel="stylesheet">
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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notice.css">
	

<style type="text/css">
.main_box{
	font-family: 'NanumGothic';
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
                <span>공지사항</span>
                <img src="${pageContext.request.contextPath}/assets/img/snu_logo.png"/>
            </div>


            <div class="snu_qna_box">

                <div class="snu_qna_content" id="snu_qna_header">
                    <div style="width: 8%;">번호</div>
                    <div style="width: 44%;">제목</div>

                    <div style="width: 16%;">작성자</div>

                    <div style="width: 16%;">게시일</div>
                    <div style="width: 16%;">조회수</div>
                </div>
                <div class="snu_qna_content">
                    <div style="width: 8%;">1</div>
                    <div style="width: 44%; text-align: left;">류호수 입니다. 안녕하세요</div>

                    <div style="width: 16%;">류호수</div>

                    <div style="width: 16%;">2022.02.03</div>
                    <div style="width: 16%;">45</div>
                </div>

                <div class="snu_qna_content">
                    <div style="width: 8%;">2</div>
                    <div style="width: 44%; text-align: left; ">예시 제목2 입니다</div>

                    <div style="width: 16%;">조홍식</div>

                    <div style="width: 16%;">2022.02.03</div>
                    <div style="width: 16%;">1,553</div>
                </div>

                <div class="snu_qna_content">
                    <div style="width: 8%;">3</div>
                    <div style="width: 44%; text-align: left; ">안녕하세요 자원봉사단 단장 이창준 입니다. </div>
                    <div style="width: 16%;">이창준</div>

                    <div style="width: 16%;">2022.02.03</div>
                    <div style="width: 16%;">123,456,789</div>
                </div>
            </div>

            <!--<div class="snu_qna_write_box">
                <a class="snu_qna_write_btn">글쓰기</a>
            </div>글쓰기 버튼-->
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
                <span>공지사항</span>

            </div>
            <div class="snu_mobile_qna_main_box">
                <div class="snu_mobile_qna_content">
                    <div class="snu_mobile_qna_content_title">류호수 입니다. 안녕하세요  </div>
                    <div class="snu_mobile_qna_content_detail"><span>류호수 </span><span>| 2021.02.03</span> |   252</div>
                </div>

                <div class="snu_mobile_qna_content">
                    <div class="snu_mobile_qna_content_title">예시 제목 2입니다.  </div>
                    <div class="snu_mobile_qna_content_detail"><span>조홍식 </span><span>| 2021.02.03</span> |   252</div>
                </div>

                <div class="snu_mobile_qna_content">
                    <div class="snu_mobile_qna_content_title">안녕하세요 자원봉사단 단장 이창준 입니다.</div>
                    <div class="snu_mobile_qna_content_detail"><span>이창준 </span><span>| 2021.02.03</span> | </i>  123,456,789</div>
                </div>

                <div class="snu_mobile_qna_content">
                    <div class="snu_mobile_qna_content_title">안녕하세요 자원봉사단 단장 이창준 입니다.</div>
                    <div class="snu_mobile_qna_content_detail"><span>이창준 </span><span>| 2021.02.03</span> |   123,456,789</div>
                </div>

                <div class="snu_mobile_qna_content">
                    <div class="snu_mobile_qna_content_title">안녕하세요 자원봉사단 단장 이창준 입니다.</div>
                    <div class="snu_mobile_qna_content_detail"><span>이창준 </span><span>| 2021.02.03</span> |  123,456,789</div>
                </div>
                <div class="snu_mobile_qna_content">
                    <div class="snu_mobile_qna_content_title">안녕하세요 자원봉사단 단장 이창준 입니다.</div>
                    <div class="snu_mobile_qna_content_detail"><span>이창준 </span><span>| 2021.02.03</span> |   123,456,789</div>
                </div>
                <div class="snu_mobile_qna_content">
                    <div class="snu_mobile_qna_content_title">안녕하세요 자원봉사단 단장 이창준 입니다.</div>
                    <div class="snu_mobile_qna_content_detail"><span>이창준 </span><span>| 2021.02.03</span> |   123,456,789</div>
                </div>
            </div>

            <div class="snu_qna_write_box">
                <a class="snu_qna_write_btn">글쓰기</a>
            </div>
        </div>
        
        
        
       
       
        <!--모바일 footer-->
        <%@ include file="../../include/MOBILE/footer.jsp"%>


    </div>


    <script src="https://kit.fontawesome.com/695be3a17b.js" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/style.js"> </script>
	

</body>
</html>