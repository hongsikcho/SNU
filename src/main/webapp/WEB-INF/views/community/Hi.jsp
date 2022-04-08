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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/FAQ.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/hi.css">




<style type="text/css">

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
                        <span>HI 사범</span>
                        <img src="${pageContext.request.contextPath}/assets/img/snu_logo.png"/>
                    </div>
                <div class="hi_center">
                    <div class="hi_main_pt"><img src="${pageContext.request.contextPath}/assets/img/hi_img.png"></div>
                    <div class="hi_main_text">
                        <div class="hi_main_title"> <i class="fas fa-circle"></i> <span>HI사범이란 ?</span></div>
                        <div class="hi_main_body">
                            매달 한 명 ~ 두 명의 사범대학 소속 인터뷰를 대상으로 다양한 주제에 관해
                            이야기하고, 이를 영상 및 카드뉴스로 제작하여 공유하는 사업입니다. 인터뷰는 약 30분
                            동안 진행되며, 촬영된 영상은 사범대 학생회 유튜브 및 인스타그램 계정에 업로드됩니다.
                            사범대학 학우들 또는 관계자들의 이야기를 듣고, 학우들과 공유함으로써 상호소통할 수 있는
                            사범대 학생사회를 꿈꿉니다. 41대 학생회 늘품은 매달 말~초 하이사범 컨텐츠 인터뷰비 지원을
                            받아 더 자유로운 대화의 장을 만들고자 합니다.
                        </div>
                    </div>
                </div>
    
                <div class="hi_onclick">
                    <div><a href="#"><span class="hi_in">HI 사범 인터뷰 신청하기 <i class="fas fa-mouse-pointer"></i></span></a></div>
                </div>
    
                <div class="hi_foot">
                    <a class="hi_foot_box">
                        <div class="hi_foot_box_top">
                            <img src="${pageContext.request.contextPath}/assets/img/hi_january.png" alt="">
                        </div>

                        <div class="hi_foot_bpx_bot">
                            <span style="font-weight: 600;">[2022-3월]</span>
                            <br>...
                        </div>
                    </a>
                    <a href="Hi_detail.do" class="hi_foot_box">
                        <div class="hi_foot_box_top">
                            <img src="https://i.ytimg.com/vi/CTG74d8-FrY/maxresdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBycdmmTv81p7Ff1-ud3i8ie1ru0g" alt="" style="width: 100%;">
                        </div>
                        <div class="hi_foot_bpx_bot"><span style="font-weight: 600;">[2022-2월]</span>
                            <br>'임기 3개월만에 미친듯이 갈린 그들 ,<br> 늘품 집행위원장단 인터뷰'
                        </div>
                        
                    </a>
                    <a class="hi_foot_box">
                        <div class="hi_foot_box_top"><img src="${pageContext.request.contextPath}/assets/img/hi_january.png" alt=""></div>
                        <div class="hi_foot_bpx_bot">
                            <span style="font-weight: 600;">[2022-1월]</span>
                            <br>3년 만에 열리는사범대 대면 새터!
                            <br> 새터 준비 새기위원 특집
                        </div>
                    </a>
                </div>
            </div>
		
		
		


		<%@ include file="../../include/WEB/footer.jsp"%>


	</div>

	<!--모바일 -->

	<!-- 모바일 헤더-->
	<div class="snu_mobile_box">
		<%@ include file="../../include/MOBILE/header.jsp"%>
		<%@ include file="../../include/MOBILE/tab.jsp"%>
		<!--모바일 컨텐츠 박스-->
		
		 <div class="snu_mobile_main_box">

            <div class="snu_main_header">
               HI사범
            </div>
            
            <!--모바일 메인 이너-->
            
            <div>
            
                    <div class="hi_center">
                        <div class="hi_main_pt"><img src="${pageContext.request.contextPath}/assets/img/hi_img.png"></div>
                        <div class="hi_main_text">
                            <div class="hi_main_title"> <i class="fas fa-circle"></i>HI 사범이란?</div>
                            <div class="hi_main_body"> 매달 한 명 ~ 두 명의 사범대학 소속 인터뷰를 대상으로 다양한 주제에 관해
                                이야기하고, 이를 영상 및 카드뉴스로 제작하여 공유하는 사업입니다. 인터뷰는 약 30분
                                동안 진행되며, 촬영된 영상은 사범대 학생회 유튜브 및 인스타그램 계정에 업로드됩니다.
                                사범대학 학우들 또는 관계자들의 이야기를 듣고, 학우들과 공유함으로써 상호소통할 수 있는
                                사범대 학생사회를 꿈꿉니다. 41대 학생회 늘품은 매달 말~초 하이사범 컨텐츠 인터뷰비 지원을
                                받아 더 자유로운 대화의 장을 만들고자 합니다.</div>
                        </div>
                    </div>
        
                    <div class="hi_onclick">
                        <div><a href="#"><span class="hi_in">HI 사범 인터뷰 신청하기 <i class="fas fa-mouse-pointer"></i></span></a></div>
                    </div>
        
                    <div class="hi_foot">
                        <a class="hi_foot_box">
                            <div class="hi_foot_box_top"><img src="${pageContext.request.contextPath}/assets/img/hi_january.png" alt=""></div>
                            <div class="hi_foot_bpx_bot"><span style="font-weight: 600;">[2022-3월]</span>
                                <br>...
                            </div>
                        </a>
                    </a>
                        <a href="Hi_detail.do" class="hi_foot_box">
                            <div class="hi_foot_box_top"><img src="https://i.ytimg.com/vi/CTG74d8-FrY/maxresdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBycdmmTv81p7Ff1-ud3i8ie1ru0g" alt=""></div>
                            <div class="hi_foot_bpx_bot"><span style="font-weight: 600;">[2022-2월]</span>
                                <br>'임기 3개월만에 미친듯이 갈린 그들 ,<br> 늘품 집행위원장단 인터뷰'
                            </div>
                        </a>
                        <a class="hi_foot_box">
                            <div class="hi_foot_box_top"><img src="${pageContext.request.contextPath}/assets/img/hi_january.png" alt=""></div>
                            <div class="hi_foot_bpx_bot">
                            <span style="font-weight: 600;">[2022-3월]</span>
                            <br>3년 만에 열리는사범대 대면 새터!
                            <br> 새터 준비 새기위원 특집
                        </a>
                        </div>
                    </div>
                
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


</body>
</html>