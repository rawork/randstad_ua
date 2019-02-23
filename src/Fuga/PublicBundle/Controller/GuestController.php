<?php

namespace Fuga\PublicBundle\Controller;

use Fuga\CommonBundle\Controller\PublicController;

use PHPExcel;
use PHPExcel_Writer_Excel2007;
use PHPMailer\PHPMailer\PHPMailer;

class GuestController extends PublicController {
	
	public function __construct() {
		parent::__construct('guest');
	}
	
	public function indexAction() {
		if ('POST' == $_SERVER['REQUEST_METHOD']) {
			// init phpmailer
			$mail = new PHPMailer();

			$mail->isMail();
			$mail->SMTPDebug = 1;
			$mail->CharSet = 'UTF-8';

			$mail->From = 'award@ancor.ua';
			$mail->FromName = 'Randstad Award Ukraine';

			$mail->addEmbeddedImage(PRJ_DIR.'/bundles/public2018/img/logo_md3.png', 'logo');
			$mail->isHTML(true);                                  // Set email format to HTML

			$mail->Subject = 'Randstad Award Registration';
			$mail->Body    = $this->render('mail/guest.new.tpl');
			$mail->AltBody = '';

			$company = $this->get('util')->post('company');
			$name = $this->get('util')->post('name');
			$lastname = $this->get('util')->post('lastname');
			$job = $this->get('util')->post('job');
			$email = $this->get('util')->post('email');
			$phone = $this->get('util')->post('phone');
			foreach ($name as $key => $value) {
				if (empty($company) || empty($name[$key]) || empty($lastname[$key])
					|| empty($job[$key]) || empty($email[$key]) || empty($phone[$key])) {
					continue;
				}
				$lastID = $this->get('container')->addItem('guest_guest', array(
					'company'  => $company.($key > 0 ? ' (Гость)' : ''),
					'name'     => $name[$key],
					'lastname' => $lastname[$key],
					'job'      => $job[$key],
					'email'    => $email[$key],
					'phone'    => $phone[$key],
					'created'  => date('Y-m-d H:i:s'),
					'updated'  => '0000-00-00 00:00:00',
				));
				$mail->clearAddresses();
				$mail->addAddress($email[$key]);     // Add a recipient

				if(!$mail->send()) {
					$this->get('log')->write('Mailer Error: ' . $mail->ErrorInfo);
				}
			}

			$_SESSION['info'] = 'ok';

			$this->get('router')->reload();
		}

		$message = $this->flash('info');
		if ($message) {
			$this->get('container')->setVar('h1', '&nbsp;');

			return $this->render('guest/message.tpl');
		} else {
			$this->get('container')->setVar('h1', 'Реєстрація на церемонію вручення премії Randstad<small>Registration at the Randstad Award ceremony</small>');

			return $this->render('guest/index.tpl');
		}
	}

	public function exportAction() {
		$user = $this->get('security')->getCurrentUser();
		if (!$user || !$this->get('security')->isGroup('admin')) {
			$this->get('router')->redirect('/guests');
		}
		
		$filepath = PRJ_DIR.'/app/logs/guests.xlsx';
		$guests = $this->get('container')->getItems('guest_guest');
		// Create new PHPExcel object
		$objPHPExcel = new PHPExcel();

		// Set properties
		$objPHPExcel->getProperties()->setCreator("Maarten Balliauw");
		$objPHPExcel->getProperties()->setLastModifiedBy("Maarten Balliauw");
		$objPHPExcel->getProperties()->setTitle("Office 2007 XLSX Test Document");
		$objPHPExcel->getProperties()->setSubject("Office 2007 XLSX Test Document");
		$objPHPExcel->getProperties()->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.");


		// Add some data
		$objPHPExcel->setActiveSheetIndex(0);



		$objPHPExcel->getActiveSheet()->SetCellValue('A1', 'ID');
		$objPHPExcel->getActiveSheet()->SetCellValue('B1', 'Компания');
		$objPHPExcel->getActiveSheet()->SetCellValue('C1', 'Имя');
		$objPHPExcel->getActiveSheet()->SetCellValue('D1', 'Фамилия');
		$objPHPExcel->getActiveSheet()->SetCellValue('E1', 'Должность');
		$objPHPExcel->getActiveSheet()->SetCellValue('F1', 'E-mail');
		$objPHPExcel->getActiveSheet()->SetCellValue('G1', 'Телефон');
		$objPHPExcel->getActiveSheet()->SetCellValue('H1', 'Дата регистрации');

		$i = 2;

		foreach ($guests as $guest) {
			$objPHPExcel->getActiveSheet()->SetCellValue('A'.$i, $guest['id']);
			$objPHPExcel->getActiveSheet()->SetCellValue('B'.$i, $guest['company']);
			$objPHPExcel->getActiveSheet()->SetCellValue('C'.$i, $guest['name']);
			$objPHPExcel->getActiveSheet()->SetCellValue('D'.$i, $guest['lastname']);
			$objPHPExcel->getActiveSheet()->SetCellValue('E'.$i, $guest['job']);
			$objPHPExcel->getActiveSheet()->SetCellValue('F'.$i, $guest['email']);
			$objPHPExcel->getActiveSheet()->SetCellValue('G'.$i, $guest['phone']);
			$objPHPExcel->getActiveSheet()->SetCellValue('H'.$i, $guest['created']);

			$i++;
		}


		// Rename sheet
		$objPHPExcel->getActiveSheet()->setTitle('Гости');


		// Save Excel 2007 file
		$objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
		$objWriter->save($filepath);

		// сообщаем размер файла
		header( 'Content-Length: '.filesize($filepath) );
		// дата модификации файла для кеширования
		header( 'Last-Modified: '.date("D, d M Y H:i:s T", filemtime($filepath)) );
		// сообщаем тип данных - zip-архив
		header('Content-type: text/rtf');
		// файл будет получен с именем $filename
		header('Content-Disposition: attachment; filename="guests.xlsx"');
		// начинаем передачу содержимого файла
		readfile($filepath);
		exit;
	}
	
}