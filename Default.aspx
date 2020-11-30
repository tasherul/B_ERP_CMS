<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B_ERP_CMS.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1" />
        <title>Build EMS</title>
        <link rel="apple-touch-icon" sizes="180x180" href="site/assets/img/fav/apple-touch-icon2.png" />
        <link rel="icon" type="site/image/png" sizes="32x32" href="site/assets/img/fav/favicon-32x322.png" />
        <link rel="icon" type="site/image/png" sizes="16x16" href="site/assets/img/fav/favicon-16x162.png" />
        <link rel="mask-icon" href="site/assets/img/apitsft.png" color="#fa7070" />
        <meta name="msapplication-TileColor" content="#fa7070" />
        <meta name="theme-color" content="#fa7070" />

        <link rel="stylesheet" href="site/dependencies/bootstrap/css/bootstrap.min.css" type="text/css" />
        <link rel="stylesheet" href="site/dependencies/fontawesome/css/all.min.css" type="text/css" />
        <link rel="stylesheet" href="site/dependencies/swiper/css/swiper.min.css" type="text/css" />
        <link rel="stylesheet" href="site/dependencies/wow/css/animate.css" type="text/css" />
        <link rel="stylesheet" href="site/dependencies/magnific-popup/css/magnific-popup.css" type="text/css" />
        <link rel="stylesheet" href="site/dependencies/components-elegant-icons/css/elegant-icons.min.css" type="text/css" />
        <link rel="stylesheet" href="site/dependencies/simple-line-icons/css/simple-line-icons.css" type="text/css" />
        <link rel="stylesheet" href="site/assets/css/app.css" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet" />
</head>
 <body id="home-version-1" class="home-color-two" data-style="default">
        <a href="#main_content" data-type="section-switch" class="return-to-top"><i class="fa fa-chevron-up"></i></a>
        <div class="page-loader">
            <div class="loader">
                
                <div class="blobs">
                    <div class="blob-center"></div>
                    <div class="blob"></div>
                    <div class="blob"></div>
                    <div class="blob"></div>
                    <div class="blob"></div>
                    <div class="blob"></div>
                    <div class="blob"></div>
                </div>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
                    <defs>
                        <filter id="goo">
                            <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur" />
                            <feColorMatrix in="blur" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo" />
                            <feBlend in="SourceGraphic" in2="goo" />
                        </filter>
                    </defs>
                </svg>
            </div>
        </div>
        <div id="main_content">
		
            <header class="site-header header-two header_trans-fixed" data-top="992">
                <div class="container">
                    <div class="header-inner">
                        <div class="site-mobile-logo">
                            <a href="index" class="logo"><img src="site/image/ems.png" alt="site logo" class="main-logo" /> <img src="site/image/ems.png" alt="site logo" class="sticky-logo" /></a>
                        </div>
                        <div class="toggle-menu"><span class="bar"></span> <span class="bar"></span> <span class="bar"></span></div>
                        <nav class="site-nav nav-two">
                            <div class="close-menu"><span>Close</span> <i class="ei ei-icon_close"></i></div>
                            <div class="site-logo">
                                <a href="index.html" class="logo"><img src="site/image/ems.png" alt="site logo" class="main-logo" /> </a>
                            </div>
                            <div class="menu-wrapper" data-top="992">
                                <ul class="site-main-menu">                                    
                                    <li><a href="login">Login or Registation</a></li>
                                </ul>
                               
                            </div>
                        </nav>
                    </div>
                </div>
            </header>
            
			<section class="banner banner-two">
                <div class="vector-bg"><img src="site/media/banner/top%20shape.png" alt="circle" /></div>
                <div class="container">
                    <div class="banner-content-wrap">
                        <div class="row align-items-center">
                            <div class="col-lg-6">
                                <div class="banner-content">
                                    <h1 class="banner-title wow pixFadeUp" data-wow-delay="0.3s">
                                        Build
                                        <span>
                                            EMS
                                        </span>
                                        <br />is the
                                        Best Secure<br/>
										EMS Maker
                                    </h1>
                                    <p class="description wow pixFadeUp" data-wow-delay="0.5s">
                                        Why I am say best becouse this make a software for helping.<br />
                                        and use Asp.net Microsoft Tecnoloy Services!
                                    </p>
                                    <a href="login" class="pxs-btn banner-btn color-two wow pixFadeUp" data-wow-delay="0.6s">Login Now</a>
                                </div>
                            </div>
							
                            <div class="col-lg-6">
                                <div class="animate-promo-mockup">
                                    <img src="site/media/banner/01.png" class="wow pixFadeDown" alt="mpckup" data-wow-duration="1.5s" />
                                    <img src="site/media/banner/02.png" class="wow pixFadeRight" data-wow-delay="0.3s" data-wow-duration="1s" alt="mpckup" />
                                    <img src="site/media/banner/03.png" class="wow pixFadeUp" alt="mpckup" data-wow-duration="1.7s" /> <img src="site/media/banner/04.png" class="wow pixFadeRight" alt="mpckup" />
                                    <img src="site/media/banner/05.png" class="wow pixFadeDown" alt="mpckup" data-wow-duration="2s" /> <img src="site/media/banner/06.png" alt="mpckup" data-wow-delay="0.3s" />
                                    <img src="site/media/banner/07.png" class="wow pixFadeLeft" alt="mpckup" data-wow-delay="0.6s" data-wow-duration="1.5s" /> <img src="site/media/banner/cloud_01.png" alt="mpckup" />
                                    <img src="site/media/banner/cloud_02.png" alt="mpckup" /> <img src="site/media/banner/cloud_03.png" alt="mpckup" />
                                </div>
                            </div>
							
                        </div>
                    </div>
                </div>
            </section>
			
			<!--
            <section id="brand-logo">
                <div class="section-small text-center wow pixFadeUp"><h2 class="title">Trusted Over 2500+ Companies</h2></div>
                <div class="container">
                    <div
                        class="swiper-container logo-carousel wow pixFadeUp"
                        data-wow-delay="0.3s"
                        id="logo-carousel"
                        data-perpage="6"
                        data-breakpoints='{"1024": {"slidesPerView": 4}, "768": {"slidesPerView": 4}, "640": {"slidesPerView": 3}}'
                    >
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="brand-logo"><img src="site/media/brand/1.png" alt="brand" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div class="brand-logo"><img src="site/media/brand/2.png" alt="brand" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div class="brand-logo"><img src="site/media/brand/3.png" alt="brand" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div class="brand-logo"><img src="site/media/brand/4.png" alt="brand" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div class="brand-logo"><img src="site/media/brand/5.png" alt="brand" /></div>
                            </div>
                            <div class="swiper-slide">
                                <div class="brand-logo"><img src="site/media/brand/6.png" alt="brand" /></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
			-->
			
            <section class="featured-two-same">
                <div class="container">
                    <div class="section-title color-two text-center">
                        <h3 class="sub-title wow pixFadeUp">Our service</h3>
                        <h2 class="title wow pixFadeUp" data-wow-delay="0.3s">Why you choose Our Services</h2>
                    </div>
                    <div class="row">
					
                        <div class="col-lg-4 col-md-6">
                            <div class="saaspik-icon-box-wrapper style-two wow pixFadeRight" data-wow-delay="0.5s">
                                <div class="saaspik-icon-box-icon"><img src="site/media/feature/6.png" alt="" /></div>
                                <div class="pixsass-icon-box-content">
                                    <h3 class="pixsass-icon-box-title"><a href="#">App Development</a></h3>
                                    <p style="text-align:justify; width:300px;">
                                        We do application development with Asp.net which is scribbled by Microsoft technology. We do software development according to your requirement.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="saaspik-icon-box-wrapper style-two wow pixFadeRight" data-wow-delay="0.6s">
                                <div class="saaspik-icon-box-icon"><img src="site/media/feature/Security-Approved-icon.png" alt="" /></div>
                                <div class="pixsass-icon-box-content">
                                    <h3 class="pixsass-icon-box-title"><a href="#">Data Security</a></h3>
                                    <p style="text-align:justify; width:300px;">
                                        Our sites are completely secure so that we can protect ourselves from the risk of any kind of site crash and also protect the site from the hands of hackers.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="saaspik-icon-box-wrapper style-two wow pixFadeRight" data-wow-delay="0.7s">
                                <div class="saaspik-icon-box-icon"><img src="site/media/feature/Pie-chart-icon.png" alt="" /></div>
                                <div class="pixsass-icon-box-content">
                                    <h3 class="pixsass-icon-box-title"><a href="#">Management System</a></h3>
                                    <p style="text-align:justify; width:300px;">
                                        We create a management application with all the details of your business that will benefit your business a lot.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="saaspik-icon-box-wrapper style-two wow pixFadeRight" data-wow-delay="0.8s">
                                <div class="saaspik-icon-box-icon"><img src="site/media/feature/ideas-icon.png" alt="" /></div>
                                <div class="pixsass-icon-box-content">
                                    <h3 class="pixsass-icon-box-title"><a href="#">Ideas</a></h3>
                                    <p  style="text-align:justify; width:300px;">
                                       We help you implement your new idea and if you have any such idea then share it with us and we will prepare it for you.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="saaspik-icon-box-wrapper style-two wow pixFadeRight" data-wow-delay="0.9s">
                                <div class="saaspik-icon-box-icon"><img src="site/media/feature/Home-Server-icon.png" alt="" /></div>
                                <div class="pixsass-icon-box-content">
                                    <h3 class="pixsass-icon-box-title"><a href="#">Server Management</a></h3>
                                    <p style="text-align:justify; width:300px;">
                                        If you have a server and you can't manage it, we can make it easy for you and set up all your applications for free.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="saaspik-icon-box-wrapper style-two wow pixFadeRight" data-wow-delay="1s">
                                <div class="saaspik-icon-box-icon"><img src="site/media/feature/11.png" alt="" /></div>
                                <div class="pixsass-icon-box-content">
                                    <h3 class="pixsass-icon-box-title"><a href="#">Customer Support</a></h3>
                                    <p style="text-align:justify; width:300px;">
                                       If you have any queries in our system, you can contact us and we will help you 24/7.
                                    </p>
                                </div>
                            </div>
                        </div>
						
						
                    </div>
                </div>
                <div class="scroll-circle wow pixFadeRight"><img src="site/media/background/circle.png" data-parallax='{"y" : -230}' alt="circle" /></div>
            </section>
			
			
            <section class="revolutionize-two">
                <div class="bg-angle"></div>
                <div class="container">
                    <div class="section-title dark-title text-center">
                        <h3 class="sub-title wow pixFadeUp">Updated Screen</h3>
                        <h2 class="title wow pixFadeUp" data-wow-delay="0.3s">
                            Our best services.
                        </h2>
                    </div>
                    <div id="pix-tabs" class="wow pixFadeUp" data-wow-delay="0.5s">
                        <ul id="pix-tabs-nav" class="pix-tab-two">
                            <li><a href="#tab1">Free Storage</a></li>
                            <li><a href="#tab2">Template Design</a></li>
                            <li><a href="#tab3">Development</a></li>
                            <li><a href="#tab4">Documantation</a></li>
                        </ul>
                        <div id="pix-tabs-content">
                            <div id="tab1" class="content color-two">
                                <img src="site/media/revolutionize/api.PNG" alt="revolutionize" />
                                <div class="shape-shadow"></div>
                            </div>
                            <div id="tab2" class="content color-two">
                                <img src="site/media/revolutionize/2.jpg" alt="revolutionize" />
                                <div class="shape-shadow"></div>
                            </div>
                            <div id="tab3" class="content color-two">
                                <img src="site/media/revolutionize/3.jpg" alt="revolutionize" />
                                <div class="shape-shadow"></div>
                            </div>
                            <div id="tab4" class="content color-two">
                                <img src="site/media/revolutionize/support.PNG" alt="revolutionize" />
                                <div class="shape-shadow"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
			
			
            <section class="editor-design-two">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="editure-feature-image-two">
                                <div class="animaated-elements">
                                    <img src="site/media/animated/01.png" alt="main-bg" class="main-bg wow pixFade" /> <img src="site/media/animated/02.png" alt="main-bg" class="elm-clock wow pixFadeLeft" data-wow-delay="0.5s" />
                                    <img src="site/media/animated/03.png" alt="elm-man" class="elm-man wow pixFadeRight" data-wow-delay="0.7s" />
                                    <img src="site/media/animated/04.png" alt="elm-table" class="elm-table wow pixFadeUp" data-wow-delay="0.1s" />
                                    <img src="site/media/animated/05.png" alt="main-bg" class="elm-sm-vase wow pixFade" data-wow-delay="0.9s" />
                                    <img src="site/media/animated/06.png" alt="elm-vase" class="elm-vase wow pixFadeLeft" data-wow-delay="0.9s" />
                                    <div class="elm-mass wow pixFadeDown" data-wow-delay="1s"><img src="site/media/animated/07.png" alt="massage" class="mass-img" /></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="editor-content color-two">
                                <div class="section-title style-two color-two">
                                    <h2 class="title wow pixFadeUp" data-wow-delay="0.3s">
                                        Time saving
                                    </h2>
                                    <p class="wow pixFadeUp" data-wow-delay="0.5s">
                                        Save Time and money.
                                    </p>
                                </div>
                                <div class="description wow pixFadeUp" data-wow-delay="0.7s">
                                    <p>
                                        Here you will find all kinds of template that we can develop. Our template are qualityful and always updated. You will get new features in all updates.
                                    </p>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
			
			
            <section class="genera-informes-two">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 pix-order-two">
                            <div class="genera-informes-content">
                                <div class="section-title style-two">
                                    <h2 class="title wow pixFadeUp">
                                        Login Now<br />
                                        for build a application.
                                    </h2>
                                    <p class="wow pixFadeUp" data-wow-delay="0.3s">We have all kinds of developers here. Make your choice at home and order their work. We guarantee 100% that your work will be done according to your mind.</p>
                                </div>
                                <ul class="list-items color-two wow pixFadeUp" data-wow-delay="0.4s">
                                    <li>Management System</li>
                                    <li>Template Design</li>
									<li>Free Editor</li>
                                    <li>Documantation</li>
                                </ul>
                                <a href="login" class="pix-btn btn-outline-two wow pixFadeUp" data-wow-delay="0.5s">Login Now</a>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="animaated-elements-two">
                                <img src="site/media/animated/1.png" class="elm-one wow pixFade" alt="informes" /> <img src="site/media/animated/2.png" class="elm-two wow pixFadeDown" alt="informes" />
                                <img src="site/media/animated/3.png" class="elm-three wow pixFadeDown" alt="informes" /> <img src="site/media/animated/4.png" class="elm-four wow pixFadeRight" alt="informes" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="scroll-circle wow pixFadeRight"><img src="site/media/background/circle2.png" data-parallax='{"y" : 180}' alt="circle" /></div>
            </section>
			
			<!--
            <section class="pricing-two">
                <div class="container">
                    <div class="section-title color-two text-center">
                        <h3 class="sub-title wow pixFadeUp">Pricing Plan</h3>
                        <h2 class="title wow pixFadeUp" data-wow-delay="0.3s">
                            No Hidden Charges! Choose<br />
                            your Plan.
                        </h2>
                    </div>
                    <nav class="pricing-tab color-two wow pixFadeUp" data-wow-delay="0.4s">
                        <span class="monthly_tab_title tab-btn">Monthly </span><span class="pricing-tab-switcher"></span> <span class="annual_tab_title tab-btn">Annual</span>
                    </nav>
                    <div class="row advanced-pricing-table">
                        <div class="col-lg-4">
                            <div class="pricing-table style-two price-two wow pixFadeLeft" data-wow-delay="0.5s">
                                <div class="pricing-header pricing-amount">
                                    <div class="annual_price"><h2 class="price">$0.00</h2></div>
                                    <div class="monthly_price"><h2 class="price">$0.00</h2></div>
                                    <h3 class="price-title">Basic Account</h3>
                                    <p>Only for first month</p>
                                </div>
                                <ul class="price-feture">
                                    <li class="have">Limited Acess Library</li>
                                    <li class="have">Single User</li>
                                    <li class="have">eCommerce Store</li>
                                    <li class="not">Hotline Support 24/7</li>
                                    <li class="not">No Updates</li>
                                </ul>
                                <div class="action text-left"><a href="#" class="pix-btn btn-outline-two">Get Started</a></div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="pricing-table color-two style-two price-two featured wow pixFadeLeft" data-wow-delay="0.7s">
                                <div class="trend"><p>Popular</p></div>
                                <div class="pricing-header pricing-amount">
                                    <div class="annual_price"><h2 class="price">$80.50</h2></div>
                                    <div class="monthly_price"><h2 class="price">$16.97</h2></div>
                                    <h3 class="price-title">Standard Account</h3>
                                    <p>Only for first month</p>
                                </div>
                                <ul class="price-feture">
                                    <li class="have">Limited Acess Library</li>
                                    <li class="have">Single User</li>
                                    <li class="have">eCommerce Store</li>
                                    <li class="have">Hotline Support 24/7</li>
                                    <li class="not">No Updates</li>
                                </ul>
                                <div class="action text-left"><a href="#" class="pix-btn btn-outline-two">Get Started</a></div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="pricing-table color-three style-two price-two wow pixFadeLeft" data-wow-delay="0.9s">
                                <div class="pricing-header pricing-amount">
                                    <div class="annual_price"><h2 class="price">$180.70</h2></div>
                                    <div class="monthly_price"><h2 class="price">$29.45</h2></div>
                                    <h3 class="price-title">Premium Account</h3>
                                    <p>Only for first month</p>
                                </div>
                                <ul class="price-feture">
                                    <li class="have">Limited Acess Library</li>
                                    <li class="have">Single User</li>
                                    <li class="have">eCommerce Store</li>
                                    <li class="have">Hotline Support 24/7</li>
                                    <li class="have">No Updates</li>
                                </ul>
                                <div class="action text-left"></div>
                                <a href="#" class="pix-btn btn-outline-two">Get Started</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
			-->
			<!--
            <section class="testimonials-two">
                <div class="animate-shape wow pixFadeDown"><img src="site/media/background/ellipse2.png" data-parallax='{"y" : 230}' alt="shape" /></div>
                <div class="container">
                    <div class="section-title color-two text-center">
                        <h3 class="sub-title wow pixFadeUp">Testiimonial</h3>
                        <h2 class="title wow pixFadeUp" data-wow-delay="0.3s">What our client say about us</h2>
                    </div>
                    <div id="testimonial-wrapper" class="wow pixFadeUp" data-wow-delay="0.4s">
                        <div class="swiper-container" id="testimonial-two" data-speed="700" data-autoplay="5000" data-perpage="2" data-space="50" data-breakpoints='{"991": {"slidesPerView": 1}}'>
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="testimonial-two">
                                        <div class="testi-content-inner">
                                            <div class="testimonial-bio">
                                                <div class="avatar"><img src="site/media/testimonial/1.jpg" alt="testimonial" /></div>
                                                <div class="bio-info">
                                                    <h3 class="name">Desmond Eagle</h3>
                                                    <span class="job">Web designer</span>
                                                </div>
                                            </div>
                                            <div class="testimonial-content"><p>Tosser nancy boy super tickety-boo lemon squeezy easy peasy quaint, hunky-dory baking cakes pear shaped butty do one, it's all gone to pot chinwag.!</p></div>
                                            <ul class="rating">
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                            </ul>
                                            <div class="quote"><img src="site/media/testimonial/quote.png" alt="quote" /></div>
                                        </div>
                                        <div class="shape-shadow"></div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="testimonial-two">
                                        <div class="testi-content-inner">
                                            <div class="testimonial-bio">
                                                <div class="avatar"><img src="site/media/testimonial/1.jpg" alt="testimonial" /></div>
                                                <div class="bio-info">
                                                    <h3 class="name">Desmond Eagle</h3>
                                                    <span class="job">Web designer</span>
                                                </div>
                                            </div>
                                            <div class="testimonial-content"><p>Tosser nancy boy super tickety-boo lemon squeezy easy peasy quaint, hunky-dory baking cakes pear shaped butty do one, it's all gone to pot chinwag.!</p></div>
                                            <ul class="rating">
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                            </ul>
                                            <div class="quote"><img src="site/media/testimonial/quote.png" alt="quote" /></div>
                                        </div>
                                        <div class="shape-shadow"></div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="testimonial-two">
                                        <div class="testi-content-inner">
                                            <div class="testimonial-bio">
                                                <div class="avatar"><img src="site/media/testimonial/1.jpg" alt="testimonial" /></div>
                                                <div class="bio-info">
                                                    <h3 class="name">Desmond Eagle</h3>
                                                    <span class="job">Web designer</span>
                                                </div>
                                            </div>
                                            <div class="testimonial-content"><p>Tosser nancy boy super tickety-boo lemon squeezy easy peasy quaint, hunky-dory baking cakes pear shaped butty do one, it's all gone to pot chinwag.!</p></div>
                                            <ul class="rating">
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                            </ul>
                                            <div class="quote"><img src="site/media/testimonial/quote.png" alt="quote" /></div>
                                        </div>
                                        <div class="shape-shadow"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="shape-shadow"></div>
                        <div class="slider-nav wow pixFadeUp" data-wow-delay="0.3s">
                            <div id="slide-prev" class="swiper-button-prev"><i class="ei ei-arrow_left"></i></div>
                            <div id="slide-next" class="swiper-button-next"><i class="ei ei-arrow_right"></i></div>
                        </div>
                    </div>
                </div>
            </section>
			
			-->
            
			
			<section class="countup">
                <div class="bg-map" data-bg-image="site/media/background/map.png"></div>
                <div class="container">
                    <div class="section-title color-two text-center">
                        <h3 class="sub-title wow pixFadeUp">Fun Facts</h3>
                        <h2 class="title wow pixFadeUp" data-wow-delay="0.3s">
                            Those users are with us!
                        </h2>
                    </div>
                    <div class="countup-wrapper">
                        <div class="row">
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="fun-fact wow pixFadeUp" data-wow-delay="0.3s">
                                    <div class="counter">
                                        <h4 class="count" data-counter="14">14</h4>
                                        <span>+</span>
                                    </div>
                                    <p>Total Users</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="fun-fact color-two wow pixFadeUp" data-wow-delay="0.5s">
                                    <div class="counter">
                                        <h4 class="count" data-counter="100">100</h4>
                                        <span>+</span>
                                    </div>
                                    <p>Total Template</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="fun-fact color-three wow pixFadeUp" data-wow-delay="0.7s">
                                    <div class="counter">
                                        <h4 class="count" data-counter="50">50</h4>
                                        <span>+</span>
                                    </div>
                                    <p>Total Development</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="fun-fact color-four wow pixFadeUp" data-wow-delay="0.9s">
                                    <div class="counter">
                                        <h4 class="count" data-counter="200">200</h4>
                                        <span>+</span>
                                    </div>
                                    <p>Services</p>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                </div>
                <div class="scroll-circle wow pixFadeRight"><img src="site/media/background/circle3.png" data-parallax='{"y" : -230}' alt="circle" /></div>
            </section>
			
			
           
			
		
			
			
			
         
			
         
			
        </div>
        <script src="site/dependencies/jquery/jquery.min.js"></script>
        <script src="site/dependencies/bootstrap/js/bootstrap.min.js"></script>
        <script src="site/dependencies/swiper/js/swiper.min.js"></script>
        <script src="site/dependencies/jquery.appear/jquery.appear.js"></script>
        <script src="site/dependencies/wow/js/wow.min.js"></script>
        <script src="site/dependencies/countUp.js/countUp.min.js"></script>
        <script src="site/dependencies/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="site/dependencies/imagesloaded/imagesloaded.pkgd.min.js"></script>
        <script src="site/dependencies/jquery.parallax-scroll/js/jquery.parallax-scroll.js"></script>
        <script src="site/dependencies/magnific-popup/js/jquery.magnific-popup.min.js"></script>
        <script src="site/dependencies/gmap3/js/gmap3.min.js"></script>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDk2HrmqE4sWSei0XdKGbOMOHN3Mm2Bf-M&amp;ver=2.1.6"></script>
        <script src="site/assets/js/header.js"></script>
        <script src="site/assets/js/retina.min.html"></script>
        <script src="site/assets/js/app.js"></script>
    </body>
</html>
