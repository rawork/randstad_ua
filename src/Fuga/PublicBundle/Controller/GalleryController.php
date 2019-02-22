<?php

namespace Fuga\PublicBundle\Controller;

use Fuga\CommonBundle\Controller\PublicController;

class GalleryController extends PublicController
{
	public function __construct()
	{
		parent::__construct('gallery');
	}

	public function indexAction()
	{
		$node = $this->getManager('Fuga:Common:Page')->getCurrentNode();
		$items = $this->get('container')->getItems('gallery_gallery', 'publish=1 AND node_id='.$node['id']);

		foreach ($items as &$item){
			$sql = "SELECT * FROM system_files WHERE table_name= :table_name AND field_name= :field_name AND entity_id= :entity_id ORDER by sort,id";
			$stmt = $this->get('connection')->prepare($sql);
			$stmt->bindValue('table_name', 'gallery_gallery');
			$stmt->bindValue('field_name', 'fotos');
			$stmt->bindValue('entity_id', $item['id']);
			$stmt->execute();
			$item['fotos'] = $stmt->fetchAll();
			$field = $this->get('container')->getTable('gallery_gallery')->fields['fotos'];
			list($key, $sizes) = explode(':', $field['params']);
			$this->get('imagestorage')->setOptions(array('sizes' => $sizes));
			foreach ($item['fotos'] as &$file) {
				$add_files = $this->get('imagestorage')->additionalFiles($file['file']);
				foreach ($add_files as $afile) {
					$file['foto_'.$afile['name']] = $afile['path'];
				}
			}
			unset($file);
		}
		unset($item);

		$is_iphone = stripos($_SERVER['HTTP_USER_AGENT'],"iPhone") || stripos($_SERVER['HTTP_USER_AGENT'],"iPod");

		$this->get('container')->setVar('h1', 'Церемония Randstad Award&ndash;'.$node['title']);

		return $this->render('gallery/index.tpl', compact('items', 'is_iphone'));
	}
} 