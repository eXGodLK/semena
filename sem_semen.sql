-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 16 2023 г., 20:11
-- Версия сервера: 5.7.33
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sem semen`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brigada`
--

CREATE TABLE `brigada` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `brigada`
--

INSERT INTO `brigada` (`id`, `name`) VALUES
(1, 'Дневная '),
(2, 'Ночная'),
(3, 'На случай ЧП');

-- --------------------------------------------------------

--
-- Структура таблицы `sammlers`
--

CREATE TABLE `sammlers` (
  `id` int(11) UNSIGNED NOT NULL,
  `img_path` varchar(255) NOT NULL DEFAULT 'no_img.png',
  `name` varchar(60) NOT NULL,
  `id_brigada` int(10) UNSIGNED NOT NULL,
  `personal characteristics` varchar(255) DEFAULT NULL,
  `year of birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sammlers`
--

INSERT INTO `sammlers` (`id`, `img_path`, `name`, `id_brigada`, `personal characteristics`, `year of birth`) VALUES
(1, 'https://img.freepik.com/free-photo/industrial-worker-indoors-in-factory-young-technician-with-orange-hard-hat_1157-40866.jpg?w=1800&t=st=1678978804~exp=1678979404~hmac=84a5975d185714d14cd548671fa2304a34c70cf95750f818958260984329b634', 'Варкин Станислав Михайлович', 1, 'Трудолюбивый, отзывчивый, курит. Придумал новую систему сборки товара.', '1995-01-02'),
(2, 'https://img.freepik.com/free-photo/medium-shot-man-holding-tablet_23-2149214240.jpg?w=1800&t=st=1678981889~exp=1678982489~hmac=1864f1c14a99643641064a1bfe3c83341bf09833838b2d1cda7d8dbb94f4577d', 'Коркин Валерий Иванович', 1, 'Курит, трудолюбивый, без присмотра может отлынивать, хорошая физическая подготовка, имеет инженерное образование.', '1999-10-11'),
(3, 'https://img.freepik.com/free-photo/young-male-worker-standing-in-warehouse_107420-96552.jpg?w=1800&t=st=1678982043~exp=1678982643~hmac=157159a67d68380ec8fb50fd9e62289616bffe19e8b86fa23b8710b471b46ea2', 'Солонин Виктор Юрьевич', 1, 'Начальник дневной бригады. Умеет управлять персоналом. Знает индивидуальный подход к своим подчинённым. Назначен на повышение.', '1988-04-05'),
(4, 'https://img.freepik.com/premium-photo/young-male-worker-in-uniform-is-in-the-warehouse-pushing-pallet-truck_146671-30800.jpg?w=1800', 'Мусаров Махмуд Али', 2, 'Плохо говорит на русском. Исполнительный. Конфликтный. В списке на увольнение.', '2002-06-01'),
(5, 'https://img.freepik.com/premium-photo/warehouse_103577-3038.jpg?w=1800', 'Дидянов Алексей Александрович', 2, 'Показатели по производительности средние. Готов к самообучению. Хочет повышения.', '1980-12-12'),
(6, 'https://img.freepik.com/free-photo/man-in-overalls-looking-at-camera-and-colleague-behind_259150-56928.jpg?w=1800&t=st=1678983209~exp=1678983809~hmac=b19988f5fc04023cb02121a9a4a894cbff59924b41c00aeaec76a011d03798f5', 'Суркин Василий Дмитриевич', 2, 'Работает в компании 10 лет. Начальник ночной бригады. Не смотря на добрый внешний вид, может быть очень суровым. Благодаря ему ночная бригада держит приемлемые показатели.', '1985-02-07'),
(7, 'https://img.freepik.com/premium-photo/portrait-of-senior-storage-worker-in-warehouse-in-uniform-and-hard-hat_146671-30625.jpg?w=1800', 'Сотников Виктор Сергеевич', 3, 'Опытный руководитель бригады ЧП. В компании работает 20 лет. Исполнительный, трудолюбивый. Добрый и отзывчивый. Знаток своего дела.', '1967-01-10'),
(8, 'https://img.freepik.com/premium-photo/order-list-stock-concept-young-businessman-at-warehouse_488220-59565.jpg?w=1800', 'Ронков Денис Викторович', 3, 'Инженер-технолог. Самостоятельно создал две сборочные ленты. Трудолюбивый, исполнительный. Добрый, отзывчивый. Много времени проводит за разработками.', '1987-07-07'),
(9, 'https://img.freepik.com/free-photo/portrait-of-factory-worker-standing-in-factory-production-hall_342744-210.jpg?w=1800&t=st=1678984295~exp=1678984895~hmac=3ce05c2be17efacc388590e4bf331fee598c2aab9db33e3e289191a63ff2abfc', 'Южкин Сергей Сергеевич', 3, 'Оператор погрузчика. Инженер. Помогал Ронкову в постройке сборочной ленты. Трудолюбивый, ответственный, отлично ладит со своими коллегами.', '1990-10-12');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `brigada`
--
ALTER TABLE `brigada`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sammlers`
--
ALTER TABLE `sammlers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_1` (`id_brigada`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `brigada`
--
ALTER TABLE `brigada`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `sammlers`
--
ALTER TABLE `sammlers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
