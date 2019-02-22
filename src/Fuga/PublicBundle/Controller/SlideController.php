<?php

namespace Fuga\PublicBundle\Controller;

use Fuga\CommonBundle\Controller\PublicController;

class SlideController extends PublicController {
	
	public function __construct() {
		parent::__construct('slide');
	}
	
	public function indexAction() {
		$items = $this->get('container')->getItems('slide_slide', 'publish=1');
		
		return $this->get('templating')->render('slide/index.tpl', compact('items'));
	}

}