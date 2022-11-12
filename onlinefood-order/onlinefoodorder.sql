-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Lis 2022, 23:52
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `onlinefoodorder`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(1, 'Somsiad', 'Złodziej', 'E10ADC3949BA59ABBE56E057F20F883E'),
(9, 'Jan Kowalski', 'JKowalski', 'E10ADC3949BA59ABBE56E057F20F883E'),
(10, 'Dawid Wolak', 'Dr4z3N', 'E10ADC3949BA59ABBE56E057F20F883E'),
(12, 'Administrator', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Pizza', 'Food_Category_795.jpg', 'Yes', 'Yes'),
(5, 'Burgery', 'Food_Category_579.jpg', 'Yes', 'Yes'),
(9, 'Wrapy', 'Food_Category_468.jpg', 'Yes', 'Yes'),
(11, 'Kanapki', 'Food_Category_6.jpg', 'Yes', 'Yes'),
(12, 'Sałatki', 'Food_Category_893.jpg', 'Yes', 'Yes'),
(13, 'Alkohole', 'Food_Category_712.jpeg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(4, 'Buuurgerrek', 'Buuuurgerr Z Maka z kurczakiem i Guess', '12.00', 'Food-Name-5673.jpg', 5, 'Yes', 'Yes'),
(5, 'Pizza jakaś', 'Łostra Pizza Uwożoj!!!', '30.00', 'Food-Name-8915.jpg', 4, 'No', 'Yes'),
(9, 'Twister', 'Tortilla z kurczakiem oraz sałatą wypełniona sosami', '20.00', 'Food-Name-3489.png', 9, 'Yes', 'Yes'),
(10, 'Jakis Kolejny Burger', 'Najlepszy Burger na Świecie  ᕦ(ツ)ᕤ', '16.00', 'Food-Name-7908.jpg', 5, 'Yes', 'Yes'),
(11, 'Qurito', 'Qurito Z KFC \r\n', '25.00', 'Food-Name-7926.png', 11, 'Yes', 'Yes'),
(12, 'Pizza Salami', 'Salami Pizza', '25.00', 'Food-Name-2398.jpg', 4, 'Nie', 'Tak'),
(13, 'Amarena wiśniowa', 'Budżetowa Opcja!!!!', '6.00', 'Food-Name-9418.png', 13, 'tak', 'Tak'),
(14, 'Amarena Brzoskwiniowa', 'Budżetowa Opcja!!!!', '6.00', 'Food-Name-2881.png', 13, 'tak', 'Tak'),
(15, 'Śliwowica', 'Czysty power śliwowicy', '20.00', 'Food-Name-8609.jpg', 13, 'tak', 'Tak'),
(16, 'Carlo Rossi', 'Wino', '20.00', 'Food-Name-9652.jpg', 13, 'No', 'Yes'),
(17, 'Soplica morelowa', 'MORELOWA', '35.00', 'Food-Name-2462.jpg', 13, 'Nie', 'Tak'),
(18, 'Żubrówka biała', 'Zestaw Budowlańca I GUESS ', '27.00', 'Food-Name-2859.jpg', 13, 'Nie', 'Tak'),
(19, 'Piwo Robotnika', 'No piwo robotnika', '4.00', 'Food-Name-1726.jpg', 13, 'Yes', 'Yes'),
(20, 'Harnold', 'Harnaś ', '3.00', 'Food-Name-1600.jpg', 13, 'Yes', 'Yes'),
(21, 'Żubr', 'Piwo żubr', '4.00', 'Food-Name-9337.jpeg', 13, 'Nie', 'Tak'),
(22, 'Ruskacz', 'Dobry ruszkacz nie jest zły!', '10.00', 'Food-Name-3831.jpg', 13, 'No', 'Yes'),
(23, 'Pizza Robotnicza', 'By nie zabrakło Ci energii na robocie!', '30.00', 'Food-Name-7795.jpg', 4, 'Nie', 'Tak'),
(24, 'Pizza diabła', 'Tak zwana hawajska, cena za wysoka byś jej nie kupił ¯\\_㋡_/¯', '999.00', 'Food-Name-3628.jpg', 4, 'Nie', 'Tak'),
(25, 'Pizza z chwastem', 'No chwasty na pizzy', '25.00', 'Food-Name-3809.jpg', 4, 'tak', 'Tak'),
(26, 'Sałatka Grecka', 'No sałatka grecka lol', '17.00', 'Food-Name-8370.jpg', 12, 'Nie', 'Tak'),
(27, 'Sałatka z krewetkami', 'Sprawdź czy nie masz uczulenia first!', '19.00', 'Food-Name-4922.JPG', 12, 'Nie', 'Tak'),
(28, 'Sałatka z rukolą', 'No tak jak w tytule', '17.00', 'Food-Name-812.jpg', 12, 'Nie', 'Tak');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(2, 'Best Burger', '4.00', 4, '16.00', '2020-11-30 03:52:43', 'Delivered', 'Kelly Dillard', '7896547800', 'kelly@gmail.com', '308 Post Avenue'),
(3, 'Mixed Pizza', '10.00', 2, '20.00', '2020-11-30 04:07:17', 'Delivered', 'Thomas Gilchrist', '7410001450', 'thom@gmail.com', '1277 Sunburst Drive'),
(4, 'Mixed Pizza', '10.00', 1, '10.00', '2021-05-04 01:35:34', 'Delivered', 'Martha Woods', '78540001200', 'marthagmail.com', '478 Avenue Street'),
(6, 'Chicken Wrap', '7.00', 1, '7.00', '2021-07-20 06:10:37', 'Delivered', 'Charlie', '7458965550', 'charlie@gmail.com', '3140 Bartlett Avenue'),
(7, 'Cheeseburger', '4.00', 2, '8.00', '2021-07-20 06:40:21', 'On Delivery', 'Claudia Hedley', '7451114400', 'hedley@gmail.com', '1119 Kinney Street'),
(8, 'Smoky BBQ Pizza', '6.00', 1, '6.00', '2021-07-20 06:40:57', 'Ordered', 'Vernon Vargas', '7414744440', 'venno@gmail.com', '1234 Hazelwood Avenue'),
(9, 'Chicken Wrap', '5.00', 4, '20.00', '2021-07-20 07:06:06', 'Cancelled', 'Carlos Grayson', '7401456980', 'carlos@gmail.com', '2969 Hartland Avenue'),
(10, 'Grilled Cheese Sandwich', '3.00', 4, '12.00', '2021-07-20 07:11:06', 'Delivered', 'Jonathan Caudill', '7410256996', 'jonathan@gmail.com', '1959 Limer Street');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT dla tabeli `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
