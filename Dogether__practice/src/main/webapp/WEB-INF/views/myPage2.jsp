<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<head>
<link rel='stylesheet' type='text/css' href='./resources/theme.css' />
<link rel='stylesheet' type='text/css' href='./resources/fullcalendar.css' />
<link rel="apple-touch-icon" href="apple-touch-icon.jpg" />

<link rel="stylesheet" href="./resources/css/templatemo-style.css" />
<link rel="stylesheet" href="./resources/css/Calander.css" />
<link rel='stylesheet' type='text/css' href='./resources/css/theme.css' />
<link rel='stylesheet' type='text/css' href='./resources/css/fullcalendar.css' />
<script src="./resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script type='text/javascript' src='./resources/js/jquery.js'></script>
<script type='text/javascript' src='./resources/js/jquery-ui-custom.js'></script>
<script type='text/javascript' src='./resources/js/fullcalendar.min.js'></script>


<script type='text/javascript' src='./resources/js/jquery.js'></script>
<script type='text/javascript' src='./resources/js/jquery-ui-custom.js'></script>
<script type='text/javascript' src='./resources/js/fullcalendar.min.js'></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
<script src="./resources/js/vendor/bootstrap.min.js"></script>
<script src="./resources/js/plugins.js"></script>
<script src="./resources/js/main.js"></script>
 <link href='./resources/fullcalendar/main.css' rel='stylesheet' />
    <script src='./resources/fullcalendar/main.js'></script>

</head>
<body>

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




</body>
</html>
