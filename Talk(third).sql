-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Мар 07 2020 г., 14:12
-- Версия сервера: 10.2.22-MariaDB-log
-- Версия PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u34`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Talk`
--

CREATE TABLE `Talk` (
  `id` bigint(18) NOT NULL,
  `sourceUserId` bigint(18) NOT NULL,
  `targetUserId` bigint(18) NOT NULL,
  `text` varchar(255) NOT NULL,
  `creationTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Talk`
--

INSERT INTO `Talk` (`id`, `sourceUserId`, `targetUserId`, `text`, `creationTime`) VALUES
(1, 3, 3, 'dcsvwevew', '2020-03-07 17:06:50'),
(2, 3, 2, 'weweggegwv', '2020-03-07 17:06:56'),
(3, 3, 2, 'weweggegwv', '2020-03-07 17:06:57');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Talk`
--
ALTER TABLE `Talk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Talk_sourceUserId` (`sourceUserId`),
  ADD KEY `fk_Talk_targetUserId` (`targetUserId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Talk`
--
ALTER TABLE `Talk`
  MODIFY `id` bigint(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Talk`
--
ALTER TABLE `Talk`
  ADD CONSTRAINT `fk_Talk_sourceUserId` FOREIGN KEY (`sourceUserId`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `fk_Talk_targetUserId` FOREIGN KEY (`targetUserId`) REFERENCES `User` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
