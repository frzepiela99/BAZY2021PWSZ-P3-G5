-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Cze 2021, 15:53
-- Wersja serwera: 10.4.19-MariaDB
-- Wersja PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kia2`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nr_admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `idKonfiguracja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `admins`
--

INSERT INTO `admins` (`id`, `login`, `email`, `email_verified_at`, `password`, `nr_admin`, `created_at`, `updated_at`, `idKonfiguracja`) VALUES
(1, 'administrator990409', 'filiprzepiela@o2.pl', NULL, '$2y$10$lRxqKDqfwd3e6Mz.6ajUWOIDbIYaRMCM2kzXadw0vPo3hDzUOvExq', '12345', '2021-05-09 08:18:53', '2021-05-09 08:18:53', 1),
(2, 'Pjoter', 'piotrekp2999@gmail.com', NULL, '$2y$10$peHDcHMIsQ/c1NGdVlsXbuV/niUZ.DlcwDwROIoLq5s/rnTAm.usO', '123456', '2021-05-30 16:58:21', '2021-05-30 16:58:21', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dealer`
--

CREATE TABLE `dealer` (
  `idDealer` int(11) NOT NULL,
  `nazwaDealer` varchar(255) DEFAULT NULL,
  `emailDealer` varchar(45) DEFAULT NULL,
  `telefonDealer` int(11) DEFAULT NULL,
  `adresDealer` varchar(255) DEFAULT NULL,
  `godz_pracyDealer` varchar(255) NOT NULL,
  `info_uslugiDealer` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dealer`
--

INSERT INTO `dealer` (`idDealer`, `nazwaDealer`, `emailDealer`, `telefonDealer`, `adresDealer`, `godz_pracyDealer`, `info_uslugiDealer`) VALUES
(1, 'CONTINENTAL AUTO', 'sprzedaz.continental@kiamotors.pl', 598452353, 'ul. Szczecińska 40 76-200 Słupsk', 'pon-pt: 9:00 - 18:00 sob: 9:00 - 14:00', 'Salon\r\n\r\nSerwis mechaniczny\r\n\r\nSerwis blacharsko - lakierniczy\r\n\r\nObsługa LPG\r\n\r\nBEST SERWIS 2019'),
(2, 'RM FILIPOWICZ Kraków Klimeckiego', 'sprzedaz.filipowicz@kiamotors.pl', 123480952, 'ul. Klimeckiego 25 30-705 Kraków', '- Salon  pon-pt: 9:00 - 18:00 sob: 9:00 - 14:00 - Serwis  pon-pt: 7:00 - 19:00 sob: 7:00 - 15:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nKia | Używane');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dealer_has_konfiguracja`
--

CREATE TABLE `dealer_has_konfiguracja` (
  `idDealerhasKonfiguracja` int(11) NOT NULL,
  `dealer_idDealer` int(11) NOT NULL,
  `konfiguracja_idKonfiguracja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dealer_has_zamowienia`
--

CREATE TABLE `dealer_has_zamowienia` (
  `DealerhasZamowienia` int(11) NOT NULL,
  `dealer_idDealer` int(11) NOT NULL,
  `zamowienia_idzamowienia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dodatki`
--

CREATE TABLE `dodatki` (
  `idDodatki` int(11) NOT NULL,
  `nazwaDodatki` varchar(255) DEFAULT NULL,
  `typDodatki` varchar(255) DEFAULT NULL,
  `Zdjecie` longtext NOT NULL,
  `cenaDodatki` int(11) DEFAULT NULL,
  `opisDodatki` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dodatki`
--

INSERT INTO `dodatki` (`idDodatki`, `nazwaDodatki`, `typDodatki`, `Zdjecie`, `cenaDodatki`, `opisDodatki`) VALUES
(1, 'Naklejki ozdobne ze wzorem pasów wyścigowych (błyszcząca czerń)', 'naklejki', 'https://ws2.eu.kia.com/filehandler.ashx?guid=40ed0366-1f00-4fa0-be26-843d7929fd24', 438, 'Podkreślają dynamikę i nowoczesność linii nadwozia. Wysoka jakość wykonania. Idealnie dopasowane do kształtu Kia Ceed. cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(2, 'Naklejki ozdobne ze wzorem pasów wyścigowych (błyszcząca czerwień)', 'naklejki', 'https://ws2.eu.kia.com/filehandler.ashx?guid=9fb727d6-dace-4b55-87a5-26828a4a46f9', 438, 'Podkreślają dynamikę i nowoczesność linii nadwozia. Wysoka jakość wykonania. Idealnie dopasowane do kształtu Kia Ceed.\r\nDostępne w błyszczącej czerni, błyszczącej czerwieni lub w matowej bieli. Odporne na zjawiska pogodowe oraz częste korzystanie z myjni samochodowej. Zalecany specjalistyczny montaż.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(3, 'Nakładki lusterek zewnętrznych (chrom)', 'nakładka', 'https://ws2.eu.kia.com/filehandler.ashx?guid=586289a6-f310-4172-8885-811016e76c14', 493, 'Mała zmiana, a jaki efekt! Nakładki o wyglądzie szlifowanej lub błyszczącej stali nierdzewnej wzbogacają atrakcyjność stylistyczną nowej Kia Ceed.'),
(4, 'Listwy boczne nadwozia (satyna)', 'listwa', 'https://ws2.eu.kia.com/filehandler.ashx?guid=898f89d7-870f-495a-b150-e5fd6a7531dc', 500, 'Dodają elegancji i podkreślają dynamikę pojazdu.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(5, 'Listwa zderzaka tylnego (chrom)', 'listwa', 'https://ws2.eu.kia.com/filehandler.ashx?guid=1fcfa680-7bdd-4eab-8a68-9faf0820368d', 376, 'Kolejne atrakcyjne detale. Dzięki tym dodatkom samochód zyskuje elegancki akcent przy krawędzi pokrywy bagażnika.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(6, 'Belki dachowe stalowe', 'belki', 'https://ws2.eu.kia.com/filehandler.ashx?guid=8cf435a9-62f3-40ed-a97d-4eaa5afd7dbf', 671, 'Surfing, jazda na rowerze, narciarstwo, spływy kajakowe... Bez względu na to, który sport wybierzesz, możesz polegać na tym lekkim i szybkim akcesorium do przewozu bagaży na dachu.\r\nNieodpowiednie do pojazdów z panoramicznym oknem dachowym.\r\nDealer Kia Motors przekaże informacje o maksymalnej ładowności.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(7, 'Bagażnik dachowy 330', 'Bagażnik dachowy', 'https://ws2.eu.kia.com/filehandler.ashx?guid=7f3a383b-927a-411a-af03-78f0b8be7e76', 1940, 'Wyjazd na wakacje? Prawdopodobnie potrzebna będzie większa przestrzeń na bagaż. Elegancki i wytrzymały bagażnik dachowy sprawi, że upychanie rzeczy w kabinie nie będzie już konieczne. Łatwy w montażu. Zapewnia bezproblemowy dostęp dzięki funkcji obustronnego otwierania. Oto doskonały sposób na uzyskanie dodatkowej przestrzeni! Wyposażony w zamek.\r\n(bagażnik dachowy 330 / wymiary: 144 × 86 × 37,5 cm / objętość: 330 l / nośność: do 75 kg)'),
(8, 'Bagażnik dachowy 390', 'Bagażnik dachowy', 'https://ws2.eu.kia.com/filehandler.ashx?guid=d99fcd80-58ff-459e-977b-e8959e8c3313', 2056, 'Wyjazd na wakacje? Prawdopodobnie potrzebna będzie większa przestrzeń na bagaż. Elegancki i wytrzymały bagażnik dachowy sprawi, że upychanie rzeczy w kabinie nie będzie już konieczne. Łatwy w montażu. Zapewnia bezproblemowy dostęp dzięki funkcji obustronnego otwierania. Oto doskonały sposób na uzyskanie dodatkowej przestrzeni! Wyposażony w zamek.\r\n(bagażnik dachowy 390 / tylko dla wersji 5-drzwiowej / wymiary: 195 × 73,8 × 36 cm / objętość: 390 l / nośność: do 75 kg)');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `felgi`
--

CREATE TABLE `felgi` (
  `idFelgi` int(11) NOT NULL,
  `nazwaFelgi` varchar(255) DEFAULT NULL,
  `cenaFelgi` int(11) DEFAULT NULL,
  `Zdjecie` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `felgi`
--

INSERT INTO `felgi` (`idFelgi`, `nazwaFelgi`, `cenaFelgi`, `Zdjecie`) VALUES
(1, '15\" stalowe obręcze kół z oponami 195/65/R15', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=e26c1c20-7ce5-416f-b94f-ebb6a6cb8a2e'),
(2, '14\" stalowe obręcze kół z oponami 175/65 R14 ', 0, ''),
(3, 'Close 15\" aluminiowe obręcze kół z oponami 18', 0, ''),
(4, '16\" aluminiowe obręcze kół z oponami 195/45 R', 0, ''),
(5, '16\" aluminiowe obręcze kół z oponami 195/45 R', 0, ''),
(6, '15\" stalowe obręcze kół z oponami 185/65/R15 ', 0, ''),
(7, '15\" aluminiowe obręcze kół z oponami 185/65/R', 0, ''),
(8, '16\" aluminiowe obręcze kół z oponami 195/55/R', 0, ''),
(9, '17\" aluminiowe obręcze kół z oponami 205/45/R', 0, ''),
(10, '16\" Felgi aluminiowe z oponami 205/55/R16', 0, ''),
(11, '17\'\' Felgi aluminiowe z oponami 225/45/R17', 0, ''),
(12, 'Dedykowane aluminiowe obręcze kół GT Line z o', 0, ''),
(13, '17\'\' Felgi aluminiowe z oponami 225/45/R17', 0, ''),
(14, '18” aluminiowe obręcze kół GT z oponami w roz', 0, ''),
(15, '16\'\' Felgi aluminiowe z oponami 205/55/R16', 0, ''),
(16, '17” aluminiowe obręcze kół z oponami w rozmiarze 225/45/R17', 0, ''),
(17, '18” aluminiowe obręcze kół GT z oponami w rozmiarze 225/40/R18 , 17-calowe tarcze hamulcowe z przodu, Zaciski hamulcowe lakierowane w kolorze czerwonym', NULL, ''),
(18, 'Felgi aluminiowe 16 calowe z oponami 205/60/R16', 0, ''),
(19, 'Felgi aluminiowe 18 calowe z oponami 235/45/R18', 0, ''),
(20, 'Felgi aluminiowe 18 calowe z oponami 235/45/R18', 0, ''),
(21, 'Felgi aluminiowe 16 calowe z oponami 205/60/R16', 0, ''),
(22, 'Felgi aluminiowe 16 calowe z oponami 205/60/R16', 0, ''),
(23, 'Felgi aluminiowe 18 calowe z oponami 235/45/R18', 0, ''),
(24, '16” aluminiowe obręcze kół z oponami 195/55/R16', 0, ''),
(25, '17\" aluminiowe obręcze kół z oponami 205/55/R17 (niedostępne dla silnika 1.2 MPI)', 0, ''),
(26, '17\" aluminiowe obręcze kół z oponami 205/55/R17', 0, ''),
(27, '16\" felgi aluminiowe z oponami Michelin 205/60 R16', 0, ''),
(28, '18\" felgi aluminiowe z oponami Michelin 225/45 R18', 0, ''),
(29, '17\" felgi aluminiowe z oponami Michelin 215/55R17', 0, ''),
(30, '17” felgi aluminowe z oponami 215/55R17', 0, ''),
(31, '16\" felgi aluminiowe z oponami 215/70/R16', 0, ''),
(32, '17\" felgi aluminiowe z oponami 225/60/R17', 0, ''),
(33, '19\" felgi aluminiowe z oponami 245/45/R19', 0, ''),
(34, '17\" aluminiowe felgi z oponami 235/65/R17', 0, ''),
(35, '19\" aluminiowe felgi z oponami 235/55 R19', 0, ''),
(36, '17\" aluminiowe felgi z oponami 235/65R 17', 0, ''),
(37, '18” aluminiowe felgi z oponami 235/60R 18', 0, ''),
(38, '19\" aluminiowe felgi z oponami 235/55 R19', 0, ''),
(39, 'Felgi aluminiowe 19\" z oponami 225/40/R19 przód, 255/35/R19 tył', 0, ''),
(40, 'Akcesoryjne obręcze koła 16” ze stopu lekkiego', 3300, 'https://ws2.eu.kia.com/filehandler.ashx?guid=d3f1d867-9ac2-489a-bf2d-729e6cac2a21'),
(41, 'Akcesoryjne obręcze koła 17” ze stopu lekkiego', 3780, 'https://ws2.eu.kia.com/filehandler.ashx?guid=75442df9-8311-44ba-bb71-05f3aad7a3d2'),
(42, 'Akcesoryjne obręcze koła 16” Anyang ze stopu lekkiego (czarna)', 2868, 'https://ws2.eu.kia.com/filehandler.ashx?guid=1cb4dfb2-63d8-4403-a07d-c883fc573a51'),
(43, 'Akcesoryjne obręcze koła 16” Anyang ze stopu lekkiego (srebrna)', 2868, 'https://ws2.eu.kia.com/filehandler.ashx?guid=28fbf9b4-85ad-4e46-be00-37d3ce8f983b'),
(44, 'Akcesoryjne obręcze koła 16” Anyang ze stopu lekkiego (dwukolorowa)', 3103, 'https://ws2.eu.kia.com/filehandler.ashx?guid=1e4725bb-36a7-4b49-825b-5d60ef29c3b9'),
(45, 'Akcesoryjne obręcze koła 16” Anyang ze stopu lekkiego (grafitowa)', 2868, 'https://ws2.eu.kia.com/filehandler.ashx?guid=dea2ab77-ab3d-43fe-b978-cc99f31fa051'),
(46, 'Akcesoryjne obręcze koła 17” Goyang ze stopu lekkiego (czarna)', 3150, 'https://ws2.eu.kia.com/filehandler.ashx?guid=38404551-d1ff-49c1-ba98-76293d980180'),
(47, 'Akcesoryjne obręcze koła 17” Goyang ze stopu lekkiego (srebrna)', 3150, 'https://ws2.eu.kia.com/filehandler.ashx?guid=abc6ae99-7c02-4af4-bd97-e6e3d120c583'),
(48, 'Akcesoryjne obręcze koła 17” Goyang ze stopu lekkiego (dwukolorowa)', 3531, 'https://ws2.eu.kia.com/filehandler.ashx?guid=a2a6b547-695a-4627-b08a-fc848b9da408'),
(49, 'Akcesoryjne obręcze koła 17” Goyang ze stopu lekkiego (grafitowa)', 3150, 'https://ws2.eu.kia.com/filehandler.ashx?guid=292ba627-a2dc-4efe-ad11-e4680de950b2'),
(50, 'Akcesoryjne obręcze 15” stalowe, 6.0J×15, do opon 195/65 R15.', 895, 'https://ws2.eu.kia.com/filehandler.ashx?guid=4ce14e67-cd25-4ce9-b41d-6f4914e761d2'),
(51, 'Akcesoryjne kołpaki do stalowych obręczy kół 15”', 685, 'https://ws2.eu.kia.com/filehandler.ashx?guid=de84e545-db84-4816-86f8-9496a5111272'),
(52, 'Akcesoryjne obręcze 16” stalowe, 6.5J×16, do opon 205/55 R16.', 1267, 'https://ws2.eu.kia.com/filehandler.ashx?guid=864eea1d-9e2c-4772-9462-8151543a8cec'),
(53, 'Akcesoryjne kołpaki do stalowych obręczy kół 16”', 685, 'https://ws2.eu.kia.com/filehandler.ashx?guid=de5a5c47-a31d-47a5-85c9-6fd1a7f07f76');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `felgi_has_wersja`
--

CREATE TABLE `felgi_has_wersja` (
  `idFelgihasWersja` int(11) NOT NULL,
  `felgi_idFelgi` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `felgi_has_wersja`
--

INSERT INTO `felgi_has_wersja` (`idFelgihasWersja`, `felgi_idFelgi`, `wersja_idWersja`) VALUES
(1, 1, 1),
(2, 40, 1),
(3, 41, 1),
(4, 42, 1),
(5, 43, 1),
(6, 44, 1),
(7, 45, 1),
(8, 46, 1),
(9, 47, 1),
(10, 48, 1),
(11, 49, 1),
(12, 50, 1),
(14, 52, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria`
--

CREATE TABLE `kategoria` (
  `idkategoria` int(11) NOT NULL,
  `nazwaKategoria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `kategoria`
--

INSERT INTO `kategoria` (`idkategoria`, `nazwaKategoria`) VALUES
(1, 'Wszystkie'),
(2, 'Miejskie'),
(3, 'Rodzinne'),
(4, 'SUV/Crossover'),
(5, 'Luksusowe'),
(6, 'GT'),
(7, 'Hybrydowe'),
(8, 'Elektryczne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria_has_samochod`
--

CREATE TABLE `kategoria_has_samochod` (
  `idKategoriahasSamochod` int(11) NOT NULL,
  `kategoria_idkategoria` int(11) NOT NULL,
  `samochod_idsamochod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kategoria_has_samochod`
--

INSERT INTO `kategoria_has_samochod` (`idKategoriahasSamochod`, `kategoria_idkategoria`, `samochod_idsamochod`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 2, 1),
(21, 2, 2),
(22, 2, 3),
(24, 2, 6),
(25, 2, 8),
(26, 2, 9),
(27, 2, 10),
(28, 2, 11),
(29, 2, 12),
(30, 2, 13),
(31, 2, 14),
(32, 3, 3),
(33, 3, 5),
(34, 3, 6),
(35, 3, 15),
(36, 3, 16),
(37, 3, 17),
(38, 3, 18),
(39, 4, 8),
(40, 4, 9),
(41, 4, 10),
(42, 4, 11),
(43, 4, 12),
(44, 4, 13),
(45, 4, 14),
(46, 4, 15),
(47, 4, 16),
(48, 4, 17),
(49, 4, 18),
(50, 5, 7),
(51, 5, 16),
(52, 5, 17),
(53, 5, 18),
(54, 6, 4),
(55, 6, 7),
(56, 6, 19),
(57, 7, 6),
(58, 7, 9),
(59, 7, 11),
(60, 7, 12),
(61, 7, 16),
(62, 7, 17),
(63, 8, 13),
(64, 8, 14);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kolor`
--

CREATE TABLE `kolor` (
  `idKolor` int(11) NOT NULL,
  `nazwaKolor` varchar(45) DEFAULT NULL,
  `Zdjecie` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `kolor`
--

INSERT INTO `kolor` (`idKolor`, `nazwaKolor`, `Zdjecie`) VALUES
(1, 'Infra Red', 'Infra_Red.png'),
(2, 'Deluxe White', 'Deluxe_White.png'),
(3, 'Lunar Silver', 'Lunar_Silver.png'),
(4, 'Sparkling Silver', 'Sparkling_Silver.png'),
(5, 'Blue Flame', 'Blue_Flame.png'),
(6, 'Dark Penta Metal', 'Dark_Penta_Metal.png'),
(7, 'Cassa White', 'Cassa_White.png'),
(8, 'Orange Fusion', 'Orange_Fusion.png'),
(9, 'Shiny Red', ''),
(10, 'Lime Light', ''),
(11, 'Sparkling Silver', ''),
(12, 'Honey Bee', ''),
(13, 'Pop Orange', ''),
(14, 'Milky Beige', ''),
(15, 'Alice Blue', ''),
(16, 'Aurora Black', ''),
(17, 'Clear White', ''),
(18, 'Silky Silver', ''),
(19, 'Signal Red', ''),
(20, 'Urban Green', ''),
(21, 'Smoke Blue', ''),
(22, 'Aurora Black', ''),
(23, 'Clear White', ''),
(24, 'Most Yellow', ''),
(25, 'Perennial Grey', ''),
(26, 'Sporty Blue', ''),
(27, 'Quantum Yellow', ''),
(28, 'Deep Cerulean Blue', ''),
(29, 'Gravity Blue', ''),
(30, 'Runway Red', ''),
(31, 'Orange Delight', ''),
(32, 'Horizon Blue', ''),
(33, 'Steel Grey', ''),
(34, 'Platinium Graphite', ''),
(35, 'Snow White Pearl', ''),
(36, 'Yacht Blue', ''),
(37, 'Inferno Red/Black Soul', ''),
(38, 'Clear White/ InfernoRed', ''),
(39, 'Black Soul / InfernoRed', ''),
(40, 'Neptune Blue', ''),
(41, 'Gravity Gray', ''),
(42, 'Inferno Red', ''),
(43, 'Space Cadet Green', ''),
(44, 'Mars Orange', ''),
(45, 'Mars Orange/ Cherry Black', ''),
(46, 'Neptune Blue/ Cherry Black', ''),
(47, 'Black Cherry', ''),
(48, 'Mineral Blue', ''),
(49, 'Essence Brown', ''),
(50, 'Neon Orange', ''),
(51, 'High Chroma Red', ''),
(52, 'Ceramic Silver', ''),
(53, 'Micro Blue', ''),
(54, 'Deep Chroma Blue', ''),
(55, 'Panthera Metal', ''),
(56, 'Black Pearl', 'Black_Pearl.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kolor_has_wersja`
--

CREATE TABLE `kolor_has_wersja` (
  `idKolorhasWersja` int(11) NOT NULL,
  `kolor_idKolor` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL,
  `kolor_przod` text NOT NULL,
  `kolor_tyl` text NOT NULL,
  `CenaKolor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kolor_has_wersja`
--

INSERT INTO `kolor_has_wersja` (`idKolorhasWersja`, `kolor_idKolor`, `wersja_idWersja`, `kolor_przod`, `kolor_tyl`, `CenaKolor`) VALUES
(0, 56, 1, '//ws2.eu.kia.com/filehandler.ashx?guid=d6ce0821-9784-434d-a99a-943ae7530c11', '//ws2.eu.kia.com/filehandler.ashx?guid=69631c2a-9d8f-4726-94e5-d8de77c6c3c9', '2 500'),
(1, 1, 1, '//ws2.eu.kia.com/filehandler.ashx?guid=2582c511-801e-4cd3-82fc-c13a3aaa4356', '//ws2.eu.kia.com/filehandler.ashx?guid=3a813093-e1fe-4bfb-af31-570f6ca42aaf', '2 500'),
(2, 2, 1, '//ws2.eu.kia.com/filehandler.ashx?guid=dd1c5713-324a-4e5a-86ff-c4b7e61ac529', '//ws2.eu.kia.com/filehandler.ashx?guid=1807540c-ea94-43c0-8470-361f18e61cf5', '2 500'),
(3, 3, 1, '//ws2.eu.kia.com/filehandler.ashx?guid=532afe72-1d46-489b-93bc-b6d0a6e9d852', '//ws2.eu.kia.com/filehandler.ashx?guid=0f0a5d66-e1ac-451d-9cfe-c71620ebd3c3', '2 500'),
(4, 4, 1, '//ws2.eu.kia.com/filehandler.ashx?guid=eb34cb97-f939-4721-b487-89753b5d82c7', '//ws2.eu.kia.com/filehandler.ashx?guid=1d3fd5f0-b5e4-496e-b3d3-335500e1e5bc', '2 500'),
(5, 5, 1, '//ws2.eu.kia.com/filehandler.ashx?guid=ded8fdd3-c2b7-43f6-b81c-c31ee4a520b9', '//ws2.eu.kia.com/filehandler.ashx?guid=56b24a3b-581d-4c7f-a094-acb1377f0b00', '2 500'),
(6, 6, 1, '//ws2.eu.kia.com/filehandler.ashx?guid=a501d975-e876-4d9e-911f-60db82cd83cd', '//ws2.eu.kia.com/filehandler.ashx?guid=bed1b90d-3561-4ee6-92a6-57bbfbab7f8b', '2 500'),
(7, 7, 1, '//ws2.eu.kia.com/filehandler.ashx?guid=381ea4e7-4857-4181-8a60-15b7972dfc3a', '//ws2.eu.kia.com/filehandler.ashx?guid=08f7459c-1a4c-4fdd-9fe1-585546aaf96b', '0'),
(8, 1, 2, '//ws2.eu.kia.com/filehandler.ashx?guid=b98f3337-1357-4f38-b529-95dc667cf019', '//ws2.eu.kia.com/filehandler.ashx?guid=d2aa64c8-33ef-43ee-89db-cc9f67e06f4b', '2 500'),
(9, 2, 2, '//ws2.eu.kia.com/filehandler.ashx?guid=4a6e82d1-84b4-4aaf-8ca0-2c350bec33eb', '//ws2.eu.kia.com/filehandler.ashx?guid=656fe3b3-b5a9-4f03-b64c-58d82a7ae4e9', '2 500'),
(10, 3, 2, '//ws2.eu.kia.com/filehandler.ashx?guid=7f912807-e9bd-4d82-99fa-ba634867a337', '//ws2.eu.kia.com/filehandler.ashx?guid=79a015e4-711c-4912-b55e-052d8f3d861b', '2 500'),
(11, 4, 2, '//ws2.eu.kia.com/filehandler.ashx?guid=a8080f67-4b13-4cf3-964c-4a60cd2b8e8a', '//ws2.eu.kia.com/filehandler.ashx?guid=7b1cfdec-62ed-4b9c-9ff3-8ef1ba891c5c', '2 500'),
(12, 5, 2, '//ws2.eu.kia.com/filehandler.ashx?guid=b4c647f8-1619-4d8a-98ca-2018c459364d', '//ws2.eu.kia.com/filehandler.ashx?guid=9a818357-8420-4094-b9ae-6cc4aa9db1be', '2 500'),
(13, 6, 2, '//ws2.eu.kia.com/filehandler.ashx?guid=57600c74-efe3-4e1e-89f2-5f899df50956', '//ws2.eu.kia.com/filehandler.ashx?guid=39193983-afe0-4f55-9e18-27dd05e3e272', '2 500'),
(14, 7, 2, '//ws2.eu.kia.com/filehandler.ashx?guid=879efdc3-2822-466c-8be3-db1bebb23c56', '//ws2.eu.kia.com/filehandler.ashx?guid=03f2e9b3-c860-4571-a3d9-f07a803fdd7a', '0'),
(15, 1, 3, '//ws2.eu.kia.com/filehandler.ashx?guid=407ce2f9-bf9a-45cb-a7bb-8ba5c89bd642', '//ws2.eu.kia.com/filehandler.ashx?guid=1bdfe07f-23f2-4f2e-814a-402fcfa36e8f', '2 500'),
(16, 2, 3, '//ws2.eu.kia.com/filehandler.ashx?guid=718546e2-e27e-4bb2-9807-ad9d59bcbfb6', '//ws2.eu.kia.com/filehandler.ashx?guid=6a7e85d4-08d3-4703-bef8-57bb00457885', '2 500'),
(17, 3, 3, '//ws2.eu.kia.com/filehandler.ashx?guid=c9bc7478-d3a2-4d02-a0b3-9372bcdd4ba8', '//ws2.eu.kia.com/filehandler.ashx?guid=7407ed73-b238-444a-9eb7-6f5ddef7dd4a', '2 500'),
(18, 4, 3, '//ws2.eu.kia.com/filehandler.ashx?guid=6403c2d9-418c-418e-ad97-b7e2da21d424', '//ws2.eu.kia.com/filehandler.ashx?guid=583dc15f-505d-40a6-b145-7594a9a8db91', '2 500'),
(19, 5, 3, '//ws2.eu.kia.com/filehandler.ashx?guid=b58ec746-8837-469d-8635-84dca2681a4b', '//ws2.eu.kia.com/filehandler.ashx?guid=aeb66c65-cac6-4bb3-9e25-5cb688687d91', '2 500'),
(20, 6, 3, '//ws2.eu.kia.com/filehandler.ashx?guid=2c115c61-e196-429d-a213-f6078fdff1fc', '//ws2.eu.kia.com/filehandler.ashx?guid=e27a852d-0e0f-46c8-a7c0-c090baabd2b5', '2 500'),
(21, 7, 3, '//ws2.eu.kia.com/filehandler.ashx?guid=afaf4286-ce6b-41d9-baf1-1ab9ff4bc38b', '//ws2.eu.kia.com/filehandler.ashx?guid=55219d2b-94f4-442f-86c3-a567ddc67d5a', '0'),
(22, 1, 4, '//ws2.eu.kia.com/filehandler.ashx?guid=472687de-cb42-4f9e-9c81-1bcab7a7206a', '//ws2.eu.kia.com/filehandler.ashx?guid=db2b0d4f-3cbe-43bf-ac79-7cb23ad5bdbc', '2 500'),
(23, 2, 4, '//ws2.eu.kia.com/filehandler.ashx?guid=9801388d-fb1a-48ba-855c-b1552fdab867', '//ws2.eu.kia.com/filehandler.ashx?guid=9251f268-9f9c-4fed-a29c-00dff581f2ae', '2 500'),
(24, 3, 4, '//ws2.eu.kia.com/filehandler.ashx?guid=05f4ef1b-7b8b-427d-8811-1d6fd7c927b2', '//ws2.eu.kia.com/filehandler.ashx?guid=0802a760-1aac-405f-9946-92484f103658', '2 500'),
(25, 4, 4, '//ws2.eu.kia.com/filehandler.ashx?guid=2637f51c-0813-479d-a83e-9366d6c8a2e5', '//ws2.eu.kia.com/filehandler.ashx?guid=99b2d4ba-2693-41f4-b221-2e764dea0ce0', '2 500'),
(26, 5, 4, '//ws2.eu.kia.com/filehandler.ashx?guid=3cf3df6c-f975-4ea5-853a-db34b6fb8f1a', '//ws2.eu.kia.com/filehandler.ashx?guid=78ae16de-9821-4525-86cf-c5efe3d82c36', '2 500'),
(27, 6, 4, '//ws2.eu.kia.com/filehandler.ashx?guid=5067ed1e-1216-462e-b131-828a06428bf8', '//ws2.eu.kia.com/filehandler.ashx?guid=49d23364-eb3f-4ea3-a81a-4fa964b705f8', '2 500'),
(28, 7, 4, '//ws2.eu.kia.com/filehandler.ashx?guid=b50fec6c-166c-4731-8092-80b93583de57', '//ws2.eu.kia.com/filehandler.ashx?guid=31d7ee72-8021-4f65-9269-4c37c3309199', '0'),
(29, 1, 5, '//ws2.eu.kia.com/filehandler.ashx?guid=4315f89a-e471-4dae-afeb-39b288207e7e', '//ws2.eu.kia.com/filehandler.ashx?guid=daa6085b-0516-4149-9c2b-8d68b3601756', '2 500'),
(30, 2, 5, '//ws2.eu.kia.com/filehandler.ashx?guid=c383ef8b-0ee4-4051-94b4-def704ac96aa', '//ws2.eu.kia.com/filehandler.ashx?guid=7d1360a0-4464-4ebc-8a47-29939bf13e49', '2 500'),
(31, 3, 5, '//ws2.eu.kia.com/filehandler.ashx?guid=78266ac6-43bc-468b-9ec9-414e588ff1f9', '//ws2.eu.kia.com/filehandler.ashx?guid=6987d135-4444-4bae-9f83-828a2717d9d2', '2 500'),
(32, 4, 5, '//ws2.eu.kia.com/filehandler.ashx?guid=36a444de-3ba6-4ce2-8c7e-4795fb651af1', '//ws2.eu.kia.com/filehandler.ashx?guid=e98c0a1e-70ff-40db-9e5c-489bb8ba4692', '2 500'),
(33, 5, 5, '//ws2.eu.kia.com/filehandler.ashx?guid=f7bd883f-0399-4a32-aab6-54bd43ef3bed', '//ws2.eu.kia.com/filehandler.ashx?guid=61ccd1a6-8bc1-45ae-8cdb-9a940fa98f39', '2 500'),
(34, 6, 5, '//ws2.eu.kia.com/filehandler.ashx?guid=dd6ba8fa-20b2-49fa-ad94-ed092eb9a593', '//ws2.eu.kia.com/filehandler.ashx?guid=9f0a847d-1b72-4c2d-bf98-7a55f0f3d9e8', '2 500'),
(35, 7, 5, '//ws2.eu.kia.com/filehandler.ashx?guid=0d5c8702-9bb0-4b69-9214-9fb65c920de9', '//ws2.eu.kia.com/filehandler.ashx?guid=2673d66f-cbac-4857-8115-72300ca7f538', '0'),
(36, 8, 5, '//ws2.eu.kia.com/filehandler.ashx?guid=ffb81b3d-52df-4c6d-932a-99f621a5a751', '//ws2.eu.kia.com/filehandler.ashx?guid=c4d88a86-6b43-40a8-b838-2bdabff4c1d0', '2 500'),
(37, 1, 6, '//ws2.eu.kia.com/filehandler.ashx?guid=fb787dcf-eb0f-4f1c-93d7-baa31cdb59ce', '//ws2.eu.kia.com/filehandler.ashx?guid=f765edbd-8f22-4402-81cb-bc0cc14b770d', '2 500'),
(38, 2, 6, '//ws2.eu.kia.com/filehandler.ashx?guid=c5a1744e-f4aa-46b2-a9ef-f831a0b3d386', '//ws2.eu.kia.com/filehandler.ashx?guid=8e06368e-ccec-4d40-a01d-9a7d8a39562e', '2 500'),
(39, 3, 6, '//ws2.eu.kia.com/filehandler.ashx?guid=9fc5f890-685c-4777-af93-30913062fbfa', '//ws2.eu.kia.com/filehandler.ashx?guid=b2a42db8-56f6-437b-9ddd-dd5469e7c2b5', '2 500'),
(40, 4, 6, '//ws2.eu.kia.com/filehandler.ashx?guid=84592b75-134e-4c3a-adbd-7e48bb6e38aa', '//ws2.eu.kia.com/filehandler.ashx?guid=b041b69a-64a1-49e1-b466-2fa3061678c0', '2 500'),
(41, 5, 6, '//ws2.eu.kia.com/filehandler.ashx?guid=079e0c58-28d1-40f9-8a8a-fa49979b68af', '//ws2.eu.kia.com/filehandler.ashx?guid=38eab88f-8517-41e3-b408-7dcd0ae6b74a', '2 500'),
(42, 6, 6, '//ws2.eu.kia.com/filehandler.ashx?guid=2e5ca95f-ccc0-4e45-bc3d-40f6ac2490ac', '//ws2.eu.kia.com/filehandler.ashx?guid=42f4a581-b463-4667-a8a4-97bedc44f3a2', '2 500'),
(43, 7, 6, '//ws2.eu.kia.com/filehandler.ashx?guid=36a0264d-a11b-44a3-8061-226d21794649', '//ws2.eu.kia.com/filehandler.ashx?guid=a864aec7-9357-48a4-8cd1-acd3361d88b5', '0'),
(44, 8, 7, '//ws2.eu.kia.com/filehandler.ashx?guid=53ae0a56-75df-486f-81b7-f97f3c7da8e6', '//ws2.eu.kia.com/filehandler.ashx?guid=03750433-fd89-4c13-996c-8e5c04e31592', '0'),
(45, 2, 7, '//ws2.eu.kia.com/filehandler.ashx?guid=72c6052e-a626-4de2-a638-7335dab6496b', '//ws2.eu.kia.com/filehandler.ashx?guid=cb21825f-f1bd-4225-8cd0-6106d1ae08aa', '2 500'),
(46, 4, 7, '//ws2.eu.kia.com/filehandler.ashx?guid=a0777c5f-f7e4-4acc-a5ee-0950ddd08f60', '//ws2.eu.kia.com/filehandler.ashx?guid=6f78e7f9-c696-414a-bd26-115e82b3d554', '2 500'),
(47, 5, 7, '//ws2.eu.kia.com/filehandler.ashx?guid=522b82b8-ab07-45d4-ba35-3cad6c25305d', '//ws2.eu.kia.com/filehandler.ashx?guid=eccdb1f9-b53d-49a5-97ae-cdbdb9de2e4c', '2 500'),
(48, 6, 7, '//ws2.eu.kia.com/filehandler.ashx?guid=8114746a-5009-4cde-a57c-ef919ec95a42', '//ws2.eu.kia.com/filehandler.ashx?guid=c5c2627b-18bb-4486-b55d-fa4b12f398b1', '2 500'),
(49, 3, 7, '//ws2.eu.kia.com/filehandler.ashx?guid=39bf8022-607b-49dc-bfaf-8490c664e614', '//ws2.eu.kia.com/filehandler.ashx?guid=7770e9b4-2e75-470e-8ee1-e1a03ab1d592', '2 500'),
(50, 56, 7, '//ws2.eu.kia.com/filehandler.ashx?guid=b0e957bd-79d6-4d54-8972-5d4c311201d3', '//ws2.eu.kia.com/filehandler.ashx?guid=0763be30-84cf-48e7-8cb8-88b8ed3b3b56', '2 500'),
(51, 56, 2, '//ws2.eu.kia.com/filehandler.ashx?guid=98e80a98-8cce-40d5-af19-3eb089bb928b', '//ws2.eu.kia.com/filehandler.ashx?guid=fb322266-2b43-4fdb-9095-e895d542f3e1', '2 500'),
(52, 56, 3, '//ws2.eu.kia.com/filehandler.ashx?guid=278710d4-a539-4b2b-bc62-5221cda402b3', '//ws2.eu.kia.com/filehandler.ashx?guid=8bfadc96-35d0-48e9-9d93-95afca0ec02e', '2 500'),
(53, 56, 4, '//ws2.eu.kia.com/filehandler.ashx?guid=affdffde-7b53-48c1-a560-9ff7f65fc04f', '//ws2.eu.kia.com/filehandler.ashx?guid=9a49dc77-a0c1-48d8-9bbd-48c52c29709a', '2 500'),
(54, 56, 5, '//ws2.eu.kia.com/filehandler.ashx?guid=b005b127-989f-42fb-9516-dc6685a0de91', '//ws2.eu.kia.com/filehandler.ashx?guid=f2761ebb-e0ba-4e5e-9d91-0fc56313b072', '2 500'),
(55, 56, 6, '//ws2.eu.kia.com/filehandler.ashx?guid=bd02e707-b6b7-42b6-adb1-017b84ddcac8', '//ws2.eu.kia.com/filehandler.ashx?guid=913699aa-e97d-4efa-b9e5-4480f0ceb9fa', '2 500'),
(56, 8, 27, '//ws2.eu.kia.com/filehandler.ashx?guid=dfcf74d1-f876-407c-9b80-1ff610e4ea8d', '//ws2.eu.kia.com/filehandler.ashx?guid=d60f68ab-89ac-4f86-84fb-a1968392af49', '0'),
(57, 2, 27, '//ws2.eu.kia.com/filehandler.ashx?guid=ceacc7e4-5860-4fb8-8d02-3f8119c83388', '//ws2.eu.kia.com/filehandler.ashx?guid=ed280695-a210-4af6-95cc-623986b6da6a', '2 500'),
(58, 4, 27, '//ws2.eu.kia.com/filehandler.ashx?guid=96e30011-5638-47e9-bf1b-f1458491cfc1', '//ws2.eu.kia.com/filehandler.ashx?guid=42744982-6c41-4f79-bb23-5e87f654ddfc', '2 500'),
(59, 5, 27, '//ws2.eu.kia.com/filehandler.ashx?guid=e6b957ae-2343-4712-a0c8-e07c25e154e1', '//ws2.eu.kia.com/filehandler.ashx?guid=376dda61-4261-4aba-9528-a38ca078ceda', '2 500'),
(60, 6, 27, '//ws2.eu.kia.com/filehandler.ashx?guid=1d6ebd22-19f6-451e-af7d-844baab850d9', '//ws2.eu.kia.com/filehandler.ashx?guid=83a0ac5f-c32d-4101-a187-7603cedee38d', '2 500'),
(61, 3, 27, '//ws2.eu.kia.com/filehandler.ashx?guid=5d5b2014-c0dd-4277-9b2d-5c598ad4c104', '//ws2.eu.kia.com/filehandler.ashx?guid=b1027723-03f6-413e-a748-2e175f63c6a6', '2 500'),
(62, 56, 27, '//ws2.eu.kia.com/filehandler.ashx?guid=019b0d9c-cd78-4d28-a476-3f05ed3e172e', '//ws2.eu.kia.com/filehandler.ashx?guid=d427527e-a5aa-4997-8a36-58b19b4d99f6', '2 500'),
(63, 7, 26, '//ws2.eu.kia.com/filehandler.ashx?guid=c1ab8986-c00c-41fe-bcae-10604effeeb7', '//ws2.eu.kia.com/filehandler.ashx?guid=09c4edef-1aa6-4712-b4a8-f539ccc3dd86', '0'),
(64, 2, 26, '//ws2.eu.kia.com/filehandler.ashx?guid=0ceaf616-bcb3-4b55-a683-43bbdbb18ca3', '//ws2.eu.kia.com/filehandler.ashx?guid=7e33c7d0-b030-4fca-986f-326b8c9c031a', '2 500'),
(65, 4, 26, '//ws2.eu.kia.com/filehandler.ashx?guid=0f99b4bb-d8bc-4229-aee1-e88e787ecdf5', '//ws2.eu.kia.com/filehandler.ashx?guid=2df81416-618f-42a7-b804-320820990419', '2 500'),
(66, 8, 26, '//ws2.eu.kia.com/filehandler.ashx?guid=1924bc35-ebea-48b1-979f-6fc194b5783d', '//ws2.eu.kia.com/filehandler.ashx?guid=f8fe3c98-1e3f-49f0-a748-167f937baabd', '2 500'),
(67, 5, 26, '//ws2.eu.kia.com/filehandler.ashx?guid=f9821507-716d-4bb5-b035-4ef15bc45a62', '//ws2.eu.kia.com/filehandler.ashx?guid=56bf2c04-7734-40a3-8a1e-35ba65c01e53', '2 500'),
(68, 1, 26, '//ws2.eu.kia.com/filehandler.ashx?guid=49a8f15d-2bf5-477d-8fa6-93aaa4c7c8ca', '//ws2.eu.kia.com/filehandler.ashx?guid=f27875b6-3456-4773-8cfe-de2b91b536b6', '2 500'),
(69, 6, 26, '//ws2.eu.kia.com/filehandler.ashx?guid=8971cc7f-6529-4422-94da-abd6b8b66cc0', '//ws2.eu.kia.com/filehandler.ashx?guid=d13d56cc-d3d0-4eef-8d6e-93a9d1a9d3bb', '2 500'),
(70, 3, 26, '//ws2.eu.kia.com/filehandler.ashx?guid=aa06bbff-10bb-43cb-b08c-ebed8b371fe8', '//ws2.eu.kia.com/filehandler.ashx?guid=5708c216-7331-4a8d-8391-c230000b8f38', '2 500'),
(71, 56, 26, '//ws2.eu.kia.com/filehandler.ashx?guid=4a098f9f-2be6-49b3-ae21-9358b363df7c', '//ws2.eu.kia.com/filehandler.ashx?guid=2f88621d-0217-4f12-b2c1-2b753c8f382c', '2 500');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `konfiguracja`
--

CREATE TABLE `konfiguracja` (
  `idKonfiguracja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `konfiguracja_has_samochod`
--

CREATE TABLE `konfiguracja_has_samochod` (
  `idKonfiguracjahasSamochod` int(11) NOT NULL,
  `konfiguracja_idKonfiguracja` int(11) NOT NULL,
  `samochod_idsamochod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `konfiguracja_has_zamowienia`
--

CREATE TABLE `konfiguracja_has_zamowienia` (
  `idKonfiguracjahasZamowienia` int(11) NOT NULL,
  `konfiguracja_idKonfiguracja` int(11) NOT NULL,
  `zamowienia_idzamowienia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `koszyk`
--

CREATE TABLE `koszyk` (
  `idKoszyk` int(11) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `koszyk_has_konfiguracja`
--

CREATE TABLE `koszyk_has_konfiguracja` (
  `idKoszykhasKonfiguracja` int(11) NOT NULL,
  `koszyk_idKoszyk` int(11) NOT NULL,
  `konfiguracja_idKonfiguracja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_08_103424_create_admins_table', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opcje`
--

CREATE TABLE `opcje` (
  `idOpcje` int(11) NOT NULL,
  `nazwaOpcje` longtext DEFAULT NULL,
  `cenaOpcje` int(11) DEFAULT NULL,
  `Zdjecie` longtext NOT NULL,
  `opisOpcje` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `opcje`
--

INSERT INTO `opcje` (`idOpcje`, `nazwaOpcje`, `cenaOpcje`, `Zdjecie`, `opisOpcje`) VALUES
(1, 'Czujniki parkowania z tyłu', 1000, 'https://ws2.eu.kia.com/defaultasset/element_preview/C4.jpg', ''),
(2, 'Tylne czujniki parkowania', 1000, 'https://ws2.eu.kia.com/defaultasset/element_preview/C4.jpg', ''),
(3, 'Bluetooth z zestawem głośnomówiącym do telefo', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C7.jpg', ''),
(4, 'Kierownica wielofunkcyjna, port USB', 0, '', ''),
(5, 'Klimatyzacja manualna', 0, '', ''),
(6, 'zestaw zegarów z regulacją podświetlenia oraz wyświetlaczem TFT 4,2” dla komputera pokładowego', 0, '', ''),
(7, 'Radioodtwarzacz MP3 z RDS, tuner radia cyfrow', 0, '', ''),
(8, 'Kia Forward Collision Avoidance Assist - syst', 0, '', ''),
(9, 'Instalacja LPG', 4800, '', ''),
(10, 'Kia Cruise Control – tempomat z ogranicznikie', 0, '', ''),
(11, 'Kia Forward Collision Avoidance Assist (FCA) ', 0, '', ''),
(12, 'Kia Lane Keeping Assist – asystent utrzymania pasa ruchu, Kia Lane Following Assist – asystent jazdy w ruchu utrzymujący samochód w środku pasa', 1000, '', ''),
(13, 'Kia Navi System - system multimedialny z nawigacją satelitarną z obsługą w języku polskim, 8” ekran dotykowy, interfejs Android Auto oraz Apple CarPlay, 6 głośników (w tym 2 tweetery), 7 letni plan darmowej aktualizacji map, usługi TomTom', NULL, '', ''),
(14, 'Kia Blind Spot Collision Warning - system monitorowania martwego pola w lusterkach, Kia Rear Cross Traffic Alert - system monitorowania ruchu pojazdów podczas cofania', 0, '', ''),
(15, 'Kia UVO Connect – zestaw usług cyfrowych z darmowym 7 letnim planem obsługi', 0, '', ''),
(16, 'Kia Rear Cross Traffic Collision Avoidance Assist – system automatycznie hamujący w przypadku braku reakcji kierowcy na możliwość wystąpienia kolizji z nadjeżdżającym pojazdem podczas cofania', 0, '', ''),
(17, 'Kia Blind Spot Collision Avoidance Assist – system automatycznie zmieniający tor jazdy w przypadku braku reakcji kierowcy na możliwość wystąpienia kolizji podczas zmiany pasa ruchu', 0, '', ''),
(18, 'Forward Collision Avoidance Assist - system automatycznego hamowania wykrywający samochód, rowerzystę i pieszego, Lane Keeping Assist - asystent utrzymania pasa ruchu', 0, '', ''),
(19, 'Pakiet zimowy: podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją', 0, '', ''),
(20, 'High Beam Assist - funkcja automatycznego przełączania świateł mijania na drogowe i odwrotnie, Driver Attention Warning - system ostrzegania o zmęczeniu kierowcy, Lane Following Assist - asystent jazdy w ruchu utrzymujący samochód pośrodku pasa', 0, '', ''),
(21, 'Koło kierownicy, drążek zmiany biegów obszyte skórą', 0, '', ''),
(22, '7 letni plan darmowej aktualizacji map, usługi TomTom, tuner radia cyfrowego DAB, antena dachowa typu „płetwa rekina”, Kia Uvo Connect – zestaw usług cyfrowych z darmowym 7 letnim planem obsługi', 0, '', ''),
(23, 'Rear Cross Traffic Collision Avoidance Assist – system automatycznie hamujący podczas cofania w przypadku ryzyka kolizji z nadjeżdżającym pojazdem', 0, '', ''),
(24, 'Smart Cruise Control – tempomat aktywny bez funkcji Stop & Go', 0, '', ''),
(25, 'Okno dachowe otwierane elektrycznie', 2000, '', ''),
(26, 'Intelligent Speed Limit Warning – system rozpoznawania znaków ograniczeń prędkości', 0, '', ''),
(27, 'Kia Navi System', 4000, '', ''),
(28, 'Światła mijania oraz drogowe wykonane w technologii LED, kierunkowskazy LED', 0, '', ''),
(29, 'Elektryczna regulacja podparcia lędźwiowego foteli przednich, manualna regulacja wysokość siedziska fotela pasażera', 0, '', ''),
(30, 'Szklany dach', 3500, '', ''),
(31, 'Kia Smart Cruise Control (SCC) - aktywny tempomat z automatyczną regulacją odległości oraz funkcją Stop & Go Kia Lane Following Assist (LFA) – asystent jazdy w korku', 0, '', ''),
(32, 'Szklany dach, sterowany elektrycznie, elektrycznie regulowana roleta, oświetlenie wnętrza LED', 3500, '', ''),
(33, 'Pakiet bezpieczeństwa dla wersji DCT', 4000, '', ''),
(34, 'Pakiet Technologiczny', 6000, '', ''),
(35, 'Czujniki parkowania z tyłu', 1000, '', ''),
(36, 'Kia Navi System', 4000, '', ''),
(37, 'Przyciemniane szyby tylne', 0, '', ''),
(38, 'Światła mijania oraz drogowe wykonane w technologii LED, kierunkowskazy LED', 0, '', ''),
(39, 'Pakiet Premium', 4000, '', ''),
(40, 'Pakiet Premium', 6000, '', ''),
(41, 'Pakiet bezpieczeństwa dla wersji MT', 3000, '', ''),
(42, 'Indukcyjna ładowarka do telefonu', 0, '', ''),
(43, 'System nagłośnienia JBL', 0, '', ''),
(44, 'Kia Speed Limit Warning (SLW) – system rozpoznający znaki ograniczeń prędkości', 0, '', ''),
(45, '10.25” kolorowy ekran dotykowy LCD, tuner radia cyfrowego DAB+', 0, '', ''),
(46, 'Kia Supervision Cluster – cyfrowe zegary z kolorowym ekranem o przekątnej 12.3', 0, '', ''),
(47, 'Pakiet bezpieczeństwa dla 7DCT', 4000, '', ''),
(48, 'Pakiet Premium dla wersji GT', 3500, '', ''),
(49, 'Elektrochromatyczne lusterko wewnętrzne', 0, '', ''),
(50, 'Automatyczne wycieraczki z czujnikiem deszczu', 0, '', ''),
(51, 'Klimatyzacja automatyczna', 0, '', ''),
(52, 'Fotele przednie wentylowane', 0, '', ''),
(53, 'Pakiet bezpieczeństwa', 4000, '', 'Pakiet bezpieczeństwa\r\n\r\n-Kia Blind Spot Collision Warning (BCW) - system monitorowania martwego pola w lusterkach\r\n-Kia Rear Cross Traffic Collision Warning (RTCW) - system monitorowania ruchu pojazdów podczas cofania\r\n-Kia Forward Collision Avoidance Assist (FCA) - system autonomicznego hamowania z dodatkową funkcją wykrywania rowerzystów\r\n-Kia Smart Cruise Control (SCC) - aktywny tempomat z automatyczną regulacją odległości oraz funkcją Stop & Go\r\n-Kia Lane Following Assist (LFA) – asystent jazdy w korku'),
(54, 'Kierownica wykończona skórą', 0, '', ''),
(55, 'Kamera cofania z dynamicznymi liniami ułatwiającymi parkowanie', 0, '', ''),
(56, 'Relingi dachowe', 0, '', ''),
(57, 'Podwójna podłoga bagażnika', 0, '', ''),
(58, 'Zestaw zegarów \"Supervision” z regulacją podświetlenia oraz 4,2” wyświetlaczem TFT komputera pokładowego', 0, '', ''),
(59, 'Forward Collision Avoidance Assist - system automatycznego hamowania wykrywający samochód, rowerzystę i pieszego, High Beam Assist - funkcja automatycznego przełączania świateł mijania na drogowe i odwrotnie', 0, '', 'Driver Attention Warning - system ostrzegania o zmęczeniu kierowcy, Lane Following Assist - asystent jazdy w ruchu utrzymujący samochód pośrodku pasa, Cruise Control - tempomat z ogranicznikiem prędkości'),
(60, 'Kia Navi System', 3000, '', 'System multimedialny z nawigacją satelitarną z obsługą w języku polskim\r\n- 7 letni plan darmowej aktualizacji map\r\n- usługi TomTom\r\n- antena dachowa typu „płetwa rekina”\r\n- Kia Uvo Connect – zestaw usług cyfrowych z darmowym 7 letnim planem obsługi'),
(61, 'Blind Spot Detection - system monitorowania martwego pola w lusterkach, Rear Cross Traffic Alert - system monitorowania ruchu pojazdów podczas cofania', 0, '', ''),
(62, 'Przednie czujniki parkowania', 0, '', ''),
(63, 'Pakiet Bezpieczeństwa', 0, '', 'Pakiet Bezpieczeństwa:\r\nKia Forward Collision Avoidance Assist (FCA) - system autonomicznego hamowania z funkcją wykrywania pieszych\r\nKia Lane Following Assist (LFA) - asystent jazdy w korku\r\nKia Smart Cruise Control (SCC) - aktywny tempomat z automatyczną regulacją odległości oraz funkcją Stop & Go'),
(64, 'Kia Rear Cross Traffic Alert - system monitorowania ruchu pojazdów podczas cofania', 0, '', ''),
(65, 'Okno dachowe', 2500, '', 'Okno dachowe, sterowane elektrycznie, oświetlenie wnętrza LED'),
(66, 'Pakiet technologiczny', 2000, '', '- Kia Blind Spot Detection - system monitorowania martwego pola w lusterkach,\r\n- Kia Rear Cross Traffic Alert - system monitorowania ruchu pojazdów podczas cofania'),
(67, 'Ładowarka pokładowa o mocy 11 kW (standard dla wersji z baterią 64 kWh)', 2000, 'https://ws2.eu.kia.com/defaultasset/element_preview/C1.jpg', ''),
(68, 'Lampka centralna do czytania dla pasażerów tylnej kanapy', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C3.jpg', ''),
(69, 'Pakiet Smart', 6000, 'https://ws2.eu.kia.com/defaultasset/element_preview/C7.jpg', 'Kia Navi System - system nawigacji satelitarnej z obsługą w języku polskim, zintegrowany z usługami TomTom, interfejsem Android Auto oraz Apple CarPlay, 7-letnim planem darmowej aktualizacji map, 10.25\" kolorowym ekranem dotykowym, radioodtwarzacz MP3 z RDS, port USB, 6 głośników, bluetooth z możliwością podłączenia dwóch urządzeń, kamera cofania oraz antena dachowa typu \"płetwa rekina”, tuner radia cyfrowego DAB\r\nKia UVO Connect – zestaw usług cyfrowych zapewniających wsparcie kierowcy w czasie rzeczywistym oraz zdalny dostęp do informacji o Twoim samochodzie'),
(70, 'Pompa ciepła', 4500, 'https://ws2.eu.kia.com/defaultasset/element_preview/C4.jpg', ''),
(71, 'Fotel kierowcy elektrycznie regulowany w 8 kierunkach z 2-kierunkową regulacją odcinka lędźwiowego', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C5.jpg', ''),
(72, 'Możliwość pionowego obciążenia haka do 100 kg (dostępne dla wersji 64 kWh)', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C1.jpg', ''),
(73, 'Pakiet Zimowy', 1000, 'https://ws2.eu.kia.com/defaultasset/element_preview/C3.jpg', 'Pakiet Zimowy: podgrzewana kierownica oraz fotele przednie'),
(74, 'Ładowarkapokładowa o mocy 11 kW dla wersji 39.2 kWh', 2000, 'https://ws2.eu.kia.com/defaultasset/element_preview/C1.jpg', ''),
(75, 'Pompa ciepła dla wersji M', 4500, 'https://ws2.eu.kia.com/defaultasset/element_preview/C4.jpg', ''),
(76, 'Kia Navi System z usługami UVO Connect', 4000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=8b66ca61-2582-4c61-95ae-fa03cc3d7225', 'System nawigacji satelitarnej z obsługą w języku polskim, zintegrowany z usługami TomTom, interfejsem Android Auto oraz Apple CarPlay, 7-letni plan darmowej aktualizacji map, 10.25\" kolorowy ekran dotykowy, radioodtwarzacz MP3 z RDS, port USB, bluetooth z możliwością podłączenia dwóch urządzeń, kamera cofania oraz antena dachowa typu \"płetwa rekina”, tuner radia cyfrowego DAB, Kia UVO Connect – zestaw usług cyfrowych zapewniających wsparcie kierowcy w czasie rzeczywistym oraz zdalny dostęp do informacji o Twoim samochodzie'),
(77, 'Kameralne podświetlenie wnętrza', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=3364cf7a-803f-4563-b546-321421b113ae', ''),
(78, 'Wyświetlacz przezierny „head up display”', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=4684ebb8-b633-4b4e-bf4b-7dfd3165f841', ''),
(79, 'Czujniki parkowania tyłem - akcesoryjne', 1000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=6ecd56d5-2029-4d92-afd0-74f645823e7f', ''),
(80, 'Pakiet Bezpieczeństwa', 5000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=7fc4a9ca-46c2-450f-8412-597f00c6d56e', 'Pakiet Bezpieczeństwa:\r\n- Kia Forward Collision Avoidance Assist (FCA) - system autonomicznego hamowania z 3 trybami pracy: miejskimi pozamiejskim, wykrywanie pieszych,\r\n- Kia Blind Spot Collision Warning (BCW) - system monitorowania martwego pola w lusterkach,\r\n- Kia Rear Cross Traffic Collision Warning (RTCW) - system monitorowania ruchu pojazdów podczas cofania'),
(81, 'Panoramiczny szklany dach', 4500, 'https://ws2.eu.kia.com/defaultasset/element_preview/C2.jpg', 'Panoramiczny szklany dach, sterowany elektrycznie, lampki do czytania dla pasażerów LED, elektrycznie regulowana roleta (niedostępny dla silnika 1.6 GDI)'),
(82, 'Pakiet Funkcjonalny', 3500, 'https://ws2.eu.kia.com/filehandler.ashx?guid=590b2447-bc01-4128-94fa-5304ed1d82fd', 'Pakiet Funkcjonalny:\r\n- Podgrzewana kierownica, podgrzewane fotele przednie z 3-stopniową regulacją, podgrzewana tylna kanapa,\r\n- Kia Smart Tailgate - funkcja automatycznego otwierania i zamykania pokrywy bagażnika'),
(83, 'Pakiet technologiczny', 5000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=a1761348-13e6-4c9e-b435-15db08b94a27', 'Pakiet Technologiczny:\r\n- Kia Round View Camera - system monitorowania otoczenia pojazdu z kamerą 360 stoni,\r\n- Kia Smart Cruise Control (SCC) aktywny tempomat z automatyczną regulacją odległości oraz funkcją Stop & Go,\r\n- Bezprzewodowa, indukcyjna ładowarka do telefonu\r\n(pakiet dostępny dla skrzyni biegów 7DCT)'),
(84, 'Klamki zewnętrzne lakierowane w kolorze nadwozia', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C2.jpg', ''),
(85, 'Pakiet Premium', 5500, 'https://ws2.eu.kia.com/filehandler.ashx?guid=e72be6d9-a6a7-4d88-bbc9-f795c48c4464', '- Zestaw audio firmy \"JBL\" z 8 głośnikami wraz z zewnętrznym wzmacniaczem i subwooferem\r\n- Elektryczna regulacja foteli przednich w 8 kierunkach, regulacja wysokości fotela pasażera\r\n- Wentylowane fotele przednie z 3-stopniową regulacją'),
(86, 'Kia Smart Taligate - funkcja automatycznego otwierania i zamykania pokrywy bagażnika', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C2.jpg', ''),
(87, 'Panoramiczny szklany dach', 5000, 'https://ws2.eu.kia.com/defaultasset/element_preview/C2.jpg', 'Panoramiczny szklany dach sterowany elektrycznie z elektrycznie regulowaną roletą, oświetlenie wnętrza LED'),
(88, 'Kia Remote Smart Parking Assist - system zdalnego parkowania obsługiwany przy pomocy pilota', 1000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=f5adeb4c-2e65-4bf4-9e8c-84b4e506e757', ''),
(89, 'Panoramiczny szklany dach, sterowany elektrycznie z elektrycznie regulowaną roletą', 4000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=d308ad73-87b9-438a-9018-469c8b9fd9cd', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opcje_has_wersja`
--

CREATE TABLE `opcje_has_wersja` (
  `idOpcjehasWersja` int(11) NOT NULL,
  `opcje_idOpcje` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `opcje_has_wersja`
--

INSERT INTO `opcje_has_wersja` (`idOpcjehasWersja`, `opcje_idOpcje`, `wersja_idWersja`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pakiety`
--

CREATE TABLE `pakiety` (
  `idpakiety` int(11) NOT NULL,
  `nazwaPakiety` varchar(45) DEFAULT NULL,
  `cenaPakiety` int(11) DEFAULT NULL,
  `opisPakiety` varchar(255) DEFAULT NULL,
  `Zdjecie` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pakiety`
--

INSERT INTO `pakiety` (`idpakiety`, `nazwaPakiety`, `cenaPakiety`, `opisPakiety`, `Zdjecie`) VALUES
(1, 'Dopłata do autoalarmu akcesoryjnego', 1000, 'Dopłata do autoalarmu akcesoryjnego z funkcjami: czujnik ruchu, dwuobwodowy, własne zasilanie', 'https://lh3.googleusercontent.com/0untqmBnB50RftqP-P9m-VPRHxYH2izth9JoPD8vYVDD7MVDhkvEdL_0iWupCRwpKZy_kgzK2U0OCHNRaRDowJG6dm4LmwS4rlOYdZ2SB6WajOlnR83A1R4bMtsQmVx2NIOusE06oxI389_qcuq-rnTN3bclTPf8fMkSctWygqoRuKm0tNFigcEdB0zojNZqlIhTpt17N_mQ-u6go86i0YjTp1_5RK1Z6r05MgEXVMUzLaDLPzFya8nMFHS9LJJs8vToic3W6OqY88juyTMChF8eHx5xZNelOkpxFMmK46h8y0YHx2mKJ1UCrNl6D__-fGMv91c1_XuqcdYD4j15iUqJQYJJu4xG26oH40uIp2hB76H1U8PAGwxfGEv5WxxewGf2NBQlKeZmk7Uc5VHnjVT3d6mpZMGY44sHiwi4uDIn2CmW5vUJkG7IM5zSsl5HaacTPx2tPxeBLGVX7P91tTvSL7Kh9UccjddxoE-xKYl5_hUtg4Vcr4shTiNaXl7cAC9I2oY5PsfAGZrAhb0qhPMPS04xXywEwOVkVREeUL2HF9NOAneiKwlJyQe9Dh3X4p4sD7gEzK7rOS7ng7m6iyK5QFgqznW5edUPeedIONzS34kuB_rR_02fgzeUS6hBhyA8FpFEteE3Hp1NERT8czrvSIjjAV7Uxgvxvdu5DwhefWCYf4tzYjbELyd0SYA1fxFsBB_OMA2Ic-FHnFs39IA=w162-h92-no?authuser=0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pakiety_has_wersja`
--

CREATE TABLE `pakiety_has_wersja` (
  `idPakietyhasWersja` int(11) NOT NULL,
  `pakiety_idpakiety` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pakiety_has_wersja`
--

INSERT INTO `pakiety_has_wersja` (`idPakietyhasWersja`, `pakiety_idpakiety`, `wersja_idWersja`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('filiprzepiela@o2.pl', '$2y$10$ZXKsQHofnHAwJqqQcC1viu60J7yd9meqJLKYEvHIjpwGWICCM13e2', '2021-05-16 14:34:56'),
('filiprzepiela@interia.pl', '$2y$10$xFgt2MMfdzItEIMWTn96dO3QnVDFX85p1hbukOmKmEE/bbcUm/8BO', '2021-05-17 15:33:28'),
('pjoter99@pjoter.pl', '$2y$10$XiVsZflbKsK9xQA0yNoXZeJtagdb.qaAGyTIV/ZYda5UQ1WnkcjrG', '2021-06-05 22:11:14');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `podstwyp`
--

CREATE TABLE `podstwyp` (
  `idpodstWyp` int(11) NOT NULL,
  `samochod_idsamochod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `podstwyp_has_wersja`
--

CREATE TABLE `podstwyp_has_wersja` (
  `idPodstWyphasWersja` int(11) NOT NULL,
  `podstWyp_idpodstWyp` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochod`
--

CREATE TABLE `samochod` (
  `idsamochod` int(11) NOT NULL,
  `modelSamochod` varchar(45) DEFAULT NULL,
  `podst_wypSamochod` longtext NOT NULL,
  `Cena` varchar(255) NOT NULL,
  `Zdjecie` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `samochod`
--

INSERT INTO `samochod` (`idsamochod`, `modelSamochod`, `podst_wypSamochod`, `Cena`, `Zdjecie`) VALUES
(1, 'Picanto', '', '39 990', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-picanto-jape-my21-gtl-explore-the-range-268x134.png'),
(2, 'Rio', '', '51 990', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-rio-yb-pe-my21-range-explore-268x134.png'),
(3, 'Ceed', '-Tempomat z ogranicznikiem prędkości\r\n-System autonomicznego hamowania (FCA)\r\n-Asystent utrzymania pasa ruchu (LKA)\r\n-Klimatyzacja manualna\r\n-Elektryczne sterowanie szyb przednich i tylnych', '67 990', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-ceed-cd-5dr_268x134.png'),
(4, 'Ceed GT', '', '111 990', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-ceed-cd-gt-explore_268x134.png'),
(5, 'Ceed Kombi', '', '71 990', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-ceed-wgn-explore_268x134.png'),
(6, 'Ceed Kombi PHEV', '', '127 990', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-cd-wgn-phev-my20-explore-268x134.png'),
(7, 'ProCeed', '', '99 990', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-proceed-cd-sb-my19-explore_268x134.png'),
(8, 'XCeed', '', '81 990', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-xceed-cd-sb-my20-explore_268x134.png'),
(9, 'XCeed PHEV', '', '129 990', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-cd-xceecd-phev-my20-explore-268x134.png'),
(10, 'Stonic', '', '63 490', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-stonic-yb-cuv-pe-my21-range-explore-268x134.png'),
(11, 'Niro HEV', '', '97 990', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-niro-de-pe-hev-my20-explore_268x134.png'),
(12, 'Niro PHEV', '', '130 900', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-niro-de-pe-phev-my20-explore_268x134.png'),
(13, 'e-Niro', '', '146 990', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-niro-de-ev-my20-explore_268x134.png'),
(14, 'e-Soul', '', '139 990', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-e-soul-my19-explore-268x134.png'),
(15, 'Sportage', '', '81 990', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia_sportage_ql_pe_gtline_my19_explore_268x134.jpg'),
(16, 'Sorento HEV', '', '159 900', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-sorento-mq4-hev-my21-268x134.png'),
(17, 'Nowe Sorento PHEV', '', '195 900', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-sorento-mq4-phev-my21-range-explore_268x134.png'),
(18, 'Sorento', '', '189 900', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-sorento-mq4-ice-my21-268x134.png'),
(19, 'Stinger', '', '239 990', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-stinger-pe-my21-gt-explore-268x134.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochod_has_wersja`
--

CREATE TABLE `samochod_has_wersja` (
  `idSamochodhasWersja` int(11) NOT NULL,
  `samochod_idsamochod` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `samochod_has_wersja`
--

INSERT INTO `samochod_has_wersja` (`idSamochodhasWersja`, `samochod_idsamochod`, `wersja_idWersja`) VALUES
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(1, 3, 1),
(2, 3, 2),
(3, 3, 3),
(4, 3, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(17, 5, 17),
(18, 5, 18),
(19, 5, 19),
(20, 5, 20),
(21, 5, 21),
(22, 5, 22),
(23, 6, 23),
(24, 6, 24),
(25, 6, 25),
(26, 7, 26),
(27, 7, 27),
(28, 8, 28),
(29, 8, 29),
(30, 8, 30),
(31, 8, 31),
(32, 9, 32),
(33, 9, 33),
(34, 9, 34),
(35, 10, 35),
(36, 10, 36),
(37, 10, 37),
(38, 10, 38),
(39, 11, 39),
(40, 11, 40),
(41, 11, 41),
(42, 11, 42),
(43, 12, 43),
(44, 12, 44),
(45, 12, 45),
(46, 12, 60),
(47, 13, 47),
(48, 13, 48),
(49, 13, 49),
(50, 14, 50),
(51, 14, 51),
(52, 14, 52),
(53, 15, 53),
(54, 15, 54),
(55, 15, 55),
(56, 15, 56),
(57, 15, 57),
(58, 15, 58),
(59, 16, 59),
(60, 16, 60),
(61, 16, 61),
(62, 16, 62),
(63, 17, 63),
(64, 17, 64),
(65, 17, 65),
(66, 17, 66),
(67, 18, 67),
(68, 18, 68),
(69, 18, 69),
(70, 18, 70),
(71, 19, 71),
(72, 19, 72);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `silnik`
--

CREATE TABLE `silnik` (
  `idSilnik` int(11) NOT NULL,
  `numerSilnik` varchar(11) DEFAULT NULL,
  `nazwaSilnik` varchar(45) DEFAULT NULL,
  `mocSilnik` varchar(45) DEFAULT NULL,
  `cenaSilnik` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `silnik`
--

INSERT INTO `silnik` (`idSilnik`, `numerSilnik`, `nazwaSilnik`, `mocSilnik`, `cenaSilnik`) VALUES
(1, '1,0', '1.0 T-GDi 100 KM 6MT', '100 KM', '67 990'),
(2, '1,0', '1.0 T-GDi 120 KM 6MT', '120 KM', '69 990'),
(3, '1.5', '1.5 T-GDI 160KM 6MT', '160 KM', '75 490'),
(4, '1.6', '1.6 CRDi SCR MHEV 136 KM 6iMT', '136 KM', '82 990'),
(5, '1.0', '1.0 T-GDi 100 KM 6MT', '100 KM', '75 490'),
(6, '1.0', '1.0 T-GDi 120 KM 6MT', '120 KM', '77 490'),
(7, '1.5', '1.5 T-GDI 160KM 6MT', '160 KM', '82 990'),
(8, '1.5', '1.5 T-GDI 160KM 7DCT', '160 KM', '88 990'),
(9, '1.6', '1.6 CRDi SCR MHEV 136 KM 6iMT', '136 KM', '90 490'),
(10, '1.5', '1.5 T-GDI MHEV 160KM 7DCT', '160 KM', '92 990'),
(11, '1.6', '1.6 CRDi SCR MHEV 136 KM 7DCT', '136 KM', '96 490'),
(12, '1.0', '1.0 T-GDi 100 KM 6MT', '100 KM', '81 990'),
(13, '1.0', '1.0 T-GDi 120 KM 6MT', '120 KM', '83 990'),
(14, '1.5', '1.5 T-GDI 160KM 6MT', '160 KM', '89 490'),
(15, '1.5', '1.5 T-GDI 160KM 7DCT', '160 KM', '95 490'),
(16, '1.6', '1.6 CRDi SCR MHEV 136 KM 6iMT', '136 KM', '95 990'),
(17, '1.5', '1.5 T-GDI MHEV 160KM 7DCT', '160 KM', '99 490'),
(18, '1.6', '1.6 CRDi SCR MHEV 136 KM 7DCT', '136 KM', '101 990'),
(19, '1.0', '1.0 T-GDi 100 KM 6MT', '100 KM', '87 990'),
(20, '1.0', '1.0 T-GDi 120 KM 6MT', '120 KM', '89 900'),
(21, '1.5', '1.5 T-GDI 160KM 6MT', '160 KM', '95 490'),
(22, '1.5', '1.5 T-GDI 160KM 7DCT', '160 KM', '101 490'),
(23, '1.6', '1.6 CRDi SCR MHEV 136 KM 6iMT', '136 KM', '101 990'),
(24, '1.5', '1.5 T-GDI MHEV 160KM 7DCT', '160 KM', '105 490'),
(25, '1.6', '1.6 CRDi SCR MHEV 136 KM 7DCT', '136 KM', '107 990'),
(26, '1.0', '1.0 T-GDi 120 KM 6MT', '120 KM', '99 490'),
(27, '1.5', '1.5 T-GDI 160KM 6MT', '160 KM', '104 990'),
(28, '1.5', '1.5 T-GDI 160KM 7DCT', '160 KM', '110 990'),
(29, '1.6', '1.6 CRDi SCR MHEV 136 KM 6iMT', '136 KM', '111 490'),
(30, '1.5', '1.5 T-GDI MHEV 160KM 7DCT', '160 KM', '114 990'),
(31, '1.6', '1.6 CRDi SCR MHEV 136 KM 7DCT', '136 KM', '117 490'),
(32, '1.0', '1.0 T-GDi 100 KM 6MT', '100 KM', '93 990'),
(33, '1.0', '1.0 T-GDi 120 KM 6MT', '120 KM', '95 990'),
(34, '1.5', '1.5 T-GDI 160KM 6MT', '160 KM', '101 490'),
(35, '1.5', '1.5 T-GDI 160KM 7DCT', '160 KM', '107 490'),
(36, '1.6', '1.6 CRDi SCR MHEV 136 KM 6iMT', '136 KM', '107 990'),
(37, '1.5', '1.5 T-GDI MHEV 160KM 7DCT', '160 KM', '111 490'),
(38, '1.6', '1.6 CRDi SCR MHEV 136 KM 7DCT', '136 KM', '113 990'),
(39, '1.0', '1.0 DPI 5MT 67KM', '67 KM', '39 990'),
(40, '1.2', '1.2 DPi 5MT 84 KM', '84 KM', '42 990'),
(41, '1.2', '1.2 DPi 5AMT 84KM', '84KM', '49 490'),
(42, '1.0', '1.0 DPI 5MT 67KM', '67KM', '50 490'),
(43, '1.2', '1.2 DPi 5MT 84 KM', '84 KM', '53 490'),
(44, '1.2', '1.2 DPi 5AMT 84KM', '84KM', '56 990'),
(45, '1.0', '1.0 DPI 5MT 67KM', '67KM', '56 490'),
(46, '1.2', '1.2 DPi 5MT 84 KM', '84 KM', '59 490'),
(47, '1.2', '1.2 DPi 5MT 84 KM', '84 KM', '62 490'),
(48, '1.2', '1.2 DPi 5AMT 84KM', '84 KM', '65 990'),
(49, '1.0', '1.0 DPI GPL', NULL, '0'),
(50, '1.2', '1.2 DPi 5MT 84 KM', '84 KM', '62 490'),
(51, '1.2', '1.2 DPi 5AMT 84KM', '84KM', '65 900'),
(52, NULL, '1.2 DPi 5MT 84 KM', NULL, '51 900'),
(53, NULL, '1.0 T-GDi 100 KM 6MT', NULL, '55 990'),
(54, NULL, '1.0 T-GDi EcoDynamics+ 120KM 48V iMT', NULL, '59 990'),
(55, NULL, '1.0 T-GDi 100KM 7DCT', NULL, '61 990'),
(56, NULL, '1.2 DPi 5MT 84 KM', NULL, '61 490'),
(57, NULL, '1.0 T-GDi 100 KM 6MT', NULL, '65 490'),
(58, NULL, '1.0 T-GDi EcoDynamics+ 120KM 48V iMT', NULL, '69 490'),
(59, NULL, '1.0 T-GDi 100KM 7DCT', NULL, '71 490'),
(60, NULL, '1.0 T-GDi EcoDynamics+ 120KM 48V 7DCT', NULL, '75 490'),
(61, NULL, '1.2 DPi 5MT 84 KM', NULL, '66 490'),
(62, NULL, '1.0 T-GDi 100 KM 6MT', NULL, '70 490'),
(63, NULL, '1.0 T-GDi EcoDynamics+ 120KM 48V iMT', NULL, '74 490'),
(64, NULL, '1.0 T-GDi 100KM 7DCT', NULL, '76490'),
(65, NULL, '1.0 T-GDi EcoDynamics+ 120KM 48V 7DCT', NULL, '80 490'),
(66, NULL, '1.2 DPi 5MT 84 KM', NULL, '72 990'),
(67, NULL, '1.0 T-GDi 100 KM 6MT', NULL, '77 990'),
(68, NULL, '1.0 T-GDi EcoDynamics+ 120KM 48V iMT', NULL, '80 990'),
(69, NULL, '1.0 T-GDi 100KM 7DCT', NULL, '83 990'),
(70, NULL, '1.0 T-GDi EcoDynamics+ 120KM 48V 7DCT', NULL, '86 990'),
(71, NULL, '1.6 T-GDi 204 KM 7DCT', NULL, '111 990'),
(72, NULL, '1.0 T-GDi 100 KM 6MT', NULL, '71 990'),
(73, NULL, '1.0 T-GDi 120 KM 6MT', NULL, '73 990'),
(74, NULL, '1.5 T-GDI 160KM 6MT', NULL, '79 490'),
(75, NULL, '1.6 CRDi SCR MHEV 136 KM 6iMT', NULL, '86 990'),
(76, NULL, '1.0 T-GDi 100 KM 6MT', NULL, '79 490'),
(77, NULL, '1.0 T-GDi 120 KM 6MT', NULL, '86 990'),
(78, NULL, '1.5 T-GDI 160KM 6MT', NULL, '79 490'),
(79, NULL, '1.5 T-GDI 160KM 7DCT', NULL, '81 490'),
(80, NULL, '1.6 CRDi SCR MHEV 136 KM 6iMT', NULL, '86 990'),
(81, NULL, '1.5 T-GDI MHEV 160KM 7DCT', NULL, '92 990'),
(82, NULL, '1.6 CRDi SCR MHEV 136 KM 6iMT', NULL, '94 490'),
(83, NULL, '1.5 T-GDI MHEV 160KM 7DCT', NULL, '96 990'),
(84, NULL, '1.6 CRDi SCR MHEV 136 KM 7DCT', NULL, '100 490'),
(85, NULL, '1.0 T-GDi 100 KM 6MT', NULL, '86 990'),
(86, NULL, '1.0 T-GDi 120 KM 6MT', NULL, '88 990'),
(87, NULL, '1.0 T-GDi 120 KM 6MT', NULL, '94 490'),
(88, NULL, '1.5 T-GDI 160KM 7DCT', NULL, '100 490'),
(89, NULL, '1.6 CRDi SCR MHEV 136 KM 6iMT', NULL, '100 990'),
(90, NULL, '1.6 CRDi SCR MHEV 136 KM 6iMT', NULL, '106 990'),
(91, NULL, '1.6 CRDi SCR MHEV 136 KM 7DCT', NULL, '104 490'),
(92, NULL, '1.0 T-GDi 120 KM 6MT', NULL, '109 990'),
(93, NULL, '1.5 T-GDI 160KM 6MT', NULL, '115 990'),
(94, NULL, '1.5 T-GDI 160KM 7DCT', NULL, '116 490'),
(95, NULL, '1.6 CRDi SCR MHEV 136 KM 6iMT', NULL, '119 990'),
(96, NULL, '1.5 T-GDI MHEV 160KM 7DCT', NULL, '122 490'),
(97, NULL, '1.0 T-GDi 100 KM 6MT', NULL, '92 990'),
(98, NULL, '1.0 T-GDi 120 KM 6MT', NULL, '94 990'),
(99, NULL, '1.0 T-GDi 120 KM 6MT', NULL, '100 409'),
(100, NULL, '1.5 T-GDI 160KM 7DCT', NULL, '106 490'),
(101, NULL, '1.6 CRDi SCR MHEV 136 KM 6iMT', NULL, '106 990'),
(102, NULL, '1.5 T-GDI MHEV 160KM 7DCT', NULL, '110 490'),
(103, NULL, '1.6 CRDi SCR MHEV 136 KM 7DCT', NULL, '112 490'),
(104, NULL, '1.0 T-GDi 100 KM 6MT', NULL, '98 990'),
(105, NULL, '1.0 T-GDi 120 KM 6MT', NULL, '100 990'),
(106, NULL, '1.5 T-GDI 160KM 6MT', NULL, '106 490'),
(107, NULL, '1.5 T-GDI 160KM 7DCT', NULL, '112 490'),
(108, NULL, '1.6 CRDi SCR MHEV 136 KM 6iMT', NULL, '112 990'),
(109, NULL, '1.5 T-GDI MHEV 160KM 7DCT', NULL, '116 490'),
(110, NULL, '1.6 CRDi SCR MHEV 136 KM 7DCT', NULL, '118 990'),
(111, NULL, '1.6 GDi plug-in hybrid 6DCT 141 KM', NULL, '127 990'),
(112, NULL, '1.6 GDi plug-in hybrid 6DCT 141 KM', NULL, '136 990'),
(113, NULL, '1.6 GDi plug-in hybrid 6DCT 141 KM', NULL, '144 490'),
(114, NULL, '1.0 T-GDi 120 KM 6MT', NULL, '99 990'),
(115, NULL, '1.5 T-GDI 160KM 6MT', NULL, '105 490'),
(116, NULL, '1.5 T-GDI 160KM 7DCT', NULL, '111 490'),
(117, NULL, '1.5 T-GDI MHEV 160KM 7DCT', NULL, '115 490'),
(118, NULL, '1.6 T-GDi 204 KM 7DCT', NULL, '122 490'),
(119, NULL, '1.0 T-GDi 120 KM 6MT', NULL, '81 990'),
(120, NULL, '1.5 T-GDI 160KM 6MT', NULL, '93 990'),
(121, NULL, '1.5 T-GDI 160KM 7DCT', NULL, '93 990'),
(122, NULL, '1.6 CRDi SCR MHEV 136 KM 6iMT', NULL, '95 490'),
(123, NULL, '1.6 CRDi SCR MHEV 136 KM 7DCT', NULL, '101 490'),
(124, NULL, '1.0 T-GDi 120 KM 6MT', NULL, '92 990'),
(125, NULL, '1.5 T-GDI 160KM 6MT', NULL, '98 990'),
(126, NULL, '1.5 T-GDI 160KM 7DCT', NULL, '104 990'),
(127, NULL, '1.6 CRDi SCR MHEV 136 KM 6iMT', NULL, '106 490'),
(128, NULL, '1.5 T-GDI MHEV 160KM 7DCT', NULL, '108 990'),
(129, NULL, '1.6 T-GDi 204 KM 7DCT', NULL, '111 990'),
(130, NULL, '1.6 CRDi SCR MHEV 136 KM 7DCT', NULL, '112 490'),
(131, NULL, '1.0 T-GDi 120 KM 6MT', NULL, '102 490'),
(132, NULL, '1.5 T-GDI 160KM 6MT', NULL, '108 490'),
(133, NULL, '1.5 T-GDI 160KM 7DCT', NULL, '115 490'),
(134, NULL, '1.6 CRDi SCR MHEV 136 KM 6iMT', NULL, '115 990'),
(135, NULL, '1.5 T-GDI MHEV 160KM 7DCT', NULL, '118 490'),
(136, NULL, '1.6 T-GDi 204 KM 7DCT', NULL, '121 490'),
(137, NULL, '1.6 CRDi SCR MHEV 136 KM 7DCT', NULL, '121 990'),
(138, NULL, '1.5 T-GDI 160KM 6MT', NULL, '116 490'),
(139, NULL, '1.5 T-GDI 160KM 7DCT', NULL, '122 490'),
(140, NULL, '1.6 CRDi SCR MHEV 136 KM 6iMT', NULL, '123 990'),
(141, NULL, '1.5 T-GDI MHEV 160KM 7DCT', NULL, '126 490'),
(142, NULL, '1.6 T-GDi 204 KM 7DCT', NULL, '129 490'),
(143, NULL, '1.6 CRDi SCR MHEV 136 KM 7DCT', NULL, '129 990'),
(144, NULL, '1.6 GDi plug-in hybrid 6DCT 141 KM', NULL, '129 990'),
(145, NULL, '1.6 GDi plug-in hybrid 6DCT 141 KM', NULL, '138 990'),
(146, NULL, '1.6 GDi plug-in hybrid 6DCT 141 KM', NULL, '146 490'),
(147, NULL, '1.2 DPi 5MT 84 KM', NULL, '63 490'),
(148, NULL, '1.0 T-GDi 100 KM 6MT', NULL, '67 490'),
(149, NULL, '1.0 T-GDi EcoDynamics+ 120KM 48V iMT', NULL, '71 490'),
(150, NULL, '1.0 T-GDi 100KM 7DCT', NULL, '73 490'),
(151, NULL, '1.2 DPi 5MT 84 KM', NULL, '71 490'),
(152, NULL, '1.0 T-GDi 100 KM 6MT', NULL, '76 490'),
(153, NULL, '1.0 T-GDi EcoDynamics+ 120KM 48V iMT', NULL, '80 490'),
(154, NULL, '1.0 T-GDi 100KM 7DCT', NULL, '82 490'),
(155, NULL, '1.0 T-GDi EcoDynamics+ 120KM 48V 7DCT', NULL, '86 490'),
(156, NULL, '1.2 DPi 5MT 84 KM', NULL, '76 490'),
(157, NULL, '1.0 T-GDi 100 KM 6MT', NULL, '81 490'),
(158, NULL, '1.0 T-GDi EcoDynamics+ 120KM 48V iMT', NULL, '85 490'),
(159, NULL, '1.0 T-GDi 100KM 7DCT', NULL, '87 490'),
(160, NULL, '1.0 T-GDi EcoDynamics+ 120KM 48V 7DCT', NULL, '91 490'),
(161, NULL, '1.0 T-GDi 100 KM 6MT', NULL, '85 990'),
(162, NULL, '1.0 T-GDi EcoDynamics+ 120KM 48V iMT', NULL, '89 990'),
(163, NULL, '1.0 T-GDi 100KM 7DCT', NULL, '91 990'),
(164, NULL, '1.0 T-GDi EcoDynamics+ 120KM 48V 7DCT', NULL, '95 990'),
(165, NULL, '1.6 GDi Hybrid 141 KM 6DCT', NULL, '97 990'),
(166, NULL, '1.6 GDi Hybrid 141 KM 6DCT', NULL, '107 990'),
(167, NULL, '1.6 GDi Hybrid 141 KM 6DCT', NULL, '117 990'),
(168, NULL, '1.6 GDi Hybrid 141 KM 6DCT', NULL, '125 990'),
(169, NULL, '1.6 GDi plug-in hybrid 6DCT 141 KM', NULL, '148 900'),
(170, NULL, '1.6 GDi plug-in hybrid 6DCT 141 KM', NULL, '138 900'),
(171, NULL, '1.6 GDi plug-in hybrid 6DCT 141 KM', NULL, '130 900'),
(172, NULL, '1.6 GDi plug-in hybrid 6DCT 141 KM', NULL, '154 900'),
(173, NULL, '136 KM 39.2 kWh 289 Km', NULL, '146 990'),
(174, NULL, '204 KM 64 kWh 455 km', NULL, '167 990'),
(175, NULL, '136 KM 39.2 kWh 289 Km', NULL, '156 990'),
(176, NULL, '204 KM 64 kWh 455 km', NULL, '177 990'),
(177, NULL, '136 KM 39.2 kWh 289 Km', NULL, '166 990'),
(178, NULL, '204 KM 64 kWh 455 km', NULL, '187 990'),
(179, NULL, '136 KM 39.2 kWh 277 km', NULL, '139 990'),
(180, NULL, '204 KM 64 kWh 452 km', NULL, '160 990'),
(181, NULL, '136 KM 39.2 kWh 277 km', NULL, '150 490'),
(182, NULL, '204 KM 64 kWh 452 km', NULL, '171 490'),
(183, NULL, '136 KM 39.2 kWh 277 km', NULL, '160 490'),
(184, NULL, '204 KM 64 kWh 452 km', NULL, '181 490'),
(185, NULL, '1.6 GDi 6MT 2WD 132 KM', NULL, '81 990'),
(186, NULL, '1.6 GDi 6MT 2WD 132 KM', NULL, '90 490'),
(187, NULL, '1.6 T-GDi 6MT 2WD 177 KM', NULL, '99 490'),
(188, NULL, '1.6 CRDi SCR 6MT 2WD 115 KM', NULL, '101 990'),
(189, NULL, '1.6 T-GDi 7DCT 2WD 177 KM', NULL, '106 490'),
(190, NULL, '1.6 T-GDi 6MT 4WD 177 KM', NULL, '107 490'),
(191, NULL, '1.6 CRDi SCR MHEV 7DCT 2WD 136 KM', NULL, '110 990'),
(192, NULL, '1.6 T-GDi 7DCT 4WD 177 KM', NULL, '110 990'),
(193, NULL, '1.6 CRDi SCR MHEV 6MT 4WD 136 KM', NULL, '111 990'),
(194, NULL, '1.6 GDi 6MT 2WD 132 KM', NULL, '97 990'),
(195, NULL, '1.6 T-GDi 6MT 2WD 177 KM', NULL, '106 990'),
(196, NULL, '1.6 CRDi SCR 6MT 2WD 115 KM', NULL, '109 490'),
(197, NULL, '1.6 T-GDi 7DCT 2WD 177 KM', NULL, '113 990'),
(198, NULL, '1.6 T-GDi 6MT 4WD 177 KM', NULL, '114 990'),
(199, NULL, '1.6 CRDi SCR MHEV 7DCT 2WD 136 KM', NULL, '118 490'),
(200, NULL, '1.6 CRDi SCR MHEV 6MT 4WD 136 KM', NULL, '119 490'),
(201, NULL, '1.6 T-GDi 7DCT 4WD 177 KM', NULL, '121 990'),
(202, NULL, '1.6 CRDi SCR MHEV 7DCT 4WD 136 KM', NULL, '126 490'),
(203, NULL, '1.6 GDi 6MT 2WD 132 KM', NULL, '101 990'),
(204, NULL, '1.6 T-GDi 6MT 2WD 177 KM', NULL, '110 990'),
(205, NULL, '1.6 CRDi SCR 6MT 2WD 115 KM', NULL, '113 490'),
(206, NULL, '1.6 T-GDi 7DCT 2WD 177 KM', NULL, '117 990'),
(207, NULL, '1.6 T-GDi 6MT 4WD 177 KM', NULL, '118 990'),
(208, NULL, '1.6 CRDi SCR MHEV 7DCT 2WD 136 KM', NULL, '122 490'),
(209, NULL, '1.6 CRDi SCR MHEV 6MT 4WD 136 KM', NULL, '123 490'),
(210, NULL, '1.6 T-GDi 7DCT 4WD 177 KM', NULL, '125 990'),
(211, NULL, '1.6 CRDi SCR MHEV 7DCT 4WD 136 KM', NULL, '130 490'),
(212, NULL, '1.6 T-GDi 6MT 2WD 177 KM', NULL, '121 990'),
(213, NULL, '1.6 T-GDi 7DCT 2WD 177 KM', NULL, '128 990'),
(214, NULL, '1.6 T-GDi 6MT 4WD 177 KM', NULL, '129 990'),
(215, NULL, '1.6 CRDi SCR MHEV 7DCT 2WD 136 KM', NULL, '133 490'),
(216, NULL, '1.6 CRDi SCR MHEV 6MT 4WD 136 KM', NULL, '134 490'),
(217, NULL, '1.6 T-GDi 7DCT 4WD 177 KM', NULL, '136 990'),
(218, NULL, '1.6 CRDi SCR MHEV 7DCT 4WD 136 KM', NULL, '141 490'),
(219, NULL, '1.6 GDi 6MT 2WD 132 KM', NULL, '105 990'),
(220, NULL, '1.6 CRDi SCR 6MT 2WD 115 KM', NULL, '117 490'),
(221, NULL, '1.6 T-GDi 7DCT 2WD 177 KM', NULL, '121 990'),
(222, NULL, '1.6 T-GDi 6MT 4WD 177 KM', NULL, '122 990'),
(223, NULL, '1.6 CRDi SCR MHEV 7DCT 2WD 136 KM', NULL, '126 490'),
(224, NULL, '1.6 CRDi SCR MHEV 6MT 4WD 136 KM', NULL, '127 490'),
(225, NULL, '1.6 T-GDi 7DCT 4WD 177 KM', NULL, '129 990'),
(226, NULL, '1.6 CRDi SCR MHEV 7DCT 4WD 136 KM', NULL, '134 490'),
(227, NULL, '1.6 T-GDi HEV 230KM 6AT 2WD', NULL, '159 900'),
(228, NULL, '1.6 T-GDi HEV 230KM 6AT AWD', NULL, '168 900'),
(229, NULL, '1.6 T-GDi HEV 230KM 6AT 2WD', NULL, '174 900'),
(230, NULL, '1.6 T-GDi HEV 230KM 6AT AWD', NULL, '183 900'),
(231, NULL, '1.6 T-GDi HEV 230KM 6AT 2WD', NULL, '185 900'),
(232, NULL, '1.6 T-GDi HEV 230KM 6AT AWD', NULL, '194 900'),
(233, NULL, '1.6 T-GDi HEV 230KM 6AT 2WD', NULL, '203 900'),
(234, NULL, '1.6 T-GDi HEV 230KM 6AT AWD', NULL, '212 900'),
(235, NULL, '1.6 T-GDI PHEV 265 KM 6AT AWD', NULL, '195 900'),
(236, NULL, '1.6 T-GDI PHEV 265 KM 6AT AWD', NULL, '210 900'),
(237, NULL, '1.6 T-GDI PHEV 265 KM 6AT AWD', NULL, '221 900'),
(238, NULL, '1.6 T-GDI PHEV 265 KM 6AT AWD', NULL, '239 900'),
(239, NULL, '2.2 CRDi SCR 202 KM 8DCT AWD', NULL, '189 900'),
(240, NULL, '2.2 CRDi SCR 202 KM 8DCT AWD', NULL, '204 900'),
(241, NULL, '2.2 CRDi SCR 202 KM 8DCT AWD', NULL, '215 900'),
(242, NULL, '2.2 CRDi SCR 202 KM 8DCT AWD', NULL, '233 900'),
(243, NULL, '3.3 T-GDI V6 AWD 366 KM 8AT', NULL, '239 990'),
(244, NULL, '3.3 T-GDI V6 AWD 366 KM 8AT', NULL, '244 990');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `silnik_has_wersja`
--

CREATE TABLE `silnik_has_wersja` (
  `idSilnikhasWersja` int(11) NOT NULL,
  `silnik_idSilnik` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `silnik_has_wersja`
--

INSERT INTO `silnik_has_wersja` (`idSilnikhasWersja`, `silnik_idSilnik`, `wersja_idWersja`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 3),
(17, 17, 3),
(18, 18, 3),
(19, 19, 4),
(20, 20, 4),
(21, 21, 4),
(22, 22, 4),
(23, 23, 4),
(24, 24, 4),
(25, 25, 4),
(26, 26, 5),
(27, 27, 5),
(28, 28, 5),
(29, 29, 5),
(30, 30, 5),
(31, 31, 5),
(32, 32, 6),
(33, 33, 6),
(34, 34, 6),
(35, 35, 6),
(36, 36, 6),
(37, 37, 6),
(38, 38, 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'frzepiela99', 'filiprzepiela@interia.pl', NULL, '$2y$10$YRPJ396OreD9.bucdcuIWuBQ0utfTxyLqgrAbnJSFQUXPN4.v.LMS', NULL, '2021-05-07 15:14:18', '2021-05-07 15:14:18'),
(2, 'fifi12', 'f@g.pl', NULL, '$2y$10$aGs2frvT6AR32Q/6zJTYeu5h1/gtEtOYzQfqQj11kys8.A1wZgjHK', NULL, '2021-05-10 09:20:54', '2021-05-10 09:20:54'),
(3, 'pjoter99', 'pjoter99@pjoter.pl', NULL, '$2y$10$7NrHoLSdIoTW25Elt1gYW.T/4GmB118edprh9xgPVPvEdcd5HNpea', NULL, '2021-05-10 11:21:01', '2021-05-10 11:21:01'),
(5, 'psmola99', 'pawel@smola.pl', NULL, '$2y$10$Y2aBNu6Gsrga5yr8PhnOZOHFzLXKHnxo8kWwqXxI8sGJLTs/nKKO.', NULL, '2021-05-20 19:01:18', '2021-05-20 19:01:18'),
(6, 'Pjoter', 'piotrekp2999@gmail.com', NULL, '$2y$10$pafrjf8j65EMtzObTYFjIe/2GBh08M1jseLD02fdm2U1w6MG5wCaC', NULL, '2021-06-05 22:12:02', '2021-06-05 22:12:02');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wersja`
--

CREATE TABLE `wersja` (
  `idWersja` int(11) NOT NULL,
  `nazwaWersja` varchar(45) DEFAULT NULL,
  `podst_wypWersja` longtext NOT NULL,
  `BazaPrzod` text NOT NULL,
  `BazaTyl` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `wersja`
--

INSERT INTO `wersja` (`idWersja`, `nazwaWersja`, `podst_wypWersja`, `BazaPrzod`, `BazaTyl`) VALUES
(1, 'Ceed S', '- Tempomat z ogranicznikiem prędkości\r\n- Asystent utrzymania pasa ruchu (LKA)\r\n- System autonomicznego hamowania (FCA)\r\n- Klimatyzacja manualna\r\n- Elektryczne sterowanie szyb przednich i tylnych', '//ws2.eu.kia.com/filehandler.ashx?guid=db78959f-50bb-436a-8970-bf5f61594161', '//ws2.eu.kia.com/filehandler.ashx?guid=c268f504-8db2-430e-9dcc-14a25a476787'),
(2, 'Ceed M', '8\" kolorowy ekran dotykowy LCD, Apple CarPlay, Android Autokamera cofania z dynamicznymi liniami, tylne lampy LED z funkcją do jazdy dziennej, klimatyzacja automatyczna, elektrochromatyczne lusterko wewnętrzne', '//ws2.eu.kia.com/filehandler.ashx?guid=9b3e70e9-ec56-475f-9b8d-7952334fcf77', '//ws2.eu.kia.com/filehandler.ashx?guid=818e91f6-a5ad-49a2-93ea-c7c3664bb48f'),
(3, 'Ceed L', '16-calowe felgi aluminiowe z oponami 205/55/R16Kolorowy wyświetlacz LCD komputera pokładowego o przekątnej 4.2\"Elektrycznie składane lusterka zewnętrzne z kierunkowskazami LEDElektryczna regulacja podparcia odcinka lędźwiowego foteli przednich', '//ws2.eu.kia.com/filehandler.ashx?guid=9b3e70e9-ec56-475f-9b8d-7952334fcf77', '//ws2.eu.kia.com/filehandler.ashx?guid=818e91f6-a5ad-49a2-93ea-c7c3664bb48f'),
(4, 'Ceed Business Line', 'Światła mijania oraz drogowe wykonane w technologii LEDKia Navi System z 10,25: kolorowym ekranem dotykowymTuner radia cyfrowego DAB+Felgi aluminiowe 17\"', '//ws2.eu.kia.com/filehandler.ashx?guid=e7fea624-a6fb-4842-b887-817723f0b29c', '//ws2.eu.kia.com/filehandler.ashx?guid=85b91763-e745-48f1-a09e-1604f6a76b4d'),
(5, 'Ceed GT Line', 'Kia Navi System PlusFelgi aluminiowe 17\"Cyfrowe zegaryKia Smart KeyDedykowana tapicerka GT Line', '//ws2.eu.kia.com/filehandler.ashx?guid=fa869c6a-e2f1-4271-85c6-13efe24eab3a', '//ws2.eu.kia.com/filehandler.ashx?guid=52d712f3-3070-4900-99a5-82986a7f1599'),
(6, 'Ceed Business Line Plus', 'Kia Smart KeyCyfrowe zegary z wyświetlaczem 12,3\"System audio premium JBLSystem autonomicznego parkowania z przednimi i tylnymi czujnikami', '//ws2.eu.kia.com/filehandler.ashx?guid=e7fea624-a6fb-4842-b887-817723f0b29c', '//ws2.eu.kia.com/filehandler.ashx?guid=85b91763-e745-48f1-a09e-1604f6a76b4d'),
(7, 'Ceed GT', 'Sportowe fotele z tapicerką skórzano-zamszową, 18\" felgi aluminiowe, Światła w technologii LED, System dostępu bez kluczykowego', '//ws2.eu.kia.com/filehandler.ashx?guid=d6a60e47-cb39-4e12-a1cd-bbbac61c621e', '//ws2.eu.kia.com/filehandler.ashx?guid=a339ebfb-45c8-4830-ba48-334eedab2831'),
(8, 'Picanto M', 'Elektryczne sterowane szyby drzwi przednich i tylnych\r\nElektrycznie regulowane lusterka z funkcją podgrzewania\r\nCentralny zamek z alarmem,\r\nimmobilizer,\r\nskładany kluczyk \r\nCzujnik zmierzchu\r\nRegulacja kolumny kierownicy', '', ''),
(9, 'Picanto L', 'Klimatyzacja automatyczna\r\n8” kolorowy ekran dotykowy\r\nInterfejs Android Auto/Apple CarPlay\r\nKamera cofania z dynamicznymi liniami ułatwiającymi parkowanie\r\nŚwiatła do jazdy dziennej wykonane w technologii LED', '', ''),
(10, 'Picanto Business Line', 'Podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nKia Smart Key - system otwierania i uruchamiania samochodu bez użycia kluczyka\r\nKia Navi System - system mutlimedialny z nawigacją oraz 8\" ekranem dotykowym\r\nKia UVO Connect - zestaw usług cyfrowych\r\nTylne czujniki parkowania', '', ''),
(11, 'Picanto GT Line', 'Podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nTapicerka ze skóry ekologicznej\r\n16\" aluminiowe obręcze kół z oponami 195/45R16\r\nKia Smart Key - system otwierania i uruchamiania pojazdu bez użycia kluczyka\r\nLusterka zewnętrzne z kierunkowskazami LED', '', ''),
(12, 'Picanto X-Line', 'Podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nTapicerka ze skóry ekologicznej\r\n16\" aluminiowe obręcze kół z oponami 195/45R16\r\nKia Smart Key - system otwierania i uruchamiania pojazdu bez użycia kluczyka\r\nLusterka zewnętrzne z kierunkowskazami LED', '', ''),
(13, 'Rio M', 'Elektryczne sterowane szyby drzwi przednich z funkcją bezpieczeństwa\r\nElektrycznie regulowane lusterka z funkcją podgrzewania\r\nZdalnie sterowany centralny zamek\r\nKlimatyzacja manualna\r\nCzujnik zmierzchu – automatyczne włączanie świateł mijania\r\n15\" stalowe obręcze kół z oponami 185/65/R15 oraz kołpaki', '', ''),
(14, 'Rio L', 'Klimatyzacja automatyczna z funkcją odparowywania szyby przedniej\r\n8” kolorowy ekran dotykowy\r\nInterfejs Android Auto/Apple CarPlay\r\nKamera cofania z dynamicznymi liniami ułatwiającymi parkowanie\r\nTylne czujniki parkowania\r\nCzujnik deszczu z automatycznymi wycieraczkami\r\nPakiet bezpieczeństwa z systemami: \r\n•automatycznego hamowania • automatycznego przełączania świateł mijania na drogowe i odwrotnie • wykrywania zmęczenia kierowcy • utrzymania auta pośrodku pasa ruchu • tempomat', '', ''),
(15, 'Rio Business Line', 'Światła mijania i drogowe wykonane w technologii LED z funkcją statycznego doświetlania zakrętów\r\nPakiet zimowy: \r\npodgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nTylne lampy wykonane w technologii LED\r\n16\" aluminiowe obręcze kół z oponami 195/55/R16\r\nKia Smart Key - system otwierania i uruchamiania samochodu bez użycia kluczyka\r\nPrzyciemniane szyby tylne', '', ''),
(16, 'Rio GT Line', 'Światła mijania i drogowe wykonane w technologii LED ze statycznym doświetlaniem zakrętów\r\nDedykowane 17\" aluminiowe obręcze kół z oponami 205/45/R17\r\nPrzednie czujniki parkowania\r\nKia Navi System - system multimedialny z nawigacją satelitarną\r\nKia Uvo Connect – zestaw usług cyfrowych z darmowym 7 letnim planem obsługi\r\nElektrochromatyczne lusterko wsteczne', '', ''),
(17, 'Ceed Kombi S', 'Tempomat z ogranicznikiem prędkości\r\nSystem autonomicznego hamowania (FCA)\r\nAsystent utrzymania pasa ruchu (LKA)\r\nKlimatyzacja manualna\r\nElektryczne sterowanie szyb przednich i tylnych', '', ''),
(18, 'Ceed Kombi M', '8\" kolorowy ekran dotykowy LCD, \r\nApple CarPlay, Android Auto\r\nkamera cofania z dynamicznymi liniami\r\ntylne lampy LED z funkcją do jazdy dziennej\r\nklimatyzacja automatyczna\r\nelektrochromatyczne lusterko wewnętrzne', '', ''),
(19, 'Ceed Kombi L', '16-calowe felgi aluminiowe z oponami 205/55/R16\r\nKolorowy wyświetlacz LCD komputera pokładowego o przekątnej 4.2\"\r\nElektrycznie składane lusterka zewnętrzne z kierunkowskazami LED\r\nElektryczna regulacja podparcia odcinka lędźwiowego foteli przednich', '', ''),
(20, 'Ceed Kombi GT Line', 'Kia Navi System Plus\r\nFelgi aluminiowe 17\"\r\nŚwiatła w technologii LED\r\nKia Smart Key\r\nDedykowana tapicerka GT Line', '', ''),
(21, 'Ceed Kombi Business Line', 'Światła mijania oraz drogowe wykonane w technologii LED\r\nKia Navi System - system nawigacji satelitarnej z obsługą w języku polskim\r\n10,25\" kolorowy ekran dotykowy LCD\r\nTuner radia cyfrowego DAB+\r\nBluetooth z możliwością podłączenia dwóch urządzeń\r\nFelgi aluminiowe 17\" z oponami 225/45/R17', '', ''),
(22, 'Creed Kombi Business Line Plus', 'Kia Smart Key\r\nKia Navi System Plus\r\nKia Auto Park Assist\r\nPakiet zimowy', '', ''),
(23, 'Ceed Kombi PHEV L', '8” kolorowy, dotykowy ekran LCD, \r\ninterfejs Apple CarPlay oraz Android Auto\r\nKamera cofania z dynamicznymi liniami ułatwiającymi parkowanie, \r\nczujniki parkowania tył\r\nKia Forward Collision Avoidance Assist (FCA) -system autonomicznego hamowania z dodatkową funkcją wykrywania pieszych\r\nKia Smart Key\r\nOświetlenie kameralne przestrzeni na nogi dla pasażerów przednich siedzeń', '', ''),
(24, 'Ceed Kombi PHEV Business Line', 'Kia Navi System z 10,25-calowym dotykowym ekranem\r\nKia UVO ConnectKia Supervision Cluster - cyfrowe zegary 12,3\"\r\nPakiet zimowy\r\nIndukcyjna ładowarka do telefonu\r\nKia Auto Park Assist', '', ''),
(25, 'Ceed Kombi PHEV XL', 'Kia Navi System - system nawigacji satelitarnej z obsługą w języku polskim\r\n10.25” kolorowy ekran dotykowy LCD,\r\nKia Supervision Cluster – cyfrowe zegary z kolorowym ekranem o przekątnej 12.3”\r\nKia Park Assist – system automatycznego parkowania z przednimi oraz tylnymi czujnikami\r\nIndukcyjna ładowarka do telefonu\r\nKia UVO Connect – zestaw usług cyfrowych zapewniających wsparcie kierowcy w czasie rzeczywistym oraz zdalny dostęp do informacji o Twoim samochodzie\r\nKia Smart Tailgate - funkcja automatycznego otwierania i zamykania pokrywy bagażnika• Kia Speed Limit Warning (SLW) – system rozpoznający znaki ograniczeń prędkości• \r\nPakiet zimowy: podgrzewane przednie fotele z możliwością stopniowania, podgrzewana kierownica, podgrzewane dysze spryskiwaczy• Elektryczna regulacja foteli przednich, funkcja pamięci dla fotela kierowcy• Wentylowane fotele przednie• Skórzana tapicerka foteli', '', ''),
(26, 'ProCeed GT Line', 'światła LED\r\n17\" aluminiowe obręcze kół\r\n8\" kolorowy wyświetlacz z interfejsem Android Auto i Apple Car Play\r\nsystem autonomicznego hamowania\r\nsystem dostępu bezkluczykowego', '//ws2.eu.kia.com/filehandler.ashx?guid=28260bef-23ac-40b0-8f49-c0bb1773a1ad', '//ws2.eu.kia.com/filehandler.ashx?guid=ff1623e9-6ccf-4862-8800-6ebcf3eb4389'),
(27, 'ProCeed GT', 'sportowe fotele z tapicerką zamszowo-skórzaną\r\ndwie chromowane końcówki układu wydechowego\r\n18\" aluminiowe obręcze kół\r\nsportowa stylistyka zderzaków\r\nsystem automatycznego parkowania z czujnikami przód / tył', '//ws2.eu.kia.com/filehandler.ashx?guid=562de530-34f6-4e91-b264-cb7a146009e9', '//ws2.eu.kia.com/filehandler.ashx?guid=75b061c0-714d-436b-81f4-b3c6bc948094'),
(28, 'XCeed M', '8” kolorowy, dotykowy ekran LCD\r\nŚwiatła mijania, drogowe oraz do jazdy dziennej LED\r\nKamera cofania\r\nSystem autonomicznego hamowania', '', ''),
(29, 'XCeed L', 'Klimatyzacja automatyczna, dwustrefowa\r\nElektrycznie składane lusterka zewnętrzne z funkcją kierunkowskazów LED\r\nFelgi aluminiowe 18-calowe\r\nWykończenie wnętrza Premium', '', ''),
(30, 'XCeed Business Line', '10.25” kolorowy ekran dotykowy LCD\r\nKia Navi System Plus\r\nBluetooth z możliwością podłączenia dwóch urządzeń\r\nKia Park Assist\r\nPodgrzewane fotele, kierownica oraz dysze spryskiwaczy', '', ''),
(31, 'XCeed XL', 'Cyfrowe zegary z kolorowym ekranem 12,3\"\r\nKia Smart KeyKia Navi System Plus\r\nKia Park Assist\r\nIndukcyjna ładowarka do telefonu', '', ''),
(32, 'XCeed PHEV L', 'Klimatyzacja automatyczna, dwustrefowa\r\nElektryczna regulacja podparcia lędźwiowego foteli przednich\r\nKia Smart Key\r\nElektrochromatyczne lusterko wewnętrzne\r\nOświetlenie kameralne przestrzeni na nogi dla pasażerów przednich siedzeń', '', ''),
(33, 'XCeed PHEV Business Line', 'Kia Navi System\r\nBluetooth z możliwością podłączenia dwóch urządzeń\r\nKia UVO Connect\r\nKia Park Assist\r\nKia Supervision Cluster\r\nIndukcyjna ładowarka do telefonu', '', ''),
(34, 'XCeed PHEV XL', 'Kia Supervision Cluster\r\nKia UVO Connect\r\nKia Park Assist\r\nKia Navi System Plus\r\nWentylowane fotele przednie', '', ''),
(35, 'Stonic M', '8” kolorowy ekran dotykowy\r\nInterfejs Android Auto/Apple CarPlay\r\n16\" felgi aluminiowe z oponami 195/55/R16\r\nElektrycznie sterowane szyby drzwi przednich oraz tylnych\r\nElektrycznie regulowane lusterka z funkcją podgrzewania\r\nKlimatyzacja manualna\r\nŚwiatła pozycyjne oraz do jazdy dziennej wykonane w technologii LED', '', ''),
(36, 'Stonic L', 'Klimatyzacja automatyczna\r\nCzujniki parkowania z tyłu, kamera cofania\r\nKierownica wykończona perforowaną skórą\r\nCzujnik deszczu z automatycznymi wycieraczkami\r\nElektrochromatyczne lusterko wsteczne\r\nRelingi dachowe, podwójna podłoga bagażnika', '', ''),
(37, 'Stonic Business Line', 'Światła mijania i drogowe wykonane w technologii LED\r\nTylne lampy wykonane w technologii LED\r\nPakiet zimowy: podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nKia Smart Key\r\nPrzyciemniane szyby tylne\r\nSzyby przednie z funkcją zapobiegającą nadmiernemu nagrzewaniu się wnętrza', '', ''),
(38, 'Stonic GT Line', 'Światła mijania i drogowe wykonane w technologii LED\r\nTylne lampy wykonane w technologii LED\r\nPakiet zimowy: podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nPrzednie czujniki parkowania\r\nNavi System - system multimedialny z nawigacją satelitarną\r\nUvo Connect – zestaw usług cyfrowych z darmowym 7 letnim planem obsługi\r\nSzyby przednie atermiczne, przyciemniane szyby tylne', '', ''),
(39, 'Niro HEV M', '8-calowy kolorowy ekran dotykowy z kamerą cofania i interfejsami Android Auto/Apple CarPlay\r\nŚwiatła do jazdy dziennej LED, tylne lampy LED\r\nKlimatyzacja automatyczna 2-strefowa\r\nCzujniki parkowania z tyłu', '', ''),
(40, 'Niro HEV L', 'Aktywny tempomat\r\nSystem autonomicznego hamowania\r\nPodgrzewana kierownica i fotele przednie\r\nŚwiatła mijania i drogowe LED', '', ''),
(41, 'Niro HEV Business Line', 'Kia Navi System\r\n10,25-calowy kolorowy ekran dotykowy\r\nIndukcyjna łądowarka do telefonu\r\nCyfrowe zegary \"Supervision\" z 7-calowym wyświetlaczem LCD', '', ''),
(42, 'Niro HEV XL', 'Czujniki parkowania z przodu\r\nCyfrowe zegary Supervision z 7-calowym wyświetlaczem LCD\r\nSystem inforozrywki z kolorowym ekranem dotykowym 10,25\"\r\nWentylowane fotele przednie z pamięcią ustawień kierowcy', '', ''),
(43, 'Niro PHEV Business Line', 'Kia Navi System z 10.25\" kolorowym ekranem dotykowym i możlwiością personalizacji wyświetlacza\r\nKia Smart Key\r\nKameralne podświetlenie deski rozdzielczej', '', ''),
(44, 'Niro PHEV L', 'Światła mijania i drogowe LED, światła przeciwmgielne LED\r\nTapicerka skórzano-materiałowa\r\nPodgrzewana kierownica oraz fotele przednie\r\nElektrochromatyczne lusterko', '', ''),
(45, 'Niro PHEV M', '8-calowy dotykowy ekran systemu inforozrywki z interfejsami Andorid Auto/Apple CarPlay\r\nKlimatyzacja automatyczna 2-strefowa\r\nAktywny tempomat z funkcją Stop&Go\r\nKamera cofania', '', ''),
(46, 'Niro PHEV XL', 'Cyfrowe zegary \"Supervision\" z kolorwym wyświetlaczem LCD 7\"\r\nCzujniki parkowania z przodu\r\n10,25\" kolorowy ekran dotykowy z systemem nawigacji i systemem audio JBL\r\nIndukcyjna ładowarka do telefonu', '', ''),
(47, 'e-Niro M', 'System autonomicznego hamowania\r\nAktywny tempomat z automatyczną regulacją odległości\r\nTapicerka skórzano-materiałowa\r\nKlimatyzacja automatyczna', '', ''),
(48, 'e-Niro L', 'Reflektory w technologii LED\r\nPakiet zimowy\r\nCzujniki parkowania z przodu\r\nSystem nawigacji satelitarnej z 10.25”', '', ''),
(49, 'e-Niro XL', 'System monitorowania martwego pola\r\nSkórzana tapicerka foteli\r\nSystem audio JBL\r\nElektryczna regulacja foteli', '', ''),
(50, 'e-Soul M', 'Reflektory w technologii LED\r\nAktywny tempomat z automatyczną regulacją odległości\r\nKlimatyzacja automatyczna\r\nFelgi aluminowe 17”', '', ''),
(51, 'e-Soul L', 'System nawigacji satelitarnej z 10.25”\r\nZestaw audio firmy Harman / Kardon\r\nPakiet zimowy\r\nPrzednie czujniki parkowania', '', ''),
(52, 'e-Soul XL', 'System monitorowania martwego pola\r\nSkórzana tapicerka foteli\r\nIndukcyjna ładowarka do telefonu\r\nWyświetlacz przezierny „head up”', '', ''),
(53, 'Sportage S', 'przednie reflektory typu projekcyjnego\r\nklimatyzacja manualna\r\nradio CD MP3 z 6 głośnikami\r\n16\" felgi aluminiowe', '', ''),
(54, 'Sportage M', 'światła do jazdy dziennej LED\r\nelektrycznie składane lusterka\r\nwielofunkcyjna, skórzana kierownica\r\n17\" felgi aluminiowe', '', ''),
(55, 'Sportage L', 'Klimatyzacja automatyczna dwustrefowa\r\nPrzyciemniane szyby tylne\r\nCzujniki parkowania z przodu i z tyłu\r\nKia Navi System', '', ''),
(56, 'Sportage BUSINESS LINE', 'Światła do jazdy dziennej w stylistyce kostek lodu\r\nŚwiatła mijania i drogowe LED\r\nTylne lampy LED\r\nWykończenie wnętrza Premium', '', ''),
(57, 'Sportage GT Line', 'skórzana tapicerka i czarna podsufitka\r\nświatła przeciwmgielne LED\r\nmanetki do zmiany biegów (AT/7DCT)\r\n19\" felgi aluminiowe', '', ''),
(58, 'Sportage Black Edition', 'Czarne 17\" felgi aluminiowe z oponami 225/60/R17,\r\nDedykowane, lakierowane na czarno elementy nadwozia,\r\nPakiet systemów bezpieczeństwa, w tym Kia Forward Collision Avoidance Assist,\r\nPodgrzewane fotele oraz kanapa tylna,\r\nŚwiatła mijania oraz drogowe wykonane w technologii LED, kierunkowskazy LED.', '', ''),
(59, 'Sorento HEV M', 'Światła przednie i tylne LED\r\nCyfrowe zegary z kolorowym ekranem o przekątnej 12.3”\r\nEkran multimedialny 8”, tuner DAB, kamera cofania\r\nInterfejs Android Auto i Apple CarPlay\r\nSelektor skrzyni biegów typu „Shift By Wire”\r\nKlimatyzacja automatyczna dwustrefowa', '', ''),
(60, 'Sorento HEV L', 'Kia Navi System z kolorowym ekranem dotykowym 10.25” oraz UVO Connect\r\nKia Smart Key – system otwierania i uruchamiania pojazdu bez użycia kluczyka\r\nKia Highway Driving Assist – asystent jazdy po autostradzie i w korkach\r\nElektrycznie sterowany fotel kierowcy w 8 kierunkach\r\nElektrycznie sterowane podparcie lędźwiowego odcinka kręgosłupa', '', ''),
(61, 'Sorento HEV XL', 'Kameralne podświetlenie wnętrza\r\nRolety przeciwsłoneczne dla pasażerów drugiego rzędu\r\nElektrycznie sterowana pokrywa bagażnika\r\nSkórzana tapicerka foteli\r\nFotel pasażera z elektryczną regulacja w 8 kierunkach, regulacja wysokości fotela pasażera\r\nFelgi aluminiowe 19” z oponami 235/55/R19', '', ''),
(62, 'Sorento HEV PRESTIGE LINE', 'Asystent martwego pola z funkcją wyświetlania obrazu z kamer między zegarami\r\nSystem kamer 360°\r\nWyświetlacz Head-up\r\nSkórzana tapicerka \"NAPPA\"\r\nWentylowane fotele przednie\r\nSystem audio \"Bose\"\r\nZawieszenie tylne z funkcją poziomowania', '', ''),
(63, 'Nowe Sorento PHEV M', 'Światła przednie i tylne LED\r\nCyfrowe zegary z kolorowym ekranem o przekątnej 12.3”\r\nEkran multimedialny 8”, tuner DAB, kamera cofania\r\nInterfejs Android Auto i Apple CarPlay\r\nSelektor skrzyni biegów typu „Shift By Wire”\r\nKlimatyzacja automatyczna dwustrefowa\r\nFelgi aluminiowe 19” z oponami 235/55/R19', '', ''),
(64, 'Nowe Sorento PHEV L', 'Kia Navi System z kolorowym ekranem dotykowym 10.25” oraz UVO Connect\r\nKia Smart Key – system otwierania i uruchamiania pojazdu bez użycia kluczyka\r\nKia Highway Driving Assist – asystent jazdy po autostradzie i w korkach\r\nElektrycznie sterowany fotel kierowcy w 8 kierunkach\r\nElektrycznie sterowane podparcie lędźwiowego odcinka kręgosłupa\r\nFelgi aluminiowe 19” z oponami 235/55/R19', '', ''),
(65, 'Nowe Sorento PHEV XL', 'Kameralne podświetlenie wnętrza\r\nRolety przeciwsłoneczne dla pasażerów drugiego rzędu\r\nElektrycznie sterowana pokrywa bagażnika\r\nSkórzana tapicerka foteli\r\nFotel pasażera z elektryczną regulacja w 8 kierunkach, regulacja wysokości fotela pasażera\r\nFelgi aluminiowe 19” z oponami 235/55/R19', '', ''),
(66, 'Nowe Sorento PHEV PRESTIGE LINE', 'Asystent martwego pola z funkcją wyświetlania obrazu z kamer między zegarami\r\nSystem kamer 360°Wyświetlacz Head-up\r\nSkórzana tapicerka \"NAPPA\"\r\nWentylowane fotele przednie\r\nSystem audio \"Bose\"', '', ''),
(67, 'Sorento M', 'Światła przednie i tylne LED\r\nCyfrowe zegary z kolorowym ekranem o przekątnej 12.3”\r\nEkran multimedialny 8”, tuner DAB, interfejs Android Auto i Apple CarPlay\r\nKamera cofania z dynamicznym torem jazdy\r\nSelektor skrzyni biegów typu „Shift By Wire”\r\nZaawansowany kontroler trybu jazdy miejskiej i terenowej\r\nKlimatyzacja automatyczna dwustrefowa', '', ''),
(68, 'Sorento L', 'Kia Navi System z kolorowym ekranem dotykowym 10.25” z systemem UVO \r\nConnectKia Smart Key – system otwierania i uruchamiania pojazdu bez użycia kluczyka\r\nKia Highway Driving Assist – asystent jazdy po autostradzie i w korkach\r\nElektrycznie sterowany fotel kierowcy w 8 kierunkach, elektrycznie sterowane podparcie lędźwiowego odcinka kręgosłupa', '', ''),
(69, 'Sorento XL', 'Kameralne podświetlenie wnętrza\r\nRolety przeciwsłoneczne dla pasażerów drugiego rzędu\r\nElektrycznie sterowana pokrywa bagażnika\r\nSkórzana tapicerka foteli\r\nFotel pasażera z elektryczną regulacja w 8 kierunkach, regulacja wysokości fotela pasażera\r\nFelgi aluminiowe 19” z oponami 235/55/R19', '', ''),
(70, 'Sorento PRESTIGE LINE', 'Asystent martwego pola z funkcją wyświetlania obrazu z kamer między zegarami\r\nSystem kamer 360\r\nWyświetlacz Head-up\r\nSkórzana tapicerka \"NAPPA\"\r\nWentylowane fotele przednie\r\nSystem audio \"Bose\"\r\nZawieszenie tylne z funkcją poziomowania', '', ''),
(71, 'Stinger GT', 'Reflektory LED z dynamicznym doświetlaniem zakrętów\r\nEkran multimedialny 10,25\"\r\nAktywny tempomat\r\nWyświetlacz Head-Up Display\r\nSportowa, zamszowa tapcierka\r\nSystem audio Harman/Kardon\r\nOświetlenie kameralne wnętrza', '', ''),
(72, 'Stinger PRESTIGE LINE', 'System monitorowania martwego pola\r\nObraz martwego pola na wyświetlaczu między zegarami\r\nSystem monitorowania ruchu pojazdów podczas cofania\r\nSystem kamer 360Indukcyjna ładowarka', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wersja_has_dodatki`
--

CREATE TABLE `wersja_has_dodatki` (
  `idWersjahasDodatki` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL,
  `dodatki_idDodatki` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wersja_has_dodatki`
--

INSERT INTO `wersja_has_dodatki` (`idWersjahasDodatki`, `wersja_idWersja`, `dodatki_idDodatki`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wersja_has_wnetrze`
--

CREATE TABLE `wersja_has_wnetrze` (
  `idWersjahasWnetrze` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL,
  `wnetrze_idWnetrze` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wersja_has_wnetrze`
--

INSERT INTO `wersja_has_wnetrze` (`idWersjahasWnetrze`, `wersja_idWersja`, `wnetrze_idWnetrze`) VALUES
(1, 1, 1),
(2, 11, 8);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wnetrze`
--

CREATE TABLE `wnetrze` (
  `idWnetrze` int(11) NOT NULL,
  `rodzajWnetrze` longtext DEFAULT NULL,
  `kolorWnetrze` varchar(255) DEFAULT NULL,
  `cenaWnetrze` int(11) DEFAULT NULL,
  `Zdjecie` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `wnetrze`
--

INSERT INTO `wnetrze` (`idWnetrze`, `rodzajWnetrze`, `kolorWnetrze`, `cenaWnetrze`, `Zdjecie`) VALUES
(1, 'Tapicerka materiałowa', 'czarny', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=d02ef5cd-9ba1-448d-aa40-cb54a17c6c0e'),
(2, 'Tapicerka „Cosmo”', 'czarny', 0, ''),
(3, 'Tapicerka „Luna” CP1', 'czarno-szary', 0, ''),
(5, 'Tapicerka czarna M', 'czarny', 0, ''),
(6, 'Pakiet kolorystyczny wnętrza: „ORANGE SPLASH”', 'czarny z pomarańczowym wykończeniem', 0, ''),
(7, 'Pakiet kolorystyczny wnętrza: tapicerka ze skóry ekologicznej w kolorze szarym z żółtymi elementami; przeszycia w kolorze żółtym na podłokietniku, panelach drzwi oraz kierownicy, elementy wnętrza w kolorze srebrnym lakierowane na wysoki połysk', 'szary z żółtymi elementami', 0, ''),
(8, 'Pakiet kolorystyczny wnętrza: tapicerka ze skóry ekologicznej w kolorze czarnym z czerwonymi elementami; przeszycia w kolorze czerwonym na podłokietniku, panelach drzwi oraz kierownicy, elementy wnętrza w kolorze czarnym lakierowane na wysoki połysk', 'czarny z czerwonymi elementami', 0, ''),
(9, 'Tapicerka czarna L', 'czarny', 0, ''),
(10, 'Tapicerka skórzano – materiałowa (skóra ekologiczna)', NULL, 0, ''),
(11, 'Sportowe fotele, dedykowana tapicerka skórzano – zamszowa z emblematem GT, czerwone przeszycia foteli, boczków drzwi i kierownicy\r\n', NULL, 0, ''),
(12, 'Tapicerka GT Line Premium skórzano-zamszowa z szarymi przeszyciami', 'czarno-szary', 0, ''),
(13, 'Tapicerka „Flow”', 'czarny', 0, ''),
(14, 'Tapicerka „Cosmo” skórzano – materiałowa', 'czarny', 0, ''),
(15, 'Skórzana tapicerka foteli', '', 0, ''),
(16, 'Tapicerka GT Line – materiałowa z elementami skóry ekologicznej', 'czarno-szary', 0, ''),
(17, 'Pakiet kolorystyczny wnętrza „Yellow Splash”', 'czarno-żółty', 0, ''),
(18, 'Tapicerka skórzana „Elegance\"', 'czarny', 0, ''),
(19, 'Tapicerka „Cosmo” skórzano – materiałowa (skóra ekologiczna) w kolorze czarnym, boczki drzwi wykończone skórą ekologiczną w kolorze czarnym', 'czarny', 0, ''),
(20, 'Tapicerka materiałowa', 'szaro-czarny', 0, ''),
(21, 'Pakiet kolorystyczny wnętrza „Blue Splash” - elementy wnętrza w kolorze niebieskim', 'czarno-niebieski', 0, ''),
(22, 'Pakiet kolorystyczny wnętrza „Yellow Splash” - elementy wnętrza w kolorze żółtym', 'czarno-żółty', 0, ''),
(23, 'Tapicerka skórzano-materiałowa dedykowana wersji GT Line (skóra ekologiczna)', '', 0, ''),
(24, 'Wnętrze 1-tonowe czarne', 'czarno-srebny', 0, ''),
(25, 'Pakiet kolorystyczny wnętrza „Orange Blossom”', 'czarno-srebrno-pomarańczowy', 0, ''),
(26, 'Wnętrze 2-tonowe ', 'czarno - szary', 0, ''),
(27, 'Wnętrze 1-tonowe czarne , tapicerka skórzano - materiałowa w kolorze czarnym z niebieskimi przeszyciami, elementy wykończenia wnętrza w kolorze czarnym o wysokim połysku', '', 0, ''),
(28, 'Tapicerka materiałowa w kolorze czarnym, elementy ozdobne wnętrza lakierowane w kolorze srebrnym', '', 0, ''),
(29, 'Tapicerka skórzana', 'czarny', 0, ''),
(30, 'Tapicerka „Beat”', 'czarny', 0, ''),
(31, 'Tapicerka „Carmelo”', 'karmelowy', 0, ''),
(32, 'Tapicerka skórzana GT Line', 'czarny', 0, ''),
(33, 'Skórzana tapicerka foteli', 'czarno-szarym', 0, ''),
(34, 'Skórzana tapicerka foteli (Nappa)', 'czarny', 0, ''),
(35, 'Skórzana tapicerka foteli typu Nappa czarna', '', 0, ''),
(36, 'Skórzana tapicerka foteli typu Nappa czerwona', '', 0, ''),
(37, 'Zamszowa tapicerka', 'czarny', 0, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `idzamowienia` int(11) NOT NULL,
  `users_idUsers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `idKonfiguracja` (`idKonfiguracja`);

--
-- Indeksy dla tabeli `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`idDealer`);

--
-- Indeksy dla tabeli `dealer_has_konfiguracja`
--
ALTER TABLE `dealer_has_konfiguracja`
  ADD PRIMARY KEY (`idDealerhasKonfiguracja`),
  ADD KEY `dealer_idDealer` (`dealer_idDealer`,`konfiguracja_idKonfiguracja`),
  ADD KEY `dealer_has_konfiguracja_ibfk_1` (`konfiguracja_idKonfiguracja`);

--
-- Indeksy dla tabeli `dealer_has_zamowienia`
--
ALTER TABLE `dealer_has_zamowienia`
  ADD PRIMARY KEY (`DealerhasZamowienia`),
  ADD KEY `dealer_idDealer` (`dealer_idDealer`,`zamowienia_idzamowienia`),
  ADD KEY `dealer_has_zamowienia_ibfk_1` (`zamowienia_idzamowienia`);

--
-- Indeksy dla tabeli `dodatki`
--
ALTER TABLE `dodatki`
  ADD PRIMARY KEY (`idDodatki`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `felgi`
--
ALTER TABLE `felgi`
  ADD PRIMARY KEY (`idFelgi`);

--
-- Indeksy dla tabeli `felgi_has_wersja`
--
ALTER TABLE `felgi_has_wersja`
  ADD PRIMARY KEY (`idFelgihasWersja`),
  ADD KEY `felgi_idFelgi` (`felgi_idFelgi`,`wersja_idWersja`),
  ADD KEY `felgi_has_wersja_ibfk_1` (`wersja_idWersja`);

--
-- Indeksy dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`idkategoria`);

--
-- Indeksy dla tabeli `kategoria_has_samochod`
--
ALTER TABLE `kategoria_has_samochod`
  ADD PRIMARY KEY (`idKategoriahasSamochod`),
  ADD KEY `kategoria_idkategoria` (`kategoria_idkategoria`,`samochod_idsamochod`),
  ADD KEY `kategoria_has_samochod_ibfk_2` (`samochod_idsamochod`);

--
-- Indeksy dla tabeli `kolor`
--
ALTER TABLE `kolor`
  ADD PRIMARY KEY (`idKolor`);

--
-- Indeksy dla tabeli `kolor_has_wersja`
--
ALTER TABLE `kolor_has_wersja`
  ADD PRIMARY KEY (`idKolorhasWersja`),
  ADD KEY `kolor_idKolor` (`kolor_idKolor`,`wersja_idWersja`),
  ADD KEY `kolor_has_wersja_ibfk_2` (`wersja_idWersja`);

--
-- Indeksy dla tabeli `konfiguracja`
--
ALTER TABLE `konfiguracja`
  ADD PRIMARY KEY (`idKonfiguracja`);

--
-- Indeksy dla tabeli `konfiguracja_has_samochod`
--
ALTER TABLE `konfiguracja_has_samochod`
  ADD PRIMARY KEY (`idKonfiguracjahasSamochod`),
  ADD KEY `konfiguracja_idKonfiguracja` (`konfiguracja_idKonfiguracja`,`samochod_idsamochod`),
  ADD KEY `konfiguracja_has_samochod_ibfk_2` (`samochod_idsamochod`);

--
-- Indeksy dla tabeli `konfiguracja_has_zamowienia`
--
ALTER TABLE `konfiguracja_has_zamowienia`
  ADD PRIMARY KEY (`idKonfiguracjahasZamowienia`),
  ADD KEY `konfiguracja_idKonfiguracja` (`konfiguracja_idKonfiguracja`,`zamowienia_idzamowienia`),
  ADD KEY `konfiguracja_has_zamowienia_ibfk_1` (`zamowienia_idzamowienia`);

--
-- Indeksy dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  ADD PRIMARY KEY (`idKoszyk`),
  ADD KEY `idUser` (`idUser`);

--
-- Indeksy dla tabeli `koszyk_has_konfiguracja`
--
ALTER TABLE `koszyk_has_konfiguracja`
  ADD KEY `koszyk_has_konfiguracja_ibfk_1` (`koszyk_idKoszyk`),
  ADD KEY `koszyk_has_konfiguracja_ibfk_2` (`konfiguracja_idKonfiguracja`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `opcje`
--
ALTER TABLE `opcje`
  ADD PRIMARY KEY (`idOpcje`);

--
-- Indeksy dla tabeli `opcje_has_wersja`
--
ALTER TABLE `opcje_has_wersja`
  ADD PRIMARY KEY (`idOpcjehasWersja`),
  ADD KEY `opcje_idOpcje` (`opcje_idOpcje`,`wersja_idWersja`),
  ADD KEY `opcje_has_wersja_ibfk_1` (`wersja_idWersja`);

--
-- Indeksy dla tabeli `pakiety`
--
ALTER TABLE `pakiety`
  ADD PRIMARY KEY (`idpakiety`);

--
-- Indeksy dla tabeli `pakiety_has_wersja`
--
ALTER TABLE `pakiety_has_wersja`
  ADD PRIMARY KEY (`idPakietyhasWersja`),
  ADD KEY `pakiety_idpakiety` (`pakiety_idpakiety`,`wersja_idWersja`),
  ADD KEY `pakiety_has_wersja_ibfk_2` (`wersja_idWersja`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `podstwyp`
--
ALTER TABLE `podstwyp`
  ADD PRIMARY KEY (`idpodstWyp`),
  ADD KEY `samochod_idsamochod` (`samochod_idsamochod`);

--
-- Indeksy dla tabeli `podstwyp_has_wersja`
--
ALTER TABLE `podstwyp_has_wersja`
  ADD PRIMARY KEY (`idPodstWyphasWersja`),
  ADD KEY `podstWyp_idpodstWyp` (`podstWyp_idpodstWyp`,`wersja_idWersja`),
  ADD KEY `podstwyp_has_wersja_ibfk_1` (`wersja_idWersja`);

--
-- Indeksy dla tabeli `samochod`
--
ALTER TABLE `samochod`
  ADD PRIMARY KEY (`idsamochod`);

--
-- Indeksy dla tabeli `samochod_has_wersja`
--
ALTER TABLE `samochod_has_wersja`
  ADD PRIMARY KEY (`idSamochodhasWersja`),
  ADD KEY `samochod_idsamochod` (`samochod_idsamochod`,`wersja_idWersja`),
  ADD KEY `samochod_has_wersja_ibfk_1` (`wersja_idWersja`);

--
-- Indeksy dla tabeli `silnik`
--
ALTER TABLE `silnik`
  ADD PRIMARY KEY (`idSilnik`);

--
-- Indeksy dla tabeli `silnik_has_wersja`
--
ALTER TABLE `silnik_has_wersja`
  ADD PRIMARY KEY (`idSilnikhasWersja`),
  ADD KEY `silnik_idSilnik` (`silnik_idSilnik`,`wersja_idWersja`),
  ADD KEY `silnik_has_wersja_ibfk_1` (`wersja_idWersja`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeksy dla tabeli `wersja`
--
ALTER TABLE `wersja`
  ADD PRIMARY KEY (`idWersja`);

--
-- Indeksy dla tabeli `wersja_has_dodatki`
--
ALTER TABLE `wersja_has_dodatki`
  ADD PRIMARY KEY (`idWersjahasDodatki`),
  ADD KEY `wersja_idWersja` (`wersja_idWersja`,`dodatki_idDodatki`),
  ADD KEY `wersja_has_dodatki_ibfk_2` (`dodatki_idDodatki`);

--
-- Indeksy dla tabeli `wersja_has_wnetrze`
--
ALTER TABLE `wersja_has_wnetrze`
  ADD PRIMARY KEY (`idWersjahasWnetrze`),
  ADD KEY `wersja_idWersja` (`wersja_idWersja`,`wnetrze_idWnetrze`),
  ADD KEY `wersja_has_wnetrze_ibfk_2` (`wnetrze_idWnetrze`);

--
-- Indeksy dla tabeli `wnetrze`
--
ALTER TABLE `wnetrze`
  ADD PRIMARY KEY (`idWnetrze`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`idzamowienia`),
  ADD KEY `users_idUsers` (`users_idUsers`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `dealer`
--
ALTER TABLE `dealer`
  MODIFY `idDealer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `dodatki`
--
ALTER TABLE `dodatki`
  MODIFY `idDodatki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `felgi`
--
ALTER TABLE `felgi`
  MODIFY `idFelgi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT dla tabeli `kolor`
--
ALTER TABLE `kolor`
  MODIFY `idKolor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `opcje`
--
ALTER TABLE `opcje`
  MODIFY `idOpcje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT dla tabeli `pakiety`
--
ALTER TABLE `pakiety`
  MODIFY `idpakiety` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `samochod`
--
ALTER TABLE `samochod`
  MODIFY `idsamochod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT dla tabeli `silnik`
--
ALTER TABLE `silnik`
  MODIFY `idSilnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `wersja`
--
ALTER TABLE `wersja`
  MODIFY `idWersja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT dla tabeli `wnetrze`
--
ALTER TABLE `wnetrze`
  MODIFY `idWnetrze` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `dealer_has_konfiguracja`
--
ALTER TABLE `dealer_has_konfiguracja`
  ADD CONSTRAINT `dealer_has_konfiguracja_ibfk_1` FOREIGN KEY (`konfiguracja_idKonfiguracja`) REFERENCES `konfiguracja` (`idKonfiguracja`),
  ADD CONSTRAINT `dealer_has_konfiguracja_ibfk_2` FOREIGN KEY (`dealer_idDealer`) REFERENCES `dealer` (`idDealer`);

--
-- Ograniczenia dla tabeli `dealer_has_zamowienia`
--
ALTER TABLE `dealer_has_zamowienia`
  ADD CONSTRAINT `dealer_has_zamowienia_ibfk_1` FOREIGN KEY (`zamowienia_idzamowienia`) REFERENCES `zamowienia` (`idzamowienia`),
  ADD CONSTRAINT `dealer_has_zamowienia_ibfk_2` FOREIGN KEY (`dealer_idDealer`) REFERENCES `dealer` (`idDealer`);

--
-- Ograniczenia dla tabeli `felgi_has_wersja`
--
ALTER TABLE `felgi_has_wersja`
  ADD CONSTRAINT `felgi_has_wersja_ibfk_1` FOREIGN KEY (`felgi_idFelgi`) REFERENCES `felgi` (`idFelgi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `felgi_has_wersja_ibfk_2` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `kategoria_has_samochod`
--
ALTER TABLE `kategoria_has_samochod`
  ADD CONSTRAINT `kategoria_has_samochod_ibfk_1` FOREIGN KEY (`kategoria_idkategoria`) REFERENCES `kategoria` (`idkategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kategoria_has_samochod_ibfk_2` FOREIGN KEY (`samochod_idsamochod`) REFERENCES `samochod` (`idsamochod`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `kolor_has_wersja`
--
ALTER TABLE `kolor_has_wersja`
  ADD CONSTRAINT `kolor_has_wersja_ibfk_4` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kolor_has_wersja_ibfk_5` FOREIGN KEY (`kolor_idKolor`) REFERENCES `kolor` (`idKolor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `konfiguracja_has_samochod`
--
ALTER TABLE `konfiguracja_has_samochod`
  ADD CONSTRAINT `konfiguracja_has_samochod_ibfk_1` FOREIGN KEY (`konfiguracja_idKonfiguracja`) REFERENCES `konfiguracja` (`idKonfiguracja`);

--
-- Ograniczenia dla tabeli `konfiguracja_has_zamowienia`
--
ALTER TABLE `konfiguracja_has_zamowienia`
  ADD CONSTRAINT `konfiguracja_has_zamowienia_ibfk_1` FOREIGN KEY (`zamowienia_idzamowienia`) REFERENCES `zamowienia` (`idzamowienia`),
  ADD CONSTRAINT `konfiguracja_has_zamowienia_ibfk_2` FOREIGN KEY (`konfiguracja_idKonfiguracja`) REFERENCES `konfiguracja` (`idKonfiguracja`);

--
-- Ograniczenia dla tabeli `koszyk_has_konfiguracja`
--
ALTER TABLE `koszyk_has_konfiguracja`
  ADD CONSTRAINT `koszyk_has_konfiguracja_ibfk_1` FOREIGN KEY (`koszyk_idKoszyk`) REFERENCES `koszyk` (`idKoszyk`),
  ADD CONSTRAINT `koszyk_has_konfiguracja_ibfk_2` FOREIGN KEY (`konfiguracja_idKonfiguracja`) REFERENCES `konfiguracja` (`idKonfiguracja`);

--
-- Ograniczenia dla tabeli `opcje_has_wersja`
--
ALTER TABLE `opcje_has_wersja`
  ADD CONSTRAINT `opcje_has_wersja_ibfk_1` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `opcje_has_wersja_ibfk_2` FOREIGN KEY (`opcje_idOpcje`) REFERENCES `opcje` (`idOpcje`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `pakiety_has_wersja`
--
ALTER TABLE `pakiety_has_wersja`
  ADD CONSTRAINT `pakiety_has_wersja_ibfk_1` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pakiety_has_wersja_ibfk_2` FOREIGN KEY (`pakiety_idpakiety`) REFERENCES `pakiety` (`idpakiety`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `podstwyp_has_wersja`
--
ALTER TABLE `podstwyp_has_wersja`
  ADD CONSTRAINT `podstwyp_has_wersja_ibfk_2` FOREIGN KEY (`podstWyp_idpodstWyp`) REFERENCES `podstwyp` (`idpodstWyp`);

--
-- Ograniczenia dla tabeli `samochod_has_wersja`
--
ALTER TABLE `samochod_has_wersja`
  ADD CONSTRAINT `samochod_has_wersja_ibfk_3` FOREIGN KEY (`samochod_idsamochod`) REFERENCES `samochod` (`idsamochod`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `samochod_has_wersja_ibfk_4` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `silnik_has_wersja`
--
ALTER TABLE `silnik_has_wersja`
  ADD CONSTRAINT `silnik_has_wersja_ibfk_1` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `silnik_has_wersja_ibfk_2` FOREIGN KEY (`silnik_idSilnik`) REFERENCES `silnik` (`idSilnik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `wersja_has_dodatki`
--
ALTER TABLE `wersja_has_dodatki`
  ADD CONSTRAINT `wersja_has_dodatki_ibfk_1` FOREIGN KEY (`dodatki_idDodatki`) REFERENCES `dodatki` (`idDodatki`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wersja_has_dodatki_ibfk_2` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `wersja_has_wnetrze`
--
ALTER TABLE `wersja_has_wnetrze`
  ADD CONSTRAINT `wersja_has_wnetrze_ibfk_1` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wersja_has_wnetrze_ibfk_2` FOREIGN KEY (`wnetrze_idWnetrze`) REFERENCES `wnetrze` (`idWnetrze`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
