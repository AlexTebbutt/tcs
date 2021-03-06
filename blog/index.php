<?php 

	include('../perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'blog',
	));
	
?>
	
<div class="row">

  <div class="twelve columns inset-white">
	  
	  <div class="nine columns">

		    <?php perch_blog_recent_posts(10); ?>
		    
		    <p><a href="archive.php">More posts</a></p>
		</div>
		
		<div class="three columns">

			<?php perch_content('Blog Inlink Panels'); ?>
			
		</div>
		
  </div>
  
</div>
		
<nav class="sidebar">
	<h2>Archive</h2>
    <!-- The following functions are different ways to display archives. You can use any or all of these. 
    
    All of these functions can take a parameter of a template to overwrite the default template, for example:
    
    perch_blog_categories('my_template.html');
    
    --> 
    <!--  By category listing -->
    <?php perch_blog_categories(); ?>
    <!--  By tag -->
    <?php perch_blog_tags(); ?>
    <!--  By year -->
    <?php perch_blog_date_archive_years(); ?>
    <!--  By year and then month - can take parameters for two templates. The first displays the years and the second the months see the default templates for examples -->
    <?php perch_blog_date_archive_months(); ?>
</nav>
	
<?php
	perch_layout('global.footer', array(
		'activePage' => 'blog',
	));
?>