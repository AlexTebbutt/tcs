<?php 

	include('../perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'blog',
	));
	
?>
	
<div class="row">

  <div class="twelve columns inset-white">
	  
	  <div class="nine columns">

	    <?php perch_blog_post(perch_get('s')); ?>
	    
			<div class="row">
			
			  <div class="twelve columns inset-white">
			
				  <h3 class="handwritten">you might also like ]</h3>
				  
			  </div>
			
					<?php
					
			/*
						$categories = perch_blog_post_categories(perch_get('s'), array(
						'skip-template'=>true, ));
						
						if (count($categories)) {
							$cat_slugs = array();
			
							foreach($categories as $cat) {
			
								$cat_slugs[] = $cat['catSlug'];
			
							}
			*/
							
							perch_blog_custom(array( 
							'sort-order'=> 'RAND',
							'count'=> 3,
							'template'=> 'blog/related_posts.html',
							));
			
			/*
							perch_blog_custom(array( 
							'filter' => 'postSlug',
							'match' => 'neq',
							'value' => perch_get('s'),
							'category' => $cat_slugs,
							'sort-order'=> RAND,
							'count'=> 3,
							'template'=> 'blog/related-cat.html',
							'section'=> 'projects'
							));
			
			 			}
			*/
					
					?>
			
			</div>
		    
		</div>
		
		<div class="three columns">

			<?php perch_content('Blog Inlink Panels'); ?>
			
		</div>
		
  </div>
  
</div>

	  

  </div>
  
</div>
	
<?php
	perch_layout('global.footer', array(
		'activePage' => 'blog',
	));
?>