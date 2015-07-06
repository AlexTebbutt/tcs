<?php 

	include('perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'home',
	));

?>

  <div class="main-content">

    <div class="row">

	    <div class="twelve columns inset-white">
		    
		    <?php perch_content('Home Hero'); ?>
			
			</div>

    </div>
    
    <div class="row inset-white spacer">
	    
    <div class="three columns">
	    
	    
	    
	    <img class="u-full-width" src="_assets/instagem-inlink.jpg" alt="home-hero-1" />
	    
	    <a class="inlink" href="#" class="inlinks">Follow us on Instagram</a>

	    <img class="u-full-width" src="_assets/instagem-inlink.jpg" alt="home-hero-1" />
	    
	    <a href="#" class="inlinks">Follow us on Instagram</a>
	    
    </div>
	    
	    <?php perch_content('Home In-links'); ?>
	    
    </div>				

  </div>


 <?php
	
	perch_layout('global.footer');

?>

