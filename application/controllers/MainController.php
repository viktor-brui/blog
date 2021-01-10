<?php

namespace application\controllers;

use application\core\Controller;
use application\lib\Pagination;
use application\models\Admin;

use application\lib\Db;

class MainController extends Controller {

	public function indexAction() {
		$pagination = new Pagination($this->route, $this->model->postsCount());
		$vars = [
			'pagination' => $pagination->get(),
			'list' => $this->model->postsList($this->route),
		];
		$this->view->render('Главная страница', $vars);
	}

	public function aboutAction() {
		$this->view->render('Обо мне');
	}

	public function contactAction() {
		if (!empty($_POST)) {
			if (!$this->model->contactValidate($_POST)) {
				$this->view->message('error', $this->model->error);
			}
			mail('viktor-brui@mail.ru', 'Сообщение из блога', $_POST['name'].'|'.$_POST['email'].'|'.$_POST['text']);
			$this->view->message('success', 'Сообщение отправлено Администратору');
		}
		$this->view->render('Контакты');
	}

	public function ratingAction() {
		if (!empty($_POST)) {
			if (isset($_COOKIE["post_rating"]) && in_array($_POST['id'], json_decode($_COOKIE["post_rating"], true))) {
				$this->view->message('error', 'но вы уже сотавляли оценку.');
			} else {
				if (isset($_COOKIE["post_rating"])) {
					$post_rating = json_decode($_COOKIE["post_rating"], true);
					$post_rating[] = $_POST['id'];
				} else {
					$post_rating = [$_POST['id']];
				}
				setcookie("post_rating", json_encode($post_rating));
				$this->model->postRatingAdd($_POST['rating'], $_POST['id']);
			}
				$this->view->message('success', 'Спасибо за Вашу оценку');
		}
		$this->view->render('Контакты');
	}

	public function postAction() {
		$adminModel = new Admin;
		if (!$adminModel->isPostExists($this->route['id'])) {
			$this->view->errorCode(404);
		}
		$vars = [
			'data' => $adminModel->postData($this->route['id'])[0],
		];
		$this->view->render('Пост', $vars);
	}

}