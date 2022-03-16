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
<title>선거</title>

<style type="text/css">
body {
	margin: 0px;
	background: #ECEFF1;
}

.snu_game_box {
	width: 500px;
	text-align: center;
	background-color: white;
	margin: auto;
}

.snu_game_title {
	padding: 30px 0px;
}

@media ( max-width : 600px) {
	.snu_game_box {
		width: 100%;
	}
	body {
		background: white;
	}
}

.header_bar {
	height: 20px;
	background-color: #0F0F70;
	margin-bottom: 40px;
}

.hidden {
	display: none;
}

.answer {
	cursor: pointer;
	background-color: #0F0F70;
	text-decoration: none;
	color: white;
	border: 0;
	box-shadow: 0 1px 3px rgb(0 0 0/ 12%), 0 1px 2px rgb(0 0 0/ 24%);
	font-size: 1.1rem;
	padding: 10px 0px;
	font-weight: bold;
	width: 95%;
	font-weight: bold
}
</style>

</head>

<body>

	<div>
		<div class="header_bar"></div>

		<div class="snu_game_box" style="">
			<div id="question1" class="question">
				<div class="snu_game_title">사범대학교 mbti</div>
				<div class="" style="height: 150px;"></div>

				<div>
					1번 샘플 예시 문제입니다 <br /> 둘 중 하나를 골라보세요.<br /> <br /> <br /> (1 of
					4)
				</div>
				<br /> <br /> <br />
				<button class="answer" value="E">1. 류호수</button>
				<br /> <br />
				<button class="answer" value="I">2. 조홍식</button>
			</div>


			<div id="question2" class="question hidden">
				<div class="snu_game_title">사범대학교 mbti</div>
				<div class="" style="height: 150px;"></div>

				<div>
					2번 샘플 예시 문제입니다 <br /> 둘 중 하나를 골라보세요.<br /> <br /> <br /> (2 of
					4)
				</div>
				<br /> <br /> <br />
				<button class="answer" value="N">1. 류호수</button>
				<br /> <br />
				<button class="answer" value="S">2. 조홍식</button>
			</div>

			<div id="question3" class="question hidden">
				<div class="snu_game_title">사범대학교 mbti</div>
				<div class="" style="height: 150px;"></div>

				<div>
					3번 샘플 예시 문제입니다 <br /> 둘 중 하나를 골라보세요.<br /> <br /> <br /> (3 of
					4)
				</div>
				<br /> <br /> <br />
				<button class="answer" value="F">1. 류호수</button>
				<br /> <br />
				<button class="answer" value="T">2. 조홍식</button>
			</div>

			<div id="question4" class="question hidden">
				<div class="snu_game_title">사범대학교 mbti</div>
				<div class="" style="height: 150px;"></div>

				<div>
					4번 샘플 예시 문제입니다 <br /> 둘 중 하나를 골라보세요.<br /> <br /> <br /> (4 of
					4)
				</div>
				<br /> <br /> <br />
				<button class="answer last_btn" value="J">1. 류호수</button>
				<br /> <br />
				<button class="answer last_btn" value="P">2. 조홍식</button>
			</div>

			<div id="result" class="question hidden">
				<div class="snu_game_title">
					사범대학교 mbti <br /> <br /> 재입학 결과보기<br />
				</div>
				<img class="game_loading"
					src="${pageContext.request.contextPath }/assets/img/loading.gif">
				

			</div>


		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/6478f529f2.js"
		crossorigin="anonymous"></script>
	<script>
		var mbti = [ 0, 0, 0, 0, 0, 0, 0, 0 ]
		$(".answer").click(function() {
			$(this).parents(".question").addClass("hidden");
			$(this).parents(".question").next().removeClass("hidden");
			var check = $(this).val();
	
			switch (check) {
			case "E":
				mbti[0]++;
				break;
			case "I":
				mbti[1]++;
				break;
			case "N":
				mbti[2]++;
				break;
			case "S":
				mbti[3]++;
				break;
			case "F":
				mbti[4]++;
				break;
			case "T":
				mbti[5]++;
				break;
			case "J":
				mbti[6]++;
				break;
			case "P":
				mbti[7]++;
				break;
			}

		})
		$(".last_btn").click(function() {
			var result = ""
			if (mbti[0] > mbti[1]) {
				result += "E";
			} else {
				result += "I";
			}

			if (mbti[2] > mbti[3]) {
				result += "N";
			} else {
				result += "S";
			}

			if (mbti[4] > mbti[5]) {
				result += "F";
			} else {
				result += "T";
			}

			if (mbti[6] > mbti[7]) {
				result += "J";
			} else {
				result += "P";
			}
		
			setTimeout(function() {
				$(".game_loading").addClass('hidden');
				
				var code = "<div>당신의 mbti는 </div>"
				code += "<h1>" +result+"</h1>"
				$("#result").append(code);

			}, 2000);
		})
	</script>
</body>
</html>