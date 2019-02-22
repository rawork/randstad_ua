<?php

namespace Fuga\PublicBundle\Controller;

use Fuga\CommonBundle\Controller\PublicController;

class NewsController extends PublicController {
	
	public function __construct() {
		parent::__construct('news');
	}
	
	public function newslineAction() {
		$items = $this->get('container')->getItems('news_news', 'publish=1', 'id DESC', $this->getParam('per_lenta'));
		
		return $this->get('templating')->render('news/newsline.tpl', compact('items'));
	}

	public function feedAction()
	{
		$items = $this->get('container')->getItems('news_news', 'publish=1');

		return $this->get('templating')->render('news/feed.tpl', compact('items'));
	}
	
}