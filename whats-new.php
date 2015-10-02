<?php 

	include('perch/runtime.php');
	perch_layout('global.header');
	
?>

<div class="row">

  <div class="twelve columns inset-white">
		  
		  <h1 class="handwritten"><?php perch_content('Whats New Page Title'); ?></h1>		  
	</div>
	
</div>
	  
		  
  <!-- Bespoke albums show here -->
  <?php 
	  	
	  perch_gallery_album_images('whats-new', array(
	    'template' => 'bespoke_designer_gallery.html',
	));
	?>
	

<?php
	perch_layout('global.footer', array(
		'activePage' => 'contact',
	));

?>

