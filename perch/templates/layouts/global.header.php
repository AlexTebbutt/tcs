<!DOCTYPE html>
<html lang="en">
<head>

  <!-- Basic Page Needs
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <meta charset="utf-8">
  <title><?php perch_pages_title(); ?></title>
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Mobile Specific Metas
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- FONT
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">

  <!-- CSS
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link rel="stylesheet" href="_/css/normalize.css">
  <link rel="stylesheet" href="_/css/skeleton.css">

  <!-- Favicon
  –––––––––––––––––––––––––––––––––––––––––––––––––– -->
  <link rel="icon" type="image/png" href="images/favicon.png">

</head>

<body>
	
	<div class="container">
				
		<header>

			<div class="row">
				
				<div class="one-half column logo">
			
					<a href="index.php">The Cross</a>
						
				</div>
			
				<div class="one-half column social-networks">		
		
					<ul>
						
						<li><a href="<?php perch_content('Instagram Account'); ?>" class="instagram-icon">Instagram</a></li>
			
						<li><a href="<?php perch_content('Facebook Account'); ?>" class="facebook-icon">Facebook</a></li>
						
						<li><a href="<?php perch_content('Twitter Account'); ?>" class="twitter-icon">Twitter</a></li>
			
						<li><a href="<?php perch_content('Pinterest Account'); ?>" class="pinterest-icon">Pinterest</a></li>						
						
					</ul>
		
				</div>
				
			</div>
			
			<div class="row">
			
				<div class="seven columns">
	
					<nav>
						
						<ul>
			
							<li><a href=""<?php if(perch_layout_var('activePage', true) == 'home') echo ' class="active"'; ?>>About Us</a></li>						
			
							<li><a href=""<?php if(perch_layout_var('activePage', true) == 'whats-new') echo ' class="active"'; ?>>What's New</a></li>
							
							<li><a href=""<?php if(perch_layout_var('activePage', true) == 'new-season') echo ' class="active"'; ?>>New Season</a></li>
							
							<li><a href=""<?php if(perch_layout_var('activePage', true) == 'shop') echo ' class="active"'; ?>>Shop</a></li>
							
							<li><a href=""<?php if(perch_layout_var('activePage', true) == 'blog') echo ' class="active"'; ?>>Blog</a></li>
							
							<li><a href=""<?php if(perch_layout_var('activePage', true) == 'contact') echo ' class="active"'; ?>>Contact</a></li>				
							
						</ul>
						
					</nav>
					
				</div>
				
				<div class="five columns">
			
					<form id="newsletter-subscribe" action="">
						
						<label for="subscription-email"><span class="aimh-font">Subscribe</span> to our newsletter</label>
						
						<input id="subscription-email" type="email" placeholder="your@email.com" />
						
					</form>
	
				</div>
				
			</div>
			
			<div class="row mobile-thumb">
				
				<div class="twelve columns">
					
					<a href="#" class="mobile-toggle">Menu</a>
					
				</div>
				
			</div>
		
	</header>