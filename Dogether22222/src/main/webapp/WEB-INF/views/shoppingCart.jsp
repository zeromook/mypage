<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--
    Document Title
    =============================================
    -->
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
  </head>
  <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
      <div class="page-loader">
        <div class="loader">로딩중...</div>
      </div>


      <div class="main">
        <section class="module">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h1 class="module-title font-alt">장바구니</h1>
              </div>
            </div>
             <hr class="divider-w pt-20">
             <div class="row">
              <div class="col-sm-12">
                <table class="table table-striped table-border checkout-table">
                  <tbody>
                    <tr>
                      <th class="hidden-xs">상품</th>
                      <th>상품명</th>
                      <th class="hidden-xs">가격</th>
                      <th>수량</th>
                      <th>총 가격</th>
                      <th>삭제</th>
                    </tr>

					<c:set var="totalprice" value="0" />
                    <c:forEach items="${jangbaguni}" var="cart">
                    		<div id="ProductID" style="display:none">${cart["ProductID"]}</div>
		                    <tr>
		                      <td class="hidden-xs"><a href="#"><img src="./resources/img/shoppingmall/productimgs/${cart['Product_realfname']}"/></a></td>
		                      <td>
		                        <h5 id="ProductName" class="product-title font-alt">${cart["ProductName"]}</h5>
		                      </td>
		                      <td class="hidden-xs">
		                        <h5 id="ProductPrice" class="product-title font-alt">${cart["ProductPrice"]}₩</h5>
		                        <c:set var="price" value="${cart['ProductPrice']}"/>
		                      </td>
		                      <td>
		                        <input id="ProductCNT" class="form-control" type="number" name="quantity" value="${cart['ProductQuantity']}" max="50" min="1"/>
		                        <c:set var="CNT" value="${cart['ProductQuantity']}"/>
		                      </td>
		                      <td>
		                      
		                        <h5 id="TotalPrice" class="product-title font-alt" >${price*CNT}₩</h5>
		                      </td>
		                      <td class="pr-remove"><a href="shoppingCart.do" id="removeBtn"><i class="fa fa-times" style="cursor:pointer"></i></a></td>
		                    </tr>
					<c:set var="totalprice" value="${totalprice + (cart['ProductPrice'] * cart['ProductQuantity']) }" />
                    </c:forEach>

                  </tbody>
                </table>
              </div>
            </div>
            <div class="row">

              <div class="col-sm-3 col-sm-offset-3">
                <div class="form-group">
                  <button id="updateBtn" class="btn btn-block btn-round btn-d pull-right" type="submit">Update Cart</button>
                </div>
              </div>
            </div>
            <hr class="divider-w">
            <div class="row mt-70">
              <div class="col-sm-5 col-sm-offset-7">
                <div class="shop-Cart-totalbox">
                  <h4 class="font-alt">Cart Totals</h4>
                  <table class="table table-striped table-border checkout-table">
                    <tbody>
                      <tr class="shop-Cart-totalprice">
                        <th>총 가격 :</th>
                        <td>${totalprice}₩</td>
                      </tr>
                    </tbody>
                  </table>
                  <button class="btn btn-lg btn-block btn-round btn-d" type="button" onclick="location.href='payment.do' " >계산하기</button>
                </div>
              </div>
            </div>
          </div>
        </section>






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
