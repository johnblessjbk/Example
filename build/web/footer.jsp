
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="col-md-4 agile_footer_grid">
                            <h3>E-Mart</h3>
				<ul class="w3_address">
					<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Kerala-marine drive<span> Kochin</span></li>
					<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">emart@info.com</a></li>
					<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+91 9988756545</li>
				</ul>
			</div>
			<div class="col-md-4 agile_footer_grid">
				<h3></h3>
				<p>Shopping is an activity in which a customer browses the available
                                    goods or services presented by one or more retailers with the 
                                    potential intent to purchase a suitable selection of them.</p>
				<ul class="agileits_social_list">
					<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
				</ul>
			</div>
			<div class="col-md-4 agile_footer_grid">
				<h3>Services</h3>
				<ul class="agileits_w3layouts_footer_grid_list">
					<li><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						<a href="#" data-toggle="modal" data-target="#myModal">A retailer or a shop is a
                                                    business that presents
                                                    a selection of goods and offers to trade</a>
					</li>
					<li><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						<a href="#" data-toggle="modal" data-target="#myModal">Specialist retailers such as mercers and haberdashers were known to exist in London,</a>
					</li>
					<li><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						<a href="#" data-toggle="modal" data-target="#myModal">The Medieval shopper's experience was very different from that of the contemporary shopper </a>
					</li>
					
				</ul>
			</div>
			<div class="clearfix"> </div>
			<div class="w3_agileits_footer_grids">
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="agileinfo_copyright">
		<p>© 2022 mark app| Design by <a href="">E-mart</a></p>
	</div>
<!-- //footer -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- carousal -->
	<script src="js/slick.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).on('ready', function() {
		  $(".center").slick({
			dots: true,
			infinite: true,
			centerMode: true,
			slidesToShow: 2,
			slidesToScroll: 2,
			responsive: [
				{
				  breakpoint:800,
				  settings: {
					arrows: true,
					centerMode: false,
					slidesToShow: 1
				  }
				},
				{
				  breakpoint: 480,
				  settings: {
					arrows: true,
					centerMode: false,
					centerPadding: '40px',
					slidesToShow: 1
				  }
				}
			 ]
		  });
		});
	</script>
<!-- //carousal -->
<!-- //js -->
<script>
        $(function(){ 

  // parameters
  // image height
  var images_height = '650px';
  // array of images
  var images_url = [
      'images/banner.jpg',
      'images/banner-1.jpg',
      'images/banner-2.jpg'
  ];
  var images_count = images_url.length;

  // create nodes
  for(var j=0;j<images_count+1;j++){
      $('.banner ul').append('<li></li>')
  }

  // pagination
  for(var j=0;j<images_count;j++){
      if(j==0){
          $('.banner ol').append('<li class="current"></li>')
      }else{
          $('.banner ol').append('<li></li>')
      }
  }

  // convert images into backgrounds
  $('.banner ul li').css('background-image','url('+images_url[0]+')');
  
  $.each(images_url,function(key,value){
      $('.banner ul li').eq(key).css('background-image','url('+value+')');
  });

  $('.banner').css('height',images_height);

  $('.banner ul').css('width',(images_count+1)*100+'%');

  $('.banner ol').css('width',images_count*20+'px');
  $('.banner ol').css('margin-left',-images_count*20*0.5-10+'px');

  var num = 0;

  var window_width = $(window).width();

  $(window).resize(function(){
      window_width = $(window).width();
      $('.banner ul li').css({width:window_width});
      clearInterval(timer);
      nextPlay();
      timer = setInterval(nextPlay,2000);
  });

  $('.banner ul li').width(window_width);

  // pagination dots
  $('.banner ol li').mouseover(function(){
      $(this).addClass('current').siblings().removeClass('current');
      var i = $(this).index();
      //console.log(i);
      $('.banner ul').stop().animate({left:-i*window_width},500);
      num = i;
  });

  // autoplay
  var timer = null;

  function prevPlay(){
      num--;
      if(num<0){
          $('.banner ul').css({left:-window_width*images_count}).stop().animate({left:-window_width*(images_count-1)},500);
          num=images_count-1;
      }else{
          $('.banner ul').stop().animate({left:-num*window_width},500);
      }
      if(num==images_count-1){
          $('.banner ol li').eq(images_count-1).addClass('current').siblings().removeClass('current');
      }else{
          $('.banner ol li').eq(num).addClass('current').siblings().removeClass('current');

      }
  }

  function nextPlay(){
      num++;
      if(num>images_count){
          $('.banner ul').css({left:0}).stop().animate({left:-window_width},500);
          num=1;
      }else{
          $('.banner ul').stop().animate({left:-num*window_width},500);
      }
      if(num==images_count){
          $('.banner ol li').eq(0).addClass('current').siblings().removeClass('current');
      }else{
          $('.banner ol li').eq(num).addClass('current').siblings().removeClass('current');

      }
  }

  timer = setInterval(nextPlay,2000);

  // auto pause on mouse enter
  $('.banner').mouseenter(function(){
      clearInterval(timer);
      $('.banner i').fadeIn();
  }).mouseleave(function(){
      timer = setInterval(nextPlay,2000);
      $('.banner i').fadeOut();
  });

  // goto next
  $('.banner .right').click(function(){
      nextPlay();
  });

  // back to previous
  $('.banner .left').click(function(){
      prevPlay();
  });

});
    </script>

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- //here ends scrolling icon -->
	<script src="js/owl.carousel.js"></script>
	<script>
$(document).ready(function() { 
	$("#owl-demo").owlCarousel({
 
		autoPlay: 3000, //Set AutoPlay to 3 seconds
		autoPlay:true,
		items : 3,
		itemsDesktop : [640,5],
		itemsDesktopSmall : [414,4]
 
	});
	
}); 
</script>
<script type="text/javascript" src="js/numscroller-1.0.js"></script>
</body>
</html>