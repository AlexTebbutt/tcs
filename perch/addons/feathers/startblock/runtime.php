<?php
	
PerchSystem::register_feather('StartBlock');

class PerchFeather_StartBlock extends PerchFeather
{
	public function get_css($opts, $index, $count)
	{	
		$out = array();

		if (!$this->component_registered('normalize')) {
			$out[] = $this->_single_tag('link', array(
					'rel'=>'stylesheet',
					'href'=>$this->path.'/css/normalize.css',
					'type'=>'text/css'
				));
			$this->register_component('normalize');
		}
		
		return implode("\n\t", $out)."\n";
	}

	public function get_javascript($opts, $index, $count)
	{
		$out = array();
		
		if (!$this->component_registered('jquery')) {
			$out[] = $this->_script_tag(array(
				'src'=>$this->path.'/js/jquery-1.8.2.min.js'
			));
			$this->register_component('jquery');
		}

		return implode("\n\t", $out)."\n";
	}


}


?>