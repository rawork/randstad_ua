<?php

namespace Fuga\PublicBundle\Controller;

use Fuga\CommonBundle\Controller\PublicController;

class WinnerController extends PublicController {
	
	public function __construct() {
		parent::__construct('winner');
	}
	
	public function mainAction() {
		$items = $this->get('container')->getItems('winner_winner', 'publish=1 AND is_main=1');
		
		return $this->get('templating')->render('winner/main.tpl', compact('items'));
	}

	public function extraAction() {
		$items = $this->get('container')->getItems('winner_winner', 'publish=1 AND is_extra=1');

		return $this->get('templating')->render('winner/extra.tpl', compact('items'));
	}

    public function specAction() {
        $items = $this->get('container')->getItems('winner_winner', 'publish=1 AND is_spec=1');

        $show = count($items) > 0;

        return $this->get('templating')->render('winner/spec.tpl', compact('items', 'show'));
    }

	public function otherAction() {
		$items = $this->get('container')->getItems('winner_winner', 'publish=1 AND is_main=0 AND is_extra=0 AND is_spec=0');

		return $this->get('templating')->render('winner/other.tpl', compact('items'));
	}

}