﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/> 
		<meta name="description" content="Multi-Level Push Menu: Off-screen navigation with multiple levels" />
		<meta name="keywords" content="multi-level, menu, navigation, off-canvas, off-screen, mobile, levels, nested, transform" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"/>

<link href="Content/normalize.css" rel="stylesheet" />
<link href="Content/demo.css" rel="stylesheet" />
<link href="Content/icons.css" rel="stylesheet" />
<link href="Content/component.css" rel="stylesheet" />
<script src="Scripts/modernizr.custom.js"></script>

</head>
<body>
    <form id="form1" runat="server">
		<div class="container">
			<!-- Push Wrapper -->
			<div class="mp-pusher" id="mp-pusher">

				<!-- mp-menu -->
				<nav id="mp-menu" class="mp-menu">
					<div class="mp-level">
						<h2 class="icon icon-world">All Categories</h2>
						<ul>
							<li class="icon icon-arrow-left">
								<a class="icon icon-display" href="#">Devices</a>
								<div class="mp-level">
									<h2 class="icon icon-display">Devices</h2>
									<ul>
										<li class="icon icon-arrow-left">
											<a class="icon icon-phone" href="#">Mobile Phones</a>
											<div class="mp-level">
												<h2>Mobile Phones</h2>
												<ul>
													<li><a href="#">Super Smart Phone</a></li>
													<li><a href="#">Thin Magic Mobile</a></li>
													<li><a href="#">Performance Crusher</a></li>
													<li><a href="#">Futuristic Experience</a></li>
												</ul>
											</div>
										</li>
										<li class="icon icon-arrow-left">
											<a class="icon icon-tv" href="#">Televisions</a>
											<div class="mp-level">
												<h2>Televisions</h2>
												<ul>
													<li><a href="#">Flat Superscreen</a></li>
													<li><a href="#">Gigantic LED</a></li>
													<li><a href="#">Power Eater</a></li>
													<li><a href="#">3D Experience</a></li>
													<li><a href="#">Classic Comfort</a></li>
												</ul>
											</div>
										</li>
										<li class="icon icon-arrow-left">
											<a class="icon icon-camera" href="#">Cameras</a>
											<div class="mp-level">
												<h2>Cameras</h2>
												<ul>
													<li><a href="#">Smart Shot</a></li>
													<li><a href="#">Power Shooter</a></li>
													<li><a href="#">Easy Photo Maker</a></li>
													<li><a href="#">Super Pixel</a></li>
												</ul>
											</div>
										</li>
									</ul>
								</div>
							</li>
							<li class="icon icon-arrow-left">
								<a class="icon icon-news" href="#">Magazines</a>
								<div class="mp-level">
									<h2 class="icon icon-news">Magazines</h2>
									<ul>
										<li><a href="#">National Geographic</a></li>
										<li><a href="#">Scientific American</a></li>
										<li><a href="#">The Spectator</a></li>
										<li><a href="#">The Rambler</a></li>
										<li><a href="#">Physics World</a></li>
										<li><a href="#">The New Scientist</a></li>
									</ul>
								</div>
							</li>
							<li class="icon icon-arrow-left">
								<a class="icon icon-shop" href="#">Store</a>
								<div class="mp-level">
									<h2 class="icon icon-shop">Store</h2>
									<ul>
										<li class="icon icon-arrow-left">
											<a class="icon icon-t-shirt" href="#">Clothes</a>
											<div class="mp-level">
												<h2 class="icon icon-t-shirt">Clothes</h2>
												<ul>
													<li class="icon icon-arrow-left">
														<a class="icon icon-female" href="#">Women's Clothing</a>
														<div class="mp-level">
															<h2>Women's Clothing</h2>
															<ul>
																<li><a href="#">Tops</a></li>
																<li><a href="#">Dresses</a></li>
																<li><a href="#">Trousers</a></li>
																<li><a href="#">Shoes</a></li>
																<li><a href="#">Sale</a></li>
															</ul>
														</div>
													</li>
													<li class="icon icon-arrow-left">
														<a class="icon icon-male" href="#">Men's Clothing</a>
														<div class="mp-level">
															<h2>Men's Clothing</h2>
															<ul>
																<li><a href="#">Shirts</a></li>
																<li><a href="#">Trousers</a></li>
																<li><a href="#">Shoes</a></li>
																<li><a href="#">Sale</a></li>
															</ul>
														</div>
													</li>
												</ul>
											</div>
										</li>
										<li>
											<a class="icon icon-diamond" href="#">Jewelry</a>
										</li>
										<li>
											<a class="icon icon-music" href="#">Music</a>
										</li>
										<li>
											<a class="icon icon-food" href="#">Grocery</a>
										</li>
									</ul>
								</div>
							</li>
							<li><a class="icon icon-photo" href="#">Collections</a></li>
							<li><a class="icon icon-wallet" href="#">Credits</a></li>
						</ul>
					</div>
				</nav>
				<!-- /mp-menu -->

				<div class="scroller"><!-- this is for emulating position fixed of the nav -->
					<div class="scroller-inner">
						<!-- Top Navigation -->
						<div class="codrops-top clearfix">
							<a class="codrops-icon codrops-icon-prev" href="http://tympanus.net/Tutorials/CircularNavigation/"><span>Previous Demo</span></a>
							<span class="right"><a class="codrops-icon codrops-icon-drop" href="http://tympanus.net/codrops/?p=16252"><span>Back to the Codrops Article</span></a></span>
						</div>
						<div class="content clearfix">
							<div class="block block-40 clearfix">
								<p><a href="#" id="trigger" class="menu-trigger">Open/Close Menu</a></p>
							</div>
						</div>
					</div><!-- /scroller-inner -->
				</div><!-- /scroller -->

			</div><!-- /pusher -->
		</div><!-- /container -->
<script src="Scripts/classie.js"></script>
<script src="Scripts/mlpushmenu.js"></script>
		<script>
		    new mlPushMenu(document.getElementById('mp-menu'), document.getElementById('trigger'));
		</script>
    </form>
</body>
</html>
