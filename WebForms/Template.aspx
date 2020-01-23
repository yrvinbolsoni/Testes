﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Template.aspx.cs" Inherits="Testes.WebForms.Template" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Content/template/style.css" rel="stylesheet" />
    <link href="../Content/template/Fonte.css" rel="stylesheet" />
    <link href="../Content/template/popup.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
        <!-- MAIN PAGE CONTAINER -->
	<div class="boxed-container">
		
		<!-- TOP BAR -->
		<div class="top">
			
			<div class="container">
 
				<div class="top__tagline">Welcome to our land of opportunities</div>
				
				<nav class="top__menu">
					<ul class="top-navigation js-dropdown">
						<li>
							<a href="tables.html">Extras</a>
							<ul class="sub-menu">
								<li>
									<a href="tables.html">Tables</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#">Buy Now</a>
						</li>
						<li>
							<a href="#" target="_blank">Theme Documentation</a>
						</li>
					</ul> 
				</nav>
			
			</div><!-- /.container -->
		
		</div><!-- /.top -->
		
		<!-- HEADER -->
		<div class="header_container">
			
			<div class="container">
				
				<header class="header">
					
					<div class="header__logo">
						<a href="index.html">
							<img class="img-responsive" srcset="images/logo.png" alt="CargoPress" src="../Content/template/img/logo.png">
						</a>
                        


						<button data-target="#cargopress-navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
							<span class="navbar-toggle__text">MENU</span>
							<span class="navbar-toggle__icon-bar">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</span>
						</button>
					</div><!-- /.header__logo -->
					
					<div class="header__navigation">
						<nav class="collapse navbar-collapse" id="cargopress-navbar-collapse">
							<ul class="main-navigation js-main-nav js-dropdown">
								<li class="current-menu-item menu-item-has-children">
									<a href="index.html">Home</a>
									<ul role="menu" class="sub-menu">
										<li><a href="index.html">Default homepage</a></li>
										<li><a href="index_video.html">Homepage with video</a></li>
										<li><a href="index_static.html">Homepage with static image</a></li>
									</ul>
								</li>
								<li class="menu-item-has-children">
									<a href="services.html">Services</a>
									<ul role="menu" class="sub-menu">
										<li><a href="ground_transport.html">Ground Transport</a></li>
										<li><a href="cargo.html">Cargo</a></li>
										<li><a href="warehousing.html">Warehousing</a></li>
										<li><a href="logistic_service.html">Logistic Service</a></li>
										<li><a href="trucking_service.html">Trucking Service</a></li>
										<li><a href="storage.html">Storage</a></li>
									</ul>
								</li>
								<li><a href="about.html">About</a></li>
								<li><a href="tracking.html">Track & Trace</a></li>
								<li><a href="news.html">News</a></li>
								<li><a href="contact.html">Contact</a></li>
							</ul>
						</nav>
					</div><!-- /.header__navigation -->
					
					<div class="header__widgets">
						
						<div class="widget-icon-box">
							
							<div class="icon-box">	
								<i class="fa fa-headphones"></i>
								<h4 class="icon-box__title">Call Us Anytime</h4>
								<span class="icon-box__subtitle">1-888-123-4567</span>
							</div>
						
						</div>
						
						<div class="widget-icon-box">
							
							<div class="icon-box">	
								<i class="fa fa-clock-o"></i>
								<h4 class="icon-box__title">Opening Time</h4>
								<span class="icon-box__subtitle">08:00 - 18:00</span>
							</div>
						
						</div>
					
						<div class="widget-icon-box">
							
							<div class="icon-box">
								<i class="fa fa-envelope-o"></i>
								<h4 class="icon-box__title">Email Us</h4>
								<span class="icon-box__subtitle"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="6f060109002f0c0e1d08001f1d0a1c1c410600">[email&#160;protected]</a></span>
							</div>
							
						</div>
					
						<a target="_self" class="btn btn-info" id="button_requestQuote">REQUEST A QUOTE</a>
				
					</div><!-- /.header__widgets -->
				
					<div class="header__navigation-widgets">
						<a target="_blank" href="https://www.facebook.com/ProteusThemes" class="social-icons__link"><i class="fa fa-facebook"></i></a>
						<a target="_blank" href="https://twitter.com/chillyorange" class="social-icons__link"><i class="fa fa-twitter"></i></a>
						<a target="_blank" href="https://themeforest.net/user/chilly_orange/portfolio" class="social-icons__link"><i class="fa fa-wordpress"></i></a>
						<a target="_blank" href="https://www.youtube.com/user/ProteusNetCompany" class="social-icons__link"><i class="fa fa-youtube"></i></a>
					</div>
			
				</header>
			
			</div><!-- /.container -->
		
		</div><!-- /.header_container -->
		
		<!-- JUMBOTRON -->
		<div class="jumbotron jumbotron--with-captions">
			
			<div data-interval="5000" data-ride="carousel" id="headerCarousel" class="carousel slide">
 
				<div class="carousel-inner">
                     
					<div class="item">
						<img alt="UNBEATABLE TRUCKING AND TRANSPORT SERVICES" sizes="100vw" srcset="../Content/template/img/slider_1_1920.jpg, ../Content/template/img/slider_1_1920.jpg" src="../Content/template/img/slider_1_1920.jpg>
						<div class="container">
							<div class="jumbotron-content">
								<div class="jumbotron-content__title">
									<h1>UNBEATABLE TRUCKING AND TRANSPORT SERVICES</h1>
								</div>
								<div class="jumbotron-content__description">
									<p class="p1">
										<span class="s1">Starting from loading to unloading and maintaining the highest standards in terms of safety while in transit, we take nothing to chance.</span>
									</p>
									<p>
										<a target="_self" href="services.html" class="btn btn-primary">OUR SERVICES</a> &nbsp;<a target="_self" href="contact.html" class="btn btn-secondary">GET IN TOUCH</a>
									</p>
									<div class="w69b-screencastify-mouse"></div>
								</div>
							</div>
						</div>
					</div><!-- /.item -->
                    
					<div class="item">
						<img alt="CRANE TO TRAIN, WE DO EVERYTHING" sizes="100vw" srcset="../Content/template/img/slider_2_1920.jpg ,../Content/template/img/slider_2_1920.jpg" src="../Content/template/img/slider_2_1920.jpg">
						<div class="container">
							<div class="jumbotron-content">
								<div class="jumbotron-content__title">
									<h1>CRANE TO TRAIN, WE DO EVERYTHING</h1>
								</div>
								<div class="jumbotron-content__description">
									<p class="p1">
										<span class="s1">Starting from loading to unloading and maintaining the highest standards in terms of safety while in transit, we take nothing to chance.</span>
									</p>
									<a target="_self" href="about.html" class="btn btn-primary">READ MORE</a>
									<div class="w69b-screencastify-mouse"></div>
								</div>
							</div>
						</div>
					</div><!-- /.item -->
					
					<div class="item active">
						<img alt="GROUND OR AIR, THERE IS NO STOPPING FOR US" sizes="100vw" srcset="../Content/template/img/slider_3_1920.jpg, ../Content/template/img/slider_3_1920.jpg" src="../Content/template/img/slider_3_1920.jpg">
						<div class="container">
							<div class="jumbotron-content">
								<div class="jumbotron-content__title">
									<h1>GROUND OR AIR, THERE IS NO STOPPING FOR US</h1>
								</div>
								<div class="jumbotron-content__description">
									<p class="p1">
										<span class="s1">Starting from loading to unloading and maintaining the highest standards in terms of safety while in transit, we take nothing to chance.</span>
									</p>
									<a target="_self" href="about.html" class="btn btn-primary">MORE DETAILS</a>
									<div class="w69b-screencastify-mouse"></div>
								</div>
							</div>
						</div>
					</div><!-- /.item -->
					
				</div><!-- /.carousel-inner -->
			
				<div class="container">
 
					<a data-slide="prev" role="button" href="#headerCarousel" class="left jumbotron__control">
						<i class="fa  fa-caret-left"></i>
					</a>
					<a data-slide="next" role="button" href="#headerCarousel" class="right jumbotron__control">
						<i class="fa  fa-caret-right"></i>
					</a>
				</div><!-- /.container -->
				
			</div><!-- /.carousel -->
			
		</div><!-- /.jumbotron -->
		
		<!-- OUR SERVICES -->
		<div class="container" role="main">
			
			<div class="row jumbotron-overlap first">
				
				<div class="col-sm-3">
					
					<div class="featured-widget">
					
						<h3 class="widget-title">HELLO THERE AND WELCOME</h3>
						
						<p>
							Our warehousing services are known nationwide to be one of the most reliable, safe and affordable, because we take pride in delivering the best of warehousing services, at the most reasonable prices. Our own warehouses, as well as our partner’s warehouses are located at strategic locations to ensure that there is no additional cost.
						</p>
						
						<p>
							<a class="read-more" href="#">MORE ABOUT US</a>
						</p>
					
					</div>
					
				</div><!-- /.col -->
				
				<div class="col-sm-3">
					
					<a href="cargo.html">
						<img alt="Cargo" class="post-image" sizes="(min-width: 781px) 360px, calc(100vw - 30px)" srcset="images/demo/32-360x240.jpg 360w, images/demo/32.jpg 848w" src="images/demo/32-360x240.jpg">
					</a>
					
					<h5 class="page-box__title"><a href="cargo.html">CARGO</a></h5>
					
					<p>
						Team of cargo&nbsp;experts are always available to help you with any queries you might have, or if you want to consult in length your logistic requirements. We would study your requirements and provide you with a quote that would not only suit your …
					</p>
					
					<p>
						<a class="read-more" href="cargo.html">Read more</a>
					</p>
					
				</div><!-- /.col -->
				
				<div class="col-sm-3">
					
					<a href="logistic_service.html">
						<img alt="Logistic Service" class="post-image" sizes="(min-width: 781px) 360px, calc(100vw - 30px)" srcset="images/demo/30-360x240.jpg 360w, images/demo/30.jpg 848w" src="images/demo/30-360x240.jpg">
					</a>
					
					<h5 class="page-box__title"><a href="logistic_service.html">LOGISTIC SERVICE</a></h5>
					
					<p>
						We provide logistic services in the nation, whether it is freight transportation, supply chain solutions, warehousing and distribution, customer resource area services, customs, security and insurance, temperature controlled logistics, industry …
					</p>
					
					<p>
						<a class="read-more" href="https://demo.proteusthemes.com/cargopress/services/logistic-service/">Read more</a>
					</p>
				
				</div><!-- /.col -->
				
				<div class="col-sm-3">
					
					<a href="storage.html">
						<img alt="Storage" class="post-image" sizes="(min-width: 781px) 360px, calc(100vw - 30px)" srcset="images/demo/4-360x240.jpg 360w, images/demo/4.jpg 848w" src="images/demo/4-360x240.jpg">
					</a>
					
					<h5 class="page-box__title"><a href="storage.html">STORAGE</a></h5>
					
					<p>
						We take pride in catering to a broad range of clientele throughout the country with our warehousing services, which is comprehensive, reliable and flexible &ndash; qualities that are essential to help businesses in this market. Our experienced experts …
					</p>
					
					<p>
						<a class="read-more" href="storage.html">Read more</a>
					</p>
					
				</div><!-- /.col -->
				
			</div><!-- /.row -->
			
			<div class="row">
				
				<div class="col-sm-12">
					
					<h3 class="widget-title big lined">
						<span>OUR SERVICES</span>
					</h3>
					
				</div><!-- /.col -->
				
			</div><!-- /.row -->
			
			<div class="row">
				
				<div class="col-sm-4">
					
					<div class="widget_pw_icon_box margin-bottom-30">
						<a target="_self" href="#" class="icon-box">
							<i class="fa fa-dropbox"></i>
							<h4 class="icon-box__title">PACKAGING AND STORAGE</h4>
							<span class="icon-box__subtitle">We can package and store your things.</span>
						</a>
					</div><!-- /.widget_pw_icon_box -->
					
					<div class="widget_pw_icon_box margin-bottom-30">
						<a target="_self" href="#" class="icon-box">
							<i class="fa fa-archive"></i>
							<h4 class="icon-box__title">WAREHOUSING</h4>
							<span class="icon-box__subtitle">We have top notch security and loads of space. Store your stuff at our warehouse.</span>
						</a>
					</div><!-- /.widget_pw_icon_box -->
					
				</div><!-- /.col -->
				
				<div class="col-sm-4">
					
					<div class="widget_pw_icon_box margin-bottom-30">
						<a target="_self" href="#" class="icon-box">
							<i class="fa fa-truck"></i>
							<h4 class="icon-box__title">CARGO</h4>
							<span class="icon-box__subtitle">Let us transport your things from point A to point B fast and securely. </span>
						</a>
					</div><!-- /.widget_pw_icon_box -->
					
					<div class="widget widget_pw_icon_box margin-bottom-30">
						<a target="_self" href="#" class="icon-box">
							<i class="fa fa-home"></i>
							<h4 class="icon-box__title">DOOR-TO-DOOR DELIVERY</h4>
							<span class="icon-box__subtitle">Do you need something delivered? We are what you are looking for! </span>
						</a>
					</div><!-- /.widget_pw_icon_box -->
					
				</div><!-- /.col -->
				
				<div class="col-sm-4">
					
					<div class="widget_pw_icon_box margin-bottom-30">
						<a target="_self" href="#" class="icon-box">
							<i class="fa fa-globe"></i>
							<h4 class="icon-box__title">WORLDWIDE TRANSPORT</h4>
							<span class="icon-box__subtitle">We can transport your things anywhere in the world. </span>
						</a>
					</div><!-- /.widget_pw_icon_box -->
					
					<div class="widget_pw_icon_box margin-bottom-30">
						<a target="_self" href="#" class="icon-box">
							<i class="fa fa-road"></i>
							<h4 class="icon-box__title">GROUND TRANSPORT</h4>
							<span class="icon-box__subtitle">Transport your things with our super moving vans.</span>
						</a>
					</div><!-- /.widget_pw_icon_box -->
					
				</div><!-- /.col -->
				
			</div><!-- /.row -->
			
		</div><!-- /.conainer -->
		
		<!-- CTA -->
		<div class="cta">
			
			<div class="container">
				
				<div class="row">
				
					<div class="col-md-12">
					
						<div class="call-to-action">
							<div class="call-to-action__text">
								Not sure which solution fits you business needs?
							</div>
							<div class="call-to-action__button">
								<a target="_blank" href="contact.html" class="btn btn-primary">CONTACT OUR SALES TEAM</a> 
							</div>
						</div><!-- /.call-to-action -->
					
					</div><!-- /.col -->
				
				</div><!-- /.row -->
				
			</div><!-- /.container -->
			
		</div><!-- /.cta -->
		
		<!-- NEWS -->
		<div class="news">
		
			<div class="container">
				
				<div class="row">
					
					<div class="col-sm-4 margin-bottom-30">
						
						<div class="widget_pw_latest_news">
							<a class="latest-news" href="article.html">
								<div class="latest-news__date">
									<div class="latest-news__date__month">May</div>
									<div class="latest-news__date__day">6</div>
								</div>
								<img alt="Why choose our warehousing service?" class="wp-post-image" sizes="(min-width: 781px) 360px, calc(100vw - 30px)" srcset="images/demo/31-360x204.jpg 360w, images/demo/31.jpg 848w" src="images/demo/31-360x204.jpg">
								<div class="latest-news__content">
									<h4 class="latest-news__title">Why choose our warehousing service?</h4>
									<div class="latest-news__author">By Jaka Smid</div>
								</div>
							</a>
						</div><!-- /.widget_pw_latest_news -->
						
					</div><!-- /.col -->
					
					<div class="col-sm-4 margin-bottom-30">
						
						<div class="widget_pw_latest_news">
							<a class="latest-news" href="article.html">
								<div class="latest-news__date">
									<div class="latest-news__date__month">May</div>
									<div class="latest-news__date__day">6</div>
								</div>
								<img alt="Top benefits of hiring our trucking service" class="wp-post-image" sizes="(min-width: 781px) 360px, calc(100vw - 30px)" srcset="images/demo/8-360x204.jpg 360w, images/demo/8.jpg 848w" src="images/demo/8-360x204.jpg">
								<div class="latest-news__content">
									<h4 class="latest-news__title">Top benefits of hiring our trucking service</h4>
									<div class="latest-news__author">By Jaka Smid</div>
								</div>
							</a>
						</div><!-- /.widget_pw_latest_news -->
						
					</div><!-- /.col -->
					
					<div class="col-sm-4 margin-bottom-30">
						
						<div class="widget_pw_latest_news">
							<a class="latest-news  latest-news--inline" href="https://demo.proteusthemes.com/cargopress/2015/05/06/logistic-service-providers-would-understand-your-business/">
								<div class="latest-news__content">
									<h4 class="latest-news__title">Logistic service providers would understand your business</h4>
									<div class="latest-news__author">By Jaka Smid</div>
								</div>
							</a>
							<a class="latest-news  latest-news--inline" href="https://demo.proteusthemes.com/cargopress/2015/05/06/our-trucking-service-ensures-you-best-quality-services-at-all-times/">
								<div class="latest-news__content">
									<h4 class="latest-news__title">Our trucking service ensures you best quality services at all times</h4>
									<div class="latest-news__author">By Jaka Smid</div>
								</div>
							</a>
							<a class="latest-news  latest-news--inline" href="https://demo.proteusthemes.com/cargopress/2015/05/06/we-are-experienced-and-expert-in-the-business-of-logistics/">
								<div class="latest-news__content">
									<h4 class="latest-news__title">We are experienced and expert in the business of logistics</h4>
									<div class="latest-news__author">By Jaka Smid</div>
								</div>
							</a>
							<a class="latest-news  latest-news--more-news" href="https://demo.proteusthemes.com/cargopress/news/">
								More news
							</a>
						</div><!-- /.widget_pw_latest_news -->
						
					</div><!-- /.col -->
					
				</div><!-- /.row -->
				
			</div><!-- /.container -->
		
		</div><!-- /.news -->
		
		<!-- VALUES -->
		<div class="values margin-bottom-60">
			
			<div class="container">
				
				<div class="col-sm-8 col-sm-offset-2">
					
					<h3>OUR CORE VALUES</h3>
					<p class="text-center">
						<span>WRITTEN BY CARGOPRESS CEO</span>
					</p>
					<hr class="hr-quote">
					<p class="text-center">
						Core values are the fundamental beliefs of a person or organization. The core values are the guiding principles that t dictate behavior and action. Core values can help people to know what is right from wrong, they can help companies to determine if they are on the right path and fulfilling their business goals; and they create an unwavering and unchanging guide. There are many different types of core values and many different examples of core values depending upon the context.
					</p>
					<p class="text-center">
						<img alt="signature" src="images/signature.png">
					</p>
					
				</div><!-- /.col -->
				
			</div><!-- /.container -->
			
		</div><!-- /.values -->
		
		<!-- ABOUT / QUICK QUITE / GALLERY / FAQ -->
		<div class="container">
			
			<div class="row margin-bottom-60">
				
				<div class="col-sm-6">
					
					<h3 class="widget-title big lined">
						<span>ABOUT US</span>
					</h3>
					<p>
						But i must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete count of the system, and expound the actual teaings of the great explorer idea announcing. But i must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete count of the system, and expound the actual teaings of the great explorer idea announcing.
					</p>
					<p>
						But i must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and i will give you a complete count of the system, and expound the actual teaings of the great explorer idea announcing.
					</p>
					<p>
						<a href="about.html" class="read-more">READ MORE</a>
					</p>
					
				</div><!-- /.col -->
				
				<div class="col-sm-6" id="quickQuoteForm_wrapper">
					
					<div class="featured-widget">
						
						<h3 class="widget-title">
							REQUEST A QUICK QUOTE
						</h3>
						
						<p>
						But i must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete count.
						</p>
						
						<form data-toggle="validator" method="post" action="form.php" id="quickQuoteForm" class="aSubmit">
							<div style="display:none"><input type="text" name="maximus" value=""></div>
							<input type="hidden" name="theSubject" value="CargoPress: Quick Quote Request">
							<div class="contact-form-small">
								<div class="row">
									<div class="col-xs-12  col-md-6">
										<div class="form-group">
											<input type="text" placeholder="First and Last Name *" aria-invalid="false" aria-required="true" size="40" value="" name="name" required>
										</div>
										<div class="form-group">
											<input type="email" placeholder="E-mail address" aria-invalid="false" aria-required="true" size="40" value="" name="email" required>
										</div>
										<select aria-invalid="false" name="service">
											<option value="Cargo">Cargo</option>
											<option value="Ground Transport">Ground Transport</option>
											<option value="Logistic Service">Logistic Service</option>
											<option value="Storage">Storage</option>
											<option value="Trucking Service">Trucking Service</option>
											<option value="Warehousing">Warehousing</option>
										</select>
									</div>
									<div class="col-xs-12  col-md-6">
										<div class="form-group">
											<input type="text" placeholder="Subject *" aria-invalid="false" aria-required="true" size="40" value="" name="subject" required>
										</div>
										<div class="form-group">
											<textarea placeholder="Message *" aria-invalid="false" rows="10" cols="40" name="message" required></textarea>
										</div>
									</div>
									<div class="col-xs-12  col-md-12">
										<input type="submit" class="btn btn-primary pull-right" value="SEND MESSAGE">
										<img class="ajax-loader" id="loader" src="images/ajax-loader.gif" alt="Sending ..." style="display:none;">
									</div>
								</div><!-- /.row -->
								<div class="response success">Your message was sent; we'll be in touch shortly!</div>
								<div class="response error">Unfortunately, we could not sent your message right now. Please try again.</div>
							</div><!-- /.contact-form-small -->
						</form>
						
					</div><!-- /.featured-widget -->
					
				</div><!-- /.col -->
				
			</div><!-- /.row -->
			
			<div class="row margin-bottom-60">
				
				<div class="col-sm-6">
					
					<div class="widget_black-studio-tinymce">
						
						<h3 class="widget-title lined big">
							<span>FLEET GALLERY</span>
						</h3>
						
						<div class="gallery gallery-columns-3 gallery-size-medium">
							<figure class="gallery-item">
								<a data-slb-internal="0" data-slb-active="1" data-slb-group="6" href="images/demo/11.jpg">
									<img alt="11" src="images/demo/11-300x170.jpg">
								</a>
							</figure>
							<figure class="gallery-item">
								<a data-slb-internal="0" data-slb-active="1" data-slb-group="6" href="images/demo/9.jpg">
									<img alt="9" src="images/demo/9-300x170.jpg">
								</a>
							</figure>
							<figure class="gallery-item">
								<a data-slb-internal="0" data-slb-active="1" data-slb-group="6" href="images/demo/8.jpg">
									<img alt="8" src="images/demo/8-300x170.jpg">
								</a>
							</figure>
							<figure class="gallery-item">
								<a data-slb-internal="0" data-slb-active="1" data-slb-group="6" href="images/demo/7.jpg">
									<img alt="7" src="images/demo/7-300x170.jpg">
								</a>
							</figure>
							<figure class="gallery-item">
								<a data-slb-internal="0" data-slb-active="1" data-slb-group="6" href="images/demo/6.jpg">
									<img alt="6" src="images/demo/6-300x170.jpg">
								</a>
							</figure>
							<figure class="gallery-item">
								<a data-slb-internal="0" data-slb-active="1" data-slb-group="6" href="images/demo/4.jpg">
									<img alt="4" src="images/demo/4-300x170.jpg">
								</a>
							</figure>
						</div><!-- /.gallery -->
						
					</div><!-- /.widget_black-studio-tinymce -->
					
				</div><!-- /.col -->
				
				<div class="col-sm-6">
						
					<h3 class="widget-title lined big">
						<span>FAQ</span>
					</h3>
					<h4>
						<a target="_blank" href="faq.html" class="dark-link">HOW MANY TIMES DO I HAVE TO TELL YOU A FEW DIFFERENT WAYS?</a>
					</h4>
					<hr>
					<h4>
						<a target="_blank" href="faq.html" class="dark-link">WHAT IS DO I HAVE TO TELL YOU A FEW LOREM?</a>
					</h4>
					<hr>
					<h4>
						<a target="_blank" href="faq.html" class="dark-link">HOW MANY DO I HAVE TO TELL YOU HAVE A?</a>
					</h4>
					<hr>
					<p>
						<a href="faq.html" class="read-more">MORE QUESTIONS</a>
					</p>
					
				</div><!-- /.col -->
				
			</div><!-- /.row -->
			
		</div><!-- /.container -->
		
		<!-- TESTIMONIALS -->
		<div class="testimonials">
			
			<div class="container">
				
				<div class="row margin-bottom-60">
				
					<div class="col-sm-12">
					
						<div class="testimonial">
							
							<h3 class="widget-title lined big">
								<span>TESTIMONIALS</span>
							</h3>
							
							<div class="testimonial__carousel">
								<a data-slide="prev" href="#testimonalCarousel" class="testimonial__carousel--left">
									<i aria-hidden="true" class="fa fa-caret-left"></i>
									<span role="button" class="sr-only">Next</span>
								</a>
								<a data-slide="next" href="#testimonalCarousel" class="testimonial__carousel--right">
									<i aria-hidden="true" class="fa fa-caret-right"></i>
									<span role="button" class="sr-only">Previous</span>
								</a>
							</div><!-- /.testimonial__carousel -->
							
							<div data-interval="false" data-ride="carousel" class="carousel slide" id="testimonalCarousel">
 
								<div role="listbox" class="carousel-inner">
										
									<div class="item">
										<div class="row">
											<div class="col-xs-12  col-sm-6">
												<blockquote>
													<p class="testimonial__quote">
														But I must explain to you how all this mistakn idea of denouncing pleasure and praising pain was born and I will give you a complete of the system, and expound the actual teaings of the great explorer idea.
													</p>
													<cite class="testimonial__author">
														Frank Martin<span class="testimonial__author-description">, Transporter</span>
													</cite>
												</blockquote>
											</div>
											<div class="col-xs-12  col-sm-6">
												<blockquote>
													<p class="testimonial__quote">
														But I must explain to you how all this mistakn idea of denouncing pleasure and praising pain was born and I will give you a complete of the system, and expound the actual teaings of the great explorer idea.
													</p>
													<cite class="testimonial__author">
														Martin Frank<span class="testimonial__author-description">, Transporter</span>
													</cite>
												</blockquote>
											</div>
										</div>
									</div><!-- /.item -->
										
									<div class="item active">
										<div class="row">
											<div class="col-xs-12  col-sm-6">
												<blockquote>
													<p class="testimonial__quote">
														But I must explain to you how all this mistakn idea of denouncing pleasure and praising pain was born and I will give you a complete of the system, and expound the actual teaings of the great explorer idea.
													</p>
													<cite class="testimonial__author">
														Frank Martin<span class="testimonial__author-description">, Transporter</span>
													</cite>
												</blockquote>
											</div>
											<div class="col-xs-12  col-sm-6">
												<blockquote>
													<p class="testimonial__quote">
														But I must explain to you how all this mistakn idea of denouncing pleasure and praising pain was born and I will give you a complete of the system, and expound the actual teaings of the great explorer idea.
													</p>
													<cite class="testimonial__author">
														Martin Frank<span class="testimonial__author-description">, Transporter</span>
													</cite>
												</blockquote>
											</div>
										</div>
									</div><!-- /.item -->
										
								</div><!-- /.carousel-inner -->
									
							</div><!-- /.carousel -->
							
						</div><!-- /.testimonial -->
					
					</div><!-- /.col -->
				
				</div><!-- /.row -->
				
			</div><!-- /.container -->
			
		</div><!-- /.testimonials -->
		
		<!-- MAP -->
		<div class="map margin-bottom-60">
						
			<div data-type="roadmap" data-zoom="7" data-markers='[{"id":"1","title":"CargoPress","address":"Kalmoesstraat 20, Apeldoorn","custompinimage":"images\/pin.png"}]' class="simple-map js-where-we-are"></div>
						
		</div><!-- /.map -->
		
		<!-- OUR PARTNERS -->
		<div class="container">
			
			<div class="row margin-bottom-60">
				
				<div class="col-sm-12">
					
					<div class="widget_text">
						
						<h3 class="widget-title lined big">
							<span>OUR PARTNERS</span>
						</h3>
						<div class="logo-panel">
							<div class="row">
								<div class="col-xs-12  col-sm-2">
									<a href="#"><img alt="Client" src="images/demo/logo_1.png"></a>
								</div>
								<div class="col-xs-12  col-sm-2">
									<a href="#"><img alt="Client" src="images/demo/logo_2.png"></a>
								</div>
								<div class="col-xs-12  col-sm-2">
									<a href="#"><img alt="Client" src="images/demo/logo_3.png"></a>
								</div>
								<div class="col-xs-12  col-sm-2">
									<a href="#"><img alt="Client" src="images/demo/logo_4.png"></a>
								</div>
								<div class="col-xs-12  col-sm-2">
									<a href="#"><img alt="Client" src="images/demo/logo_5.png"></a>
								</div>
								<div class="col-xs-12  col-sm-2">
									<a href="#"><img alt="Client" src="images/demo/logo_6.png"></a>
								</div>
							</div><!-- /.row -->
						</div><!-- /.logo-panel -->
							
					</div><!-- /.widget_text -->
					
				</div><!-- /.col -->
				
			</div><!-- /.row -->
			
		</div><!-- /.container -->
		
		<!-- COUNTERS -->
		<div class="counters">
			
			<div class="container">
				 
				 <div  class="widget_pw_number-counter panel-first-child panel-last-child">
					 <div data-speed="1000" class="widget-number-counters">
						 <div class="number-counter">
							 <i class="number-counter__icon fa fa-building-o"></i>
							 <div data-to="15" class="number-counter__number js-number">00</div>
							 <div class="number-counter__title">Offices Worldwide</div>
				 		 </div>
				 		 <div class="number-counter">
							 <i class="number-counter__icon fa fa-users"></i>
				 	 		 <div data-to="97" class="number-counter__number js-number">00</div>
				 	 		 <div class="number-counter__title">Hardworking People</div>
				 		 </div>
				 		 <div class="number-counter">
							 <i class="number-counter__icon fa fa-globe"></i>
					   		 <div data-to="12" class="number-counter__number js-number">00</div>
				 	 		 <div class="number-counter__title">Countries Covered</div>
				 		 </div>
				 		 <div class="number-counter">
							 <i class="number-counter__icon fa fa-users"></i>
				 	   		 <div data-to="25" class="number-counter__number js-number">00</div>
				 	   		 <div class="number-counter__title">Years of Experiences</div>
						 </div>
					 </div>
				 </div>
				 
			</div><!-- /.container -->
			
		</div><!-- /.counters -->
		
		<!-- FOOTER -->
		<footer class="footer">
			
			<div class="footer-top">
				
				<div class="container">
					
					<div class="row">
						
						<div class="col-xs-12 col-md-4">
							
							<p>
								<img alt="logo-footer" src="images/logo-footer.png" class="logo">
							</p>
							<p>
								But i must explain to you how all this mistaken idea pleasure and praising pain was born and i will give you. But i explain to you how all this mistaken idea.
							</p>
							<p>
								<a target="_blank" href="https://www.facebook.com/ProteusThemes" class="icon-container icon-container--square">
									<span class="fa fa-facebook"></span>
								</a>
								<a target="_blank" href="https://twitter.com/ProteusThemes" class="icon-container icon-container--square">
									<span class="fa fa-twitter"></span>
								</a>
								<a target="_blank" href="https://themeforest.net/user/ProteusThemes/portfolio" class="icon-container icon-container--square">
									<span class="fa fa-wordpress"></span>
								</a>
								<a target="_blank" href="https://www.youtube.com/user/ProteusNetCompany" class="icon-container icon-container--square">
									<span class="fa fa-youtube-play"></span>
								</a>
							</p>
							
						</div><!-- /.row -->
						
						<div class="col-xs-12 col-md-2">
							
							<div class="widget_nav_menu">
								<h6 class="footer-top__headings">NAVIGATION</h6>
								<ul>
									<li>
										<a href="tables.html">Extras</a>
										<ul class="sub-menu">
											<li>
												<a href="tables.html">Tables</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="#">Buy Now</a>
									</li>
									<li>
										<a href="#" target="_blank">Theme Documentation</a>
									</li>
								</ul>
							</div><!-- /.widget_nav_menu -->
							
						</div><!-- /.row -->
						
						<div class="col-xs-12 col-md-2">
							
							<div class="widget_nav_menu">
								
								<h6 class="footer-top__headings">OUR SERVICES</h6>
								<ul>
									<li>
										<a href="services.html">All Services</a>
									</li>
									<li>
										<a href="ground_transport.html">Ground Transport</a>
									</li>
									<li>
										<a href="cargo.html">Cargo</a>
									</li>
									<li>
										<a href="warehousing.html">Warehousing</a>
									</li>
									<li>
										<a href="logistic_service.html">Logistic Service</a>
									</li>
									<li>
										<a href="trucking_service.html">Trucking Service</a>
									</li>
									<li>
										<a href="storage.html">Storage</a>
									</li>
								</ul>
								
							</div><!-- /.widget_nav_menu -->
							
						</div><!-- /.row -->
						
						<div class="col-xs-12 col-md-4">
							
							<h6 class="footer-top__headings">BUY NOW</h6>
							<p>
								But i must explain to you how all this mistaken idea pleasure and praising pain was born and i will give you. But i explain to you how all this mistaken idea.
							</p>
							<p>
								<a target="_blank" href="#" class="btn btn-info">BUY CARGOPRESS</a>
							</p>
							
						</div><!-- /.row -->
						
					</div><!-- /.row -->
					
				</div><!-- /.footer -->
				
			</div><!-- /.footer-top -->
			
			<div class="footer-bottom">
				
				<div class="container">
					
					<div class="footer-bottom__left">
						CargoPress Theme Made by <a href="https://www.proteusthemes.com/">ProteusThemes</a>.
					</div>
					
					<div class="footer-bottom__right">
						Copyright &copy; 2009&ndash;2015 CargoPress. All rights reserved. 
					</div>
					
				</div><!-- /.container -->
				
			</div><!-- /.footer-bottom -->
			
		</footer>
		
	</div><!-- /.boxed-container -->
	
	<div class="ptss-frame js-ptss-frame">
		<div class="ptss__toggle-btn  js-ptss-toggle-btn"><i class="fa fa-cogs"></i></div>
		<div class="ptss__header">
			STYLE SWITCHER
		</div>
		<div class="ptss__settings">
			<div id="ptss__layout" class="ptss__single-setting">
				<p class="ptss__setting-title">Layout Style</p>
				<div class="ptss__setting-control">
					<div class="ptss__layout-wrapper is-selected">
						<div class="ptss__layout-box ptss__layout-box--wide"></div>
						Wide
					</div>
					<div class="ptss__layout-wrapper">
						<div class="ptss__layout-box ptss__layout-box--boxed"></div>
						Boxed
					</div>
				</div>
			</div>
			<div class="ptss__single-setting">
				<p class="ptss__setting-title">
					Color Skin
					<i title="In WP Admin you can choose whichever color you want." data-placement="right" data-toggle="tooltip" class="fa fa-info-circle"></i>
				</p>
				<div id="ptss__color-skin" class="ptss__setting-control">
					<span class="ptss__color-option option0 is-selected" style="background-color: rgb(74, 185, 207);">
						<i class="fa fa-check"></i>
					</span>
					<span class="ptss__color-option option1" style="background-color: rgb(42, 164, 93);">
						<i class="fa fa-check"></i>
					</span>
					<span class="ptss__color-option option2" style="background-color: rgb(235, 29, 101);">
						<i class="fa fa-check"></i>
					</span>
					<span class="ptss__color-option option3" style="background-color: rgb(149, 174, 71);">
						<i class="fa fa-check"></i>
					</span>
					<span class="ptss__color-option option4" style="background-color: rgb(44, 73, 125);">
						<i class="fa fa-check"></i>
					</span>
				</div>
			</div>
		</div>
	</div>
	
	<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="js/jquery-2.1.4.min.js" type="text/javascript"></script>
	<script src="js/bootstrap/carousel.js"></script>
	<script src="js/bootstrap/transition.js"></script>
	<script src="js/bootstrap/button.js"></script>
	<script src="js/bootstrap/collapse.js"></script>
	<script src="js/bootstrap/validator.js"></script>
	<script src="js/underscore.js"></script>
	<script src="https://maps.google.com/maps/api/js?sensor=false"></script>
	<script src="js/SimpleMap.js"></script>
	<script src="js/NumberCounter.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/style-switcher.js"></script>
	<script src="js/custom.js"></script>



        <script src="../Content/template/js/Decode.js"></script>
        <script src="../Content/template/js/carousel.js"></script>
        <script src="../Content/template/js/transition.js"></script>
        <script src="../Content/template/js/button.js"></script>
        <script src="../Content/template/js/collapse.js"></script>
        <script src="../Content/template/js/validator.js"></script>
        <script src="../Content/template/js/underscore.js"></script>
        <script src="../Content/template/js/maps.js"></script>

        <script src="../Content/template/js/jquery.magnific-popup.js"></script>
        <script src="../Content/template/js/style-switcher.js"></script>
        <script src="../Content/template/js/custom.js"></script>
    </form>
</body>
</html>
