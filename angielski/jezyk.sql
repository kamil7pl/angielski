-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Kwi 2020, 17:09
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `jezyk`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `angielski_polski`
--

CREATE TABLE `angielski_polski` (
  `id` int(11) NOT NULL,
  `angielski` text COLLATE utf8_polish_ci NOT NULL,
  `polski` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `angielski_polski`
--

INSERT INTO `angielski_polski` (`id`, `angielski`, `polski`) VALUES
(1, 'car', 'samochód'),
(2, 'apple', 'jabłko'),
(3, 'pencil', 'ołówek'),
(4, 'repositorie', 'magazyn'),
(5, 'guide', 'przewodnik'),
(6, 'development', 'rozwój'),
(7, 'team', 'zespół'),
(8, 'security', 'bezpieczeństwo'),
(9, 'white', 'biały'),
(10, 'red', 'czerwony'),
(11, 'orange', 'pomarańczowy'),
(12, 'green', 'zielony'),
(13, 'announces', 'ogłosić'),
(14, 'book', 'książka'),
(16, 'immediate', 'natychmiastowy'),
(17, 'release', 'wydanie'),
(18, 'several', 'kilka'),
(19, 'fixes', 'poprawki'),
(21, 'encouraged', 'zachęcany'),
(22, 'upgrade', 'aktualizacja');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `daty`
--

CREATE TABLE `daty` (
  `id` int(11) NOT NULL,
  `angielski` text COLLATE utf8_polish_ci NOT NULL,
  `polski` text COLLATE utf8_polish_ci NOT NULL,
  `data` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `daty`
--

INSERT INTO `daty` (`id`, `angielski`, `polski`, `data`) VALUES
(1, 'book', 'książka', '2020/04/09'),
(2, 'several', 'kilka', '2020/04/09'),
(3, 'immediate', 'natychmiastowy', '2020/04/09');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `angielski_polski`
--
ALTER TABLE `angielski_polski`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `daty`
--
ALTER TABLE `daty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `angielski_polski`
--
ALTER TABLE `angielski_polski`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `daty`
--
ALTER TABLE `daty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
