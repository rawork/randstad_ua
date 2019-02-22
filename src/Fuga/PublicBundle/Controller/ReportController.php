<?php

namespace Fuga\PublicBundle\Controller;

use Fuga\CommonBundle\Controller\PublicController;

class ReportController extends PublicController {
	
	public function __construct() {
		parent::__construct('report');
	}
	
	public function indexAction() {
		$items = $this->get('container')->getItems('report_report', 'publish=1');
		
		return $this->get('templating')->render('report/index.tpl', compact('items'));
	}

}