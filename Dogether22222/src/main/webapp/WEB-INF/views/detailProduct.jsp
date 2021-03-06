<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>DOGETHER</title>
    
<link rel="stylesheet" href="./resources/css/templatemo-style.css">
<link rel="stylesheet" href="./resources/css/Calander.css">
<script src="./resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="./resources/js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
<script src="./resources/js/vendor/bootstrap.min.js"></script>
<script src="./resources/js/plugins.js"></script>
<script src="./resources/js/main.js"></script>
<script src="./resources/img/shoppingmall/js/submit.js"></script>

    <!--  
    Favicons
    =============================================
    -->
    <link rel="apple-touch-icon" sizes="57x57" href="./resources/img/shoppingmall/images/favicons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="./resources/img/shoppingmall/images/favicons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="./resources/img/shoppingmall/images/favicons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="./resources/img/shoppingmall/images/favicons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="./resources/img/shoppingmall/images/favicons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="./resources/img/shoppingmall/images/favicons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="./resources/img/shoppingmall/images/favicons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="./resources/img/shoppingmall/images/favicons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="./resources/img/shoppingmall/images/favicons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="./resources/img/shoppingmall/images/favicons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./resources/img/shoppingmall/images/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="./resources/img/shoppingmall/images/favicons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./resources/img/shoppingmall/images/favicons/favicon-16x16.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="./resources/img/shoppingmall/images/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!--  
    Stylesheets
    =============================================
    
    -->
    <!-- Default stylesheets-->
    <link href="./resources/img/shoppingmall/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Template specific stylesheets-->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Volkhov:400i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/animate.css/animate.css" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/components-font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/et-line-font/et-line-font.css" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/flexslider/flexslider.css" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/owl.carousel/dist/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/magnific-popup/dist/magnific-popup.css" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/simple-text-rotator/simpletextrotator.css" rel="stylesheet">
    <!-- Main stylesheet and color file-->
    <link href="./resources/img/shoppingmall/css/style.css" rel="stylesheet">
    <link id="color-scheme" href="./resources/img/shoppingmall/css/colors/default.css" rel="stylesheet">
        <link rel="stylesheet" href="./resources/css/templatemo-style.css">
	<link rel="stylesheet" href="./resources/css/Calander.css">
  </head>
  
  <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
   
   
    <main>
      <div class="page-loader">
        <div class="loader">Loading...</div>
      </div>
     
	<!-- nav???---------------------------------------------------------- -->
		<nav>
			<div class="logo">
				<a href="index.jsp">DO<em>GETHER</em></a>
			</div>
	    	<div class="menu-icon">
	    		<span></span>
			</div>
		</nav>
      <!-- nav???---------------------------------------------------------- -->
      
		<p id="productIDvalue" style="display:none;">${product.productID}</p>
	
	
      <div class="main">
        <section class="module">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 mb-sm-40"><a class="gallery" href="./resources/img/shoppingmall/images/shop/product-7.jpg">
              						<img src="./resources/img/shoppingmall/productimgs/${product.product_realfname}" width="665" height="750" alt="????????????"></a>
                  
              </div>
              <div class="col-sm-6">
                <div class="row">
                  <div class="col-sm-12">
                    <h1 id="ProductNameName" class="product-title font-alt">${product.productName}</h1>
                  </div>
                </div>
                
                <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="price font-alt"><span class="amount">${product.productPrice}???</span></div>
                  </div>
                </div>
                <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="price font-alt"><span class="amount">${product.productContent}</span></div>
                  </div>
                </div>
                <div class="row mb-20">
                  <div class="col-sm-4 mb-sm-20">
                    <input id="productCnt" class="form-control input-lg" type="number" name="coun" value="1" max="40" min="1" required="required"/>
                  </div>
                  <div class="col-sm-8"><button id="cartBtn" class="btn btn-lg btn-block btn-round btn-b" href="Cart">Add To Cart</button></div>
                </div>
                <div class="row mb-20">
                </div>
              </div>
            </div>
    
    
    
    
          </div>
        </section>
  
        <div class="module-small bg-dark">
          <div class="container">
            <div class="row">
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">About DOGETHER</h5>
                  <p>???????????? ??? ?????? QnA??? ?????? ???????????? ????????????????????????.</p>
                  <p>Phone: 010 - 1111 - 2222</p>Fax: +1 234 567 89 10
                  <p>Email: <a href="#">DOGETHER@dddogether.com</a></p>
                </div>
              </div>
             
            </div>
          </div>
        </div>
        <hr class="divider-d">
              
	      <!-- footer---------------------------------------------------------- -->
		<footer id="footer">
	        <div class="container-fluid">
	            <div class="col-md-12">
	                <p id="ff">Copyright &copy; 2018 Company Name 
				       | Designed by TemplateMo
				    </p>
	            </div>
	        </div>
		</footer>
		<!-- footer---------------------------------------------------------- -->
	      
      
      
      </div>
      <div class="scroll-up"><a href="#totop"><i class="fa fa-angle-double-up"></i></a></div>
    </main>
      
      
     
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
        
        
        
        
        
        
        
        
        

      
      
      </div>
      <div class="scroll-up"><a href="#totop"><i class="fa fa-angle-double-up"></i></a></div>
    </main>
    <!--  
    JavaScripts
    =============================================
    -->
    <script src="./resources/img/shoppingmall/lib/jquery/dist/jquery.js"></script>
    <script src="./resources/img/shoppingmall/lib/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="./resources/img/shoppingmall/lib/wow/dist/wow.js"></script>
    <script src="./resources/img/shoppingmall/lib/jquery.mb.ytplayer/dist/jquery.mb.YTPlayer.js"></script>
    <script src="./resources/img/shoppingmall/lib/isotope/dist/isotope.pkgd.js"></script>
    <script src="./resources/img/shoppingmall/lib/imagesloaded/imagesloaded.pkgd.js"></script>
    <script src="./resources/img/shoppingmall/lib/flexslider/jquery.flexslider.js"></script>
    <script src="./resources/img/shoppingmall/lib/owl.carousel/dist/owl.carousel.min.js"></script>
    <script src="./resources/img/shoppingmall/lib/smoothscroll.js"></script>
    <script src="./resources/img/shoppingmall/lib/magnific-popup/dist/jquery.magnific-popup.js"></script>
    <script src="./resources/img/shoppingmall/lib/simple-text-rotator/jquery.simple-text-rotator.min.js"></script>
    <script src="./resources/img/shoppingmall/js/plugins.js"></script>
    <script src="./resources/img/shoppingmall/js/main.js"></script>
  </body>
</html>