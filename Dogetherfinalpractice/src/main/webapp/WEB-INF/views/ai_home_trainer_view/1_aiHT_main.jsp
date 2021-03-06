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
    <title>Titan | Multipurpose HTML5 Template</title>
    <!--  
    Favicons
    =============================================
    -->

    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="theme-color" content="#ffffff">
    <!--  
    Stylesheets
    =============================================
    
    -->
    <!-- Default stylesheets-->
    <link href="../resources/ai_home_trainer_resources/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Template specific stylesheets-->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Volkhov:400i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="../resources/ai_home_trainer_resources/lib/animate.css/animate.css" rel="stylesheet">
    <link href="../resources/ai_home_trainer_resources/lib/components-font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../resources/ai_home_trainer_resources/lib/et-line-font/et-line-font.css" rel="stylesheet">
    <link href="../resources/ai_home_trainer_resources/lib/flexslider/flexslider.css" rel="stylesheet">
    <link href="../resources/ai_home_trainer_resources/lib/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../resources/ai_home_trainer_resources/lib/owl.carousel/dist/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="../resources/ai_home_trainer_resources/lib/magnific-popup/dist/magnific-popup.css" rel="stylesheet">
    <link href="../resources/ai_home_trainer_resources/lib/simple-text-rotator/simpletextrotator.css" rel="stylesheet">
    <!-- Main stylesheet and color file-->
    <link href="../resources/ai_home_trainer_resources/css/style.css" rel="stylesheet">
    <link id="color-scheme" href="../resources/ai_home_trainer_resources/css/colors/default.css" rel="stylesheet">
    
    <link href="../resources/ai_home_trainer_resources/css/main.css" rel="stylesheet">
    
    
    

     <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
 
 
 
 
 <script>

	function Hello(){

		
        var worksgrid   = $('#works-grid'),
        worksgrid_mode;

    if (worksgrid.hasClass('works-grid-masonry')) {
        worksgrid_mode = 'masonry';
    } else {
        worksgrid_mode = 'fitRows';
    }

    worksgrid.imagesLoaded(function() {
        worksgrid.isotope({
            layoutMode: worksgrid_mode,
            itemSelector: '.work-item'
        });
    });

    $('#filters a').click(function() {
        $('#filters .current').removeClass('current');
        $(this).addClass('current');
        var selector = $(this).attr('data-filter');

        worksgrid.isotope({
            filter: selector,
            animationOptions: {
                duration: 750,
                easing: 'linear',
                queue: false
            }
        });

        return false;
    });
		
		

        var demos2   = $('#demos2'),
            demos2_mode;

        if (demos2.hasClass('demos2-masonry')) {
            demos2_mode = 'masonry2';
        } else {
            demos2_mode = 'fitRows2';
        }

        demos2.imagesLoaded(function() {
            demos2.isotope({
                layoutMode: demos2_mode,
                itemSelector: '.aaaaa'
            });
        });




        $('#filters2 a').click(function() {
            $('#filters2 .current2').removeClass('current2');
            $(this).addClass('current2');
            var selector2 = $(this).attr('data-filter2');

            demos2.isotope({
                filter: selector2,
                animationOptions: {
                    duration: 750,
                    easing: 'linear',
                    queue: false
                }
            });

            return false;
        });
        

}

	</script>   
    
    
    
 
    
    
    
    
  </head>
  <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
      <div class="page-loader">
        <div class="loader">Loading...</div>
      </div>
      
      
      
      
<!-- ????????? ????????? ????????? ????????? -->
      
      
	<nav id="nav_test">
	   <div class="logo">
	       <a href="index.jsp">DO<em>GETHER</em></a>
	   </div>
	    <div class="menu-icon">
	       <span></span>
	    </div>
	</nav>      


<!-- ????????? ???! -->

<!-- ?????? ????????? ?????? ?????? -->


	<section class="overlay-menu">
		<div class="container">
			<div class="row">
				<div class="main-menu">
					<ul>
						<li><a href="#">?????????</a></li>
						<li><a href="#">Gym ????????????</a></li>
						<li><a href="#">????????? PT</a></li>
						<li><a href="#">????????????</a></li>
						<li><a href="#">BMI ???????????? ?????????</a></li>
						<li><a href="#">?????????</a></li>
						<li><a href="Mypage">???????????????</a></li>

					</ul>
				</div>
			</div>
		</div>
	</section>



<!-- ?????? ????????? ?????? ?????? ???! -->









            <!-- ?????? -->
      
      
      <section id = "padding-test" class="bg-dark-30 showcase-page-header module parallax-bg" data-background="../resources/ai_home_trainer_resources/images/main3.gif">
        <div id="titanA" class="titan-caption">
          <div class="caption-content">
          
            <div class="font-alt mb-30 titan-title-size-1">Powerful. More Heathy.</div>
            <div class="font-alt mb-40 titan-title-size-4">AI HOME TRANIER</div>
            <a class="section-scroll btn btn-border-w btn-round" href="#newnewnew">GO to EXCISE</a>
        
          </div>
        </div>
      </section>

      
      
      <!-- ?????? ?????? ???!!! -->
      
      
      <!-- ?????? ?????? -->
      
      
 
 
           <div class="bottom" id="bottomA">
            <div class="text-right container hidden-xs"><a id="scrollDownArrow" href="#"><i class="ion-ios7-arrow-thin-down"></i></a></div>
            <div class="signupForm">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                        
                        
                            <b class="mb10">AI Home Trainer helps you stay at home safely and achieve your workout goals, and supports your success.</b>
                        
                        
                        </div>
                        <div class="col-md-6 text-right">
                            <form class="form-inline subscribe-form" id="subscription-form" role="form">
                            
                            </form>
                            
                            
                            <div id="subscription-response"></div>
                        </div>
                    </div>
                </div><!-- container -->
            </div><!--/signupForm-->
        </div>

      <!-- ?????? ?????? ??? -->
      
   
   
  
      
  
        
    
    <!-- ?????? ????????? ???!!!!!!!!!!!!!!!!!!!##################### -->
    
    
 
 
 
 
        <!-- Start Categories of The Month ?????? ????????? ????????? ?????? -->
    <section class="container py-5">
    
<div class="row textaa" id="newnewnew" >
            <div class="col-aa">

           <img src="../resources/ai_home_trainer_resources/images/bbbb.jpg" class="Textaaaa"></a>
       
            </div>
        </div>  
        

        <div class="row" id="test2">
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="../ai_home_trainer_view/2_aiHTsubIndex_exercise.do"><img id="rounded-circle" src="../resources/ai_home_trainer_resources/images/yss.jpg" class="rounded-circle img-fluid border" ></a>
                <h5 class="text-center mt-3 mb-3">?????????<h5>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="../ai_home_trainer_view/2_aiHTsubIndex_exercise.do"><img src="../resources/ai_home_trainer_resources/images/grud22.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">????????????</h2>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="../ai_home_trainer_view/2_aiHTsubIndex_exercise.do"><img src="../resources/ai_home_trainer_resources/images/yoga3.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">??????</h2>
            </div>
        </div>
    </section> 
    <!-- End Categories of The Month -->
 
 
 
    
    
<!-- ?????? ????????? -->

    <div id="gallery" class="grid">
        <figure class="effect-bubba">
            <img src="../resources/ai_home_trainer_resources/images/all.jpg" alt="img01">
            <figcaption>
                <h2>All  <span>exercise</span></h2>
                <a href="../ai_home_trainer_view/2_aiHTsubIndex_body.do">View more</a>
            </figcaption>           
        </figure>
        
        <figure class="effect-bubba">
            <img src="../resources/ai_home_trainer_resources/images/back1.jpg" alt="img02">
            <figcaption>
                <h2>for perfect <span>BACK</span></h2>
                <p>It is prepared for your healthy posture and <br>core muscles. </p>
                <a href="../ai_home_trainer_view/2_aiHTsubIndex_body.do" value="click" onclick="hello()">View more</a>
            </figcaption>           
        </figure>
        
        <figure class="effect-bubba">
            <img src="../resources/ai_home_trainer_resources/images/belly1.jpg" alt="img07">
            <figcaption>
                <h2>become good <span>BELLY</span> <i>Now</i></h2>
                <p>You will be able to start your day <br>a little lighter today!</p>              
                <a href="../ai_home_trainer_view/2_aiHTsubIndex_body.do">View more</a>
            </figcaption>           
        </figure>
        
        <figure class="effect-bubba">
            <img src="../resources/ai_home_trainer_resources/images/Arm.jpg" alt="img04">
            <figcaption>
                <h2>great <span>ARM</span></h2>
                <p>For an arm like Captain America!</p>
                <a href="../ai_home_trainer_view/2_aiHTsubIndex_body.do">View more</a>
            </figcaption>           
        </figure>
        
        <figure class="effect-bubba">
            <img src="../resources/ai_home_trainer_resources/images/leg.jpg" alt="img14">
            <figcaption>
                <h2>Healthy <span>LEG</span></h2>
                <span class="glyphicon glyphicon-star"></span>
                <span class="glyphicon glyphicon-heart"></span>
                <span class="glyphicon glyphicon-comment"></span>
                <p>If you build up your second heart, <br>your leg muscles, you'll be able to spend more energetic days.</p>
                <a href="../ai_home_trainer_view/2_aiHTsubIndex_body.do">View more</a>
            </figcaption>           
        </figure>
        
        <figure class="effect-bubba">
            <img src="../resources/ai_home_trainer_resources/images/Hip.jpg" alt="img08">
            <figcaption>
                <h2>handsome <span>HIP</span></h2>
                <p>If you want to have a more attractive back, <br>do it now.</p>
                <a href="../ai_home_trainer_view/2_aiHTsubIndex_body.do">View more</a>
            </figcaption>           
        </figure>
    </div><!-- #gallery -->
    
    <!-- ??????????????? ??? -->
    
    
    
  

  
    
    
    

    
    
    <!-- ?????? ????????? ??? ???!!!!!!!!!!!!!!!!!!!##################### -->
    
    
        
      
         <!-- ?????? ?????? ?????? 4?????? ????????? ????????? -->    


 <div class="main">
        <section class="module">
          <div class="container">
            <div class="row multi-columns-row">
              <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="features-item">
                  <div class="features-icon"><span class="icon-lightbulb"></span></div>
                  <h3 class="features-title font-alt">????????? ?????? ??????????????? ???????????????.</h3>
                  	 ?????? ????????????????????? ?????? ???????????? ?????????! ????????? Cam ??? ????????? ????????? ????????? ????????? ??????????????? ????????? ??? ????????????!
                </div>
              </div>
              <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="features-item">
                  <div class="features-icon"><span class="icon-tools"></span></div>
                  <h3 class="features-title font-alt">Designs &amp; interfaces</h3>Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.
                </div>
              </div>
              <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="features-item">
                  <div class="features-icon"><span class="icon-tools-2"></span></div>
                  <h3 class="features-title font-alt">Coding &amp; development</h3>Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.
                </div>
              </div>
              <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="features-item">
                  <div class="features-icon"><span class="icon-lifesaver"></span></div>
                  <h3 class="features-title font-alt">Dedicated support</h3>Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.
                </div>
              </div>
            </div>
          </div>
        </section> 
   
      
        
      
      




        
        
        
          <!-- ?????? ?????? ?????? ?????? -->
        
        
        
        <section class="module-extra-small bg-dark">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-md-8 col-lg-9">
                <div class="callout-text font-alt">
                  <br>
                  <p style="margin-bottom: 0px;">Copyright ?? 2018 Company Name | Designed by TemplateMo</p>
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
    <script src="../resources/ai_home_trainer_resources/lib/jquery/dist/jquery.js"></script>
    <script src="../resources/ai_home_trainer_resources/lib/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../resources/ai_home_trainer_resources/lib/wow/dist/wow.js"></script>
    <script src="../resources/ai_home_trainer_resources/lib/jquery.mb.ytplayer/dist/jquery.mb.YTPlayer.js"></script>
    <script src="../resources/ai_home_trainer_resources/lib/isotope/dist/isotope.pkgd.js"></script>
    <script src="../resources/ai_home_trainer_resources/lib/imagesloaded/imagesloaded.pkgd.js"></script>
    <script src="../resources/ai_home_trainer_resources/lib/flexslider/jquery.flexslider.js"></script>
    <script src="../resources/ai_home_trainer_resources/lib/owl.carousel/dist/owl.carousel.min.js"></script>
    <script src="../resources/ai_home_trainer_resources/lib/smoothscroll.js"></script>
    <script src="../resources/ai_home_trainer_resources/lib/magnific-popup/dist/jquery.magnific-popup.js"></script>
    <script src="../resources/ai_home_trainer_resources/lib/simple-text-rotator/jquery.simple-text-rotator.min.js"></script>
    <script src="../resources/ai_home_trainer_resources/js/plugins.js"></script>
    <script src="../resources/ai_home_trainer_resources/js/main.js"></script>
    
    
    <script src="../resources/ai_home_trainer_resources/js/add_plugins.js"></script>
    <script src="../resources/ai_home_trainer_resources/js/add_main.js"></script>
    
  </body>
</html>