<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
        <link rel="apple-touch-icon" href="apple-touch-icon.jpg">

        <link rel="stylesheet" href="./resources/css/templatemo-style.css">
        <link rel="stylesheet" href="./resources/css/Calander.css">
		<link rel='stylesheet' type='text/css' href='./resources/css/theme.css' />
		<link rel='stylesheet' type='text/css' href='./resources/css/fullcalendar.css' />
        <script src="./resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <script type='text/javascript' src='./resources/js/jquery.js'></script>
		<script type='text/javascript' src='./resources/js/jquery-ui-custom.js'></script>
		<script type='text/javascript' src='./resources/js/fullcalendar.min.js'></script>
        <script type='text/javascript'>

	$(document).ready(function() {
	
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		
		$('#calendar').fullCalendar({
			theme: true,
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			editable: true,
			events: [
				{
					title: 'All Day Event',
					start: new Date(y, m, 1)
				},
				{
					title: 'Long Event',
					start: new Date(y, m, d-5),
					end: new Date(y, m, d-2)
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: new Date(y, m, d-3, 16, 0),
					allDay: false
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: new Date(y, m, d+4, 16, 0),
					allDay: false
				},
				{
					title: 'Meeting',
					start: new Date(y, m, d, 10, 30),
					allDay: false
				},
				{
					title: 'Lunch',
					start: new Date(y, m, d, 12, 0),
					end: new Date(y, m, d, 14, 0),
					allDay: false
				},
				{
					title: 'Birthday Party',
					start: new Date(y, m, d+1, 19, 0),
					end: new Date(y, m, d+1, 22, 30),
					allDay: false
				},
				{
					title: 'Click for Google',
					start: new Date(y, m, 28),
					end: new Date(y, m, 29),
					url: 'http://google.com/'
				}
			]
		});
		
	});

</script>
<style type='text/css'>

	body {
		margin-top: 40px;
		text-align: center;
		font-size: 13px;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		}

	#calendar {
		width: 900px;
		margin: 0 auto;
		}
</style>
</head>
<body onload="autoReload();">
<div id="totalwrap">
<nav>
	<div class="logo">
    	<a href="index.jsp">DO<em>GETHER</em></a>
	</div>
    <div class="menu-icon">
    	<span></span>
    </div>
</nav>



<!-- <section> -->
<div id="profile">
	<div id="profileImg">
		<img src="./resources/img/smile.jpg">
	</div>
	<div id="profileContent">
		<ul>
			<li>닉네임: <b id="nickname">${SessionScope.nickname}</b>  </li><br>
			<li>보유포인트: <b id="havepoint">${SessionScope.point}</b>  </li>
		</ul>
	</div>




 <div id="categori">
	<ul>
      <li><a class="active" href="myPage.do">마이페이지</a></li>
      <li><a href="runninguStatus.do">런닝구 현황</a></li>
      <li><a href="updateMyInfo.do">내 정보 수정</a></li>
      <li><a href="managementMyPost.do">내 글 관리</a></li>
      <li><a href="purchaseList.do">구매 목록</a></li>
    </ul>
</div> 
</div>

	<!-- 달력------------------------------------------------ -->
	<div id='calendar'></div>
	
	
	<div id="pointslash"><!-- 포인트결제------------------------------------------------------------------------------------------------- -->
		<h1>포인트 충전</h1>
		<div id="mypoint">
			<b>보유포인트</b> <h4></h4>
		</div>
		<h1>결제 수단</h1>
		<div id="selectPayKind">
			<input type="radio" id="card" name="PayKind" value="카드">
			<label for="카드">카드결제</label>	
		</div>
		<div id="selectPayKind">
			<input type="radio" id="kakao" name="PayKind" value="카카오페이">
			<label for="카카오페이">카카오페이</label>	
		</div>
		<br>
		<br>
		<div id="Pointcharge">
		<button id="chargebtn">충전하기</button>
		</div>
	</div>
	
	
	<div><!-- nav바 메뉴 -->
    <section class="overlay-menu">
      <div class="container">
        <div class="row">
          <div class="main-menu">
              <ul>
              
                  <li>
                      <a href="#">런닝구</a>
                  </li>
                  <li>
                      <a href="#">Gym 예약할까</a>
                  </li>
                  <li>
                      <a href="#">온라인 PT</a>
                  </li>
                  <li>
                      <a href="#">자랑하기</a>
                  </li>
                  <li>
                      <a href="#">BMI 측정가능 보건소</a>
                  </li>
                  <li>
                      <a href="#">쇼핑몰</a>
                  </li>
              </ul>
          </div>
        </div>
      </div>
    </section>
    </div>
	
	
<footer id="footer">
        <div class="container-fluid">
            <div class="col-md-12">
                <p id="ff">Copyright &copy; 2018 Company Name 
			       | Designed by TemplateMo
			    </p>
            </div>
        </div>
</footer>
	
</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="./resources/js/vendor/bootstrap.min.js"></script>
    
    <script src="./resources/js/plugins.js"></script>
    <script src="./resources/js/main.js"></script>
	
</body>
</html>