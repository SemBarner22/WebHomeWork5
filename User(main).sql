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
-- Структура таблицы `User`
--

CREATE TABLE `User` (
  `id` bigint(18) NOT NULL,
  `login` varchar(255) NOT NULL,
  `passwordSha` varchar(255) NOT NULL,
  `creationTime` datetime NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `User`
--

INSERT INTO `User` (`id`, `login`, `passwordSha`, `creationTime`, `email`) VALUES
(1, 'ildar', 'a86978a4b9f8946bb866d839773bcea560e50c0be95c77963abb1dda6cc91359', '2020-03-07 16:48:11', 'r@'),
(2, 'log', 'a86978a4b9f8946bb866d839773bcea560e50c0be95c77963abb1dda6cc91359', '2020-03-07 16:56:13', 'rr@'),
(3, 'logg', 'a86978a4b9f8946bb866d839773bcea560e50c0be95c77963abb1dda6cc91359', '2020-03-07 17:03:54', 'r@rrr');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_User_login` (`login`),
  ADD UNIQUE KEY `unique_User_email` (`email`),
  ADD KEY `index_User_creationTime` (`creationTime`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `User`
--
ALTER TABLE `User`
  MODIFY `id` bigint(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
