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
			<li>?????????: <b id="nickname">${SessionScope.nickname}</b>  </li><br>
			<li>???????????????: <b id="havepoint">${SessionScope.point}</b>  </li>
		</ul>
	</div>




 <div id="categori">
	<ul>
      <li><a class="active" href="myPage.do">???????????????</a></li>
      <li><a href="runninguStatus.do">????????? ??????</a></li>
      <li><a href="updateMyInfo.do">??? ?????? ??????</a></li>
      <li><a href="managementMyPost.do">??? ??? ??????</a></li>
      <li><a href="purchaseList.do">?????? ??????</a></li>
    </ul>
</div> 
</div>




<div id='calendar'></div>





	<div id="pointslash"><!-- ???????????????------------------------------------------------------------------------------------------------- -->
		<h1>????????? ??????</h1>
		<div id="mypoint">
			<b>???????????????</b> <h4></h4>
		</div>
		<h1>?????? ??????</h1>
		<div id="selectPayKind">
			<input type="radio" id="card" name="PayKind" value="??????">
			<label for="??????">????????????</label>	
		</div>
		<div id="selectPayKind">
			<input type="radio" id="kakao" name="PayKind" value="???????????????">
			<label for="???????????????">???????????????</label>	
		</div>
		<br>
		<br>
		<div id="Pointcharge">
		<button id="chargebtn">????????????</button>
		</div>
	</div>
	



<div><!-- nav??? ?????? -->
    <section class="overlay-menu">
      <div class="container">
        <div class="row">
          <div class="main-menu">
              <ul>
              
                  <li>
                      <a href="#">?????????</a>
                  </li>
                  <li>
                      <a href="#">Gym ????????????</a>
                  </li>
                  <li>
                      <a href="#">????????? PT</a>
                  </li>
                  <li>
                      <a href="#">????????????</a>
                  </li>
                  <li>
                      <a href="#">BMI ???????????? ?????????</a>
                  </li>
                  <li>
                      <a href="#">?????????</a>
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
