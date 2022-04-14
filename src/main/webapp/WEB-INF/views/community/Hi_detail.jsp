<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사범대</title>
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
    <link rel="stylesheet" href="assets/css/FAQ.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/hi_detail.css">
</head>

<style>

</style>




<body>
    <div class="main_box">

        <!--pc fix bar-->
        <div class="header">
			<%@ include file="../../include/WEB/header.jsp"%>
			<%@ include file="../../include/WEB/side_bar.jsp"%>

		</div>
        

    
            <!--pc 메인 박스 시작-->
            <div class="snu_main_box">
                <div class="snu_main_header">
                    2월 HI 사범
                 </div>
                 <div class="hi_detail_video">
                     <iframe width="90%" height="500px" src="https://www.youtube.com/watch?v=CTG74d8-FrY&t=247s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
            </div>

        <!--pc 메인박스 끝-->
        


        <!--pc footer-->
        <%@ include file="../../include/WEB/footer.jsp"%>





    </div>



    <!--모바일 -->
    <div class="snu_mobile_box">

        <!-- 모바일 헤더-->
       <%@ include file="../../include/MOBILE/header.jsp"%>
		<%@ include file="../../include/MOBILE/tab.jsp"%>

        <!--모바일 메인 박스 시작-->

        
        <div class="snu_mobile_main_box">

            <div class="snu_main_header">
               2월 HI 사범
            </div>
            <div class="hi_detail_video"><iframe width="90%" height="315" src="https://www.youtube.com/watch?v=CTG74d8-FrY&t=247s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
            
            <!--모바일 메인 이너-->
            
            <div>


            </div>
            <!--모바일 메인 이너 끝-->

        </div>

        <!--모바일 메인 박스 끝-->
       


        <!--모바일 footer-->


    <%@ include file="../../include/MOBILE/footer.jsp"%>
    </div>

    <script src="https://kit.fontawesome.com/6478f529f2.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/695be3a17b.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>
	
   

</body>




</html>