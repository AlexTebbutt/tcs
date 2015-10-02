<?php 

	include('perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'new-season',
	));

	
?>

<div class="row">

  <div class="twelve columns inset-white">
		  
		  <h1 class="handwritten"><?php perch_content('Whats New Page Title'); ?></h1>
		  
		  <?php perch_content('Whats New Page Main Copy'); ?>
		  
	</div>
	
</div>
	  
		  
  <!-- Bespoke albums show here -->
  <?php 
	  	
	  perch_gallery_albums(array(
		  										'template'=>'new_season_album.html',
													'filter'=>'category',
													'match'=>'eq',
													'value'=>'new-season' 
												));
	?>
	

<?php
	perch_layout('global.footer', array(
		'activePage' => 'new-season',
	));

?>

