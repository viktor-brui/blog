-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 11 2021 г., 00:24
-- Версия сервера: 5.7.23
-- Версия PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `text` text NOT NULL,
  `rating` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `text`, `rating`) VALUES
(1, 'My CV', 'Веб сайт лэндинг', 'Одностраничный сайт \"MyCV\", написан в учебных целях для ознакомления со мной, моими навыками и умениями.\r\nссылка: \r\n<br>\r\nПерейти по ссылке можно: <a href=\"https://viktor-brui.github.io/CV/\"><b>тут</b></a>', NULL),
(2, 'Ghostbusters', 'Веб сайт лэндинг', 'Одностраничный сайт \"Ghostbusters\", по мотивам популярного фильма, написан в учебных целях по дизайн-макету с соблюдением \"Pixel perfect\".\r\n<br>\r\nПерейти по ссылке можно: <a href=\"https://viktor-brui.github.io/ghostbusters/\"><b>тут</b></a>', NULL),
(3, 'The Witcher', 'Веб сайт лэндинг', 'Одностраничный сайт \"The Witcher\", по мативам популярного сериала, написан в учебных целях по дизайн-макету с соблюдением \"Pixel perfect\".\r\n<br>\r\nПерейти по ссылке можно: <a href=\"https://viktor-brui.github.io/the_witcher/\"><b>тут</b></a>', NULL),
(4, 'Shelter', 'Веб сайт', 'Двустраничный сайт \"Shelter\", сайт для помощи домашним животным, написан в учебных целях по дизайн-макету с соблюдением \"Pixel perfect\".\r\n<br>\r\nПерейти по ссылке можно: <a href=\"https://rolling-scopes-school.github.io/viktor-brui-JS2020Q3/shelter/pages/main/\"><b>тут</b></a>', NULL),
(5, 'Webdev', 'Веб сайт лэндинг', 'Одностраничный сайт \"Webdev\", сайт веб компании, написан в учебных целях по дизайн-макету с соблюдением \"Pixel perfect\".\r\n<br>\r\nПерейти по ссылке можно: <a href=\"https://rolling-scopes-school.github.io/viktor-brui-JS2020Q3/webdev/\"><b>тут</b></a>', NULL),
(6, 'Calculator', 'Веб приложение написано на чистом JS', 'Веб приложение \"Calculator\" - это веб-приложении рабочего калькулятора, выполняющего основные функции.\r\n<br>\r\nПерейти по ссылке можно: <a href=\"https://rolling-scopes-school.github.io/viktor-brui-JS2020Q3/calculator/\"><b>тут</b></a>', NULL),
(7, 'Momentum', 'Веб приложение написано на чистом JS', 'Веб приложение \"Momentum\" - это веб-приложении рабочего стола работающее со сторонними API, в динамически меняющимися заставками в зависимости от времени суток, так же отображает время, а также погоду, скорость ветра, влажность и т.д. для данного города который вы введёте сами. В приложении также выводятся различные мотивационные цитаты великих людей.\r\n<br>\r\nПерейти по ссылке можно: <a href=\"https://rolling-scopes-school.github.io/viktor-brui-JS2020Q3/momentum/\"><b>тут</b></a>', 5),
(8, 'Virtual keyboard', 'Веб приложение написано на чистом JS', 'Веб приложение \"Virtual keyboard\" - это виртуальная клавиатура, выполняющий весь необходимый функционал стандартной клавиатуры в данном веб-приложении.\r\n<br>\r\nПерейти по ссылке можно: <a href=\"https://rolling-scopes-school.github.io/viktor-brui-JS2020Q3/virtual-keyboard/\"><b>тут</b></a>', NULL),
(9, 'Gem-puzzle', 'Веб приложение написано на чистом JS', 'Веб приложение \"Gem-puzzle\" - это игра в простонародье \"Пятнашки\" c множественными режимами сложности, можно выбирать размеры поля, а так же собирать многочисленные рандомные картинки, с сохранением результатов для возвобновления.\r\n<br>\r\nПерейти по ссылке можно: <a href=\"https://rolling-scopes-school.github.io/viktor-brui-JS2020Q3/gem-puzzle/\"><b>тут</b></a>', 5),
(10, 'ЯTunes', 'Медиа приложение написано на чистом JS', 'Веб приложение \"ЯTunes\" для просмотра видео, прослушивания радиостанций и загруженной музыки.\r\n<br>\r\nПерейти по ссылке можно: <a href=\"https://viktor-brui.github.io/-Tunes/\"><b>тут</b></a>', 5),
(11, 'English for Kids', 'Приложение написано на чистом JS, с использованием WebPack сборки', 'Веб приложение \"English for Kids\" - это игра для изучение английского языка по карточкам. В игре есть 2 режима \"тренировка\" и \"игра\" в режиме \"тренировки\" дети изучают новые слова, а в режиме \"игры\" они отрабатывают полученные знания на практике.\r\n<br>\r\nПерейти по ссылке можно: <a href=\"https://rolling-scopes-school.github.io/viktor-brui-JS2020Q3/english-for-kids/dist/\"><b>тут</b></a>', 4);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
