-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 29 Maj 2021, 13:22
-- Wersja serwera: 10.4.18-MariaDB
-- Wersja PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kia1`
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
(1, 'administrator990409', 'filiprzepiela@o2.pl', NULL, '$2y$10$lRxqKDqfwd3e6Mz.6ajUWOIDbIYaRMCM2kzXadw0vPo3hDzUOvExq', '12345', '2021-05-09 08:18:53', '2021-05-09 08:18:53', 1);

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
  `cenaDodatki` int(11) DEFAULT NULL,
  `opisDodatki` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dodatki`
--

INSERT INTO `dodatki` (`idDodatki`, `nazwaDodatki`, `typDodatki`, `cenaDodatki`, `opisDodatki`) VALUES
(1, 'Naklejki ozdobne ze wzorem pasów wyścigowych (błyszcząca czerń)', 'naklejki', 438, 'Podkreślają dynamikę i nowoczesność linii nadwozia. Wysoka jakość wykonania. Idealnie dopasowane do kształtu Kia Ceed. cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(2, 'Naklejki ozdobne ze wzorem pasów wyścigowych (błyszcząca czerwień)', 'naklejki', 438, 'Podkreślają dynamikę i nowoczesność linii nadwozia. Wysoka jakość wykonania. Idealnie dopasowane do kształtu Kia Ceed.\r\nDostępne w błyszczącej czerni, błyszczącej czerwieni lub w matowej bieli. Odporne na zjawiska pogodowe oraz częste korzystanie z myjni samochodowej. Zalecany specjalistyczny montaż.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.');

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
  `nazwaFelgi` varchar(45) DEFAULT NULL,
  `rozmiarFelgi` int(11) DEFAULT NULL,
  `rozstaw_srubFelgi` varchar(45) DEFAULT NULL,
  `cenaFelgi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `felgi`
--

INSERT INTO `felgi` (`idFelgi`, `nazwaFelgi`, `rozmiarFelgi`, `rozstaw_srubFelgi`, `cenaFelgi`) VALUES
(1, '15\'\' stalowe obręcze kół z oponami 195/65/R15', 15, 'rostaw', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `felgi_has_wersja`
--

CREATE TABLE `felgi_has_wersja` (
  `idFelgihasWersja` int(11) NOT NULL,
  `felgi_idFelgi` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `cenaKolor` int(11) DEFAULT NULL,
  `Zdjecie` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `kolor`
--

INSERT INTO `kolor` (`idKolor`, `nazwaKolor`, `cenaKolor`, `Zdjecie`) VALUES
(1, 'Infra Red', 2500, 'https://i.imgur.com/dsQp4oZ.png'),
(2, 'zielony', 900, ''),
(3, 'pomarańczowy', 900, ''),
(4, 'Sparkling Silver', 2500, 'https://lh3.googleusercontent.com/Ib30eckggEYnXE4ejnGCp48vI7Mfer1rDbL_k045dcd2p3sQA34n3zQSBmtDeoKeMV0O4CJR8Vze7fPwHOM6yiJapFfSBud-_4k2NoIVXeeIFN9WaCVOBV36XIMRRS0zymVanwx8JSC9EdOncoSnn1r6GPLZYrr8nevzKNaxWL2GF7MLehq39SP-wCXASkseCKJAMnawnM--EycS25QpDTeVsZc4chMLJEA0tzJqN42zhJmsr3c_9CXNx5jWto3jXytFDpx9gyGzl-IhpTa-BITqem_bVHN4qHaytLndoOa1PKhqpF_Sq1bJPd0ypGawpgnx0pbvywsUoXTy2Hihuh8vCsCLPRwPJnEcZ5MIG8mHuAldnC-6D7DywnGTOPojB1UkHv-QfazKkx0XJzbXoD8Ni3dGMWDIxGLMKuCXigE7Cis4VNsnjGLtWuJkW8_iKG8oNp2LvPDrUDXGqmaS_mdv-6fiuBoDDlxeFJfBj-EkcHS_UPSGYxXgw3X7CdJNDeowo-scz6wKkhYrYTEB1GxoiGXW4aN2iFTy8AiZmr8FY1Nrf2-vmP5VSl7_oONYO0Tt0tiQ19jo947h6CUfyzREDpOhNbdtfyOHSZcSlH-DcjHouYJOGGlHcJPbvNZKq6JxB8nw5ku_oFVTNUJiJDT5wdU6LmgQ5tNOGOTs0cljNWUjDe6J-11eUnhmY0sQxNS8-y9lUSqNbny4dWMP_Kw=w107-h51-no?authuser=0'),
(6, 'Dark Penta Metal', 2500, 'https://lh3.googleusercontent.com/7HJ1OpommZ5SM9qW6ktYAdStkGJeqYDP3T_TYgOzN1h8UzmjyDMAUNknx6NSJ22sW2I_lQsOP11bUcUsbNtD0WPPfpyD-uGNl0SCNmESkMW2ECDmGDNzqXa2ujLgS0XESeBo1GqgyjvCRzJMXB96bT-cYssoKRY740KUhjZ8jNJlZ693iYSPRK0CvHIeHKq6uIz6mZcwx79e42bjo3_LH0Po6z8ufTjUGEN3uPBeMEE6sQLcGZCkRrMWx2_JnpssZ7uc6Zzy4VTNCKqEicP6QsiBGUjaDUmWNTALpNLjn9yRZXFsIjSeFpw_l8IcG7g3-RGbM73L3E534Zr-BbSbXZSisUlMT_fMrEF9FZiC4YMqgJ01K-GcroWSyQs19s7Pfm921glScJ8YfjPD861GYyl53ef9AloKtmwNFvhXigr2Z7QeiXECb0iXrPvYMBkK_9hAiGjJl5CvL4ROlr2tIg9C1dsO0MBZd0BUuq-9nSaWd-IvULWGit33LzDcpIT0gKgqEhVl_4Q9Md0Q8I0Oezw0SPXEKelA_FzCnKsCgeGythqEjwsvWg0cmNjl4ku_zo0S4TXsFvh6D7lUFp3Yx54yn1V_h4Ta14HSbDpMKAzhfPLiYGUI0QPTnCOl2kjjhHIC7Oc9Ot1_7HTFbizrHfHGunj2W-Lg66SL34C67iZjOhuJYtaF9_DZyvw3nOWNh8G_wnXflcqhOa_Euf2iqTY=w105-h50-no?authuser=0'),
(7, NULL, NULL, ''),
(8, 'turkusowy', 3000, ''),
(9, 'jasno zielony', 900, ''),
(10, NULL, NULL, ''),
(11, 'Blue Flame', 2500, 'https://i.imgur.com/L6BFYS8.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kolor_has_wersja`
--

CREATE TABLE `kolor_has_wersja` (
  `idKolorhasWersja` int(11) NOT NULL,
  `kolor_idKolor` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `nazwaOpcje` varchar(45) DEFAULT NULL,
  `cenaOpcje` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `opcje`
--

INSERT INTO `opcje` (`idOpcje`, `nazwaOpcje`, `cenaOpcje`) VALUES
(1, 'Czujniki parkowania z tyłu', 1000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opcje_has_wersja`
--

CREATE TABLE `opcje_has_wersja` (
  `idOpcjehasWersja` int(11) NOT NULL,
  `opcje_idOpcje` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pakiety`
--

CREATE TABLE `pakiety` (
  `idpakiety` int(11) NOT NULL,
  `nazwaPakiety` varchar(45) DEFAULT NULL,
  `cenaPakiety` int(11) DEFAULT NULL,
  `opisPakiety` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pakiety`
--

INSERT INTO `pakiety` (`idpakiety`, `nazwaPakiety`, `cenaPakiety`, `opisPakiety`) VALUES
(1, 'Dopłata do autoalarmu akcesoryjnego', 1000, 'Dopłata do autoalarmu akcesoryjnego z funkcjami: czujnik ruchu, dwuobwodowy, własne zasilanie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pakiety_has_wersja`
--

CREATE TABLE `pakiety_has_wersja` (
  `idPakietyhasWersja` int(11) NOT NULL,
  `pakiety_idpakiety` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
('filiprzepiela@interia.pl', '$2y$10$xFgt2MMfdzItEIMWTn96dO3QnVDFX85p1hbukOmKmEE/bbcUm/8BO', '2021-05-17 15:33:28');

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
(19, 'Stinger', '', '239 990', 'https://www.kia.com/content/dam/kwcms/kme/global/en/assets/gnb/kia-stinger-pe-my21-gt-explore-268x134.png'),
(20, 'Škoda Octavia', 'radio\r\nklima\r\nzapasowe koła', '10000', 'https://lh3.googleusercontent.com/vr-ZWFa60q6xxSupMtZPriG7FUh8_GoHjIFTWICrFTefKXfXBh_Rt6DHWlRpJ82lYU0ocwThICz7vq6Lr1uPlmt1XQr0iCOkxWsEJsQYlbvQuZGkSNG1CA8zZyVUwlccrgkwIdzm7e1am4jQVdpXgwCIP2H1rymBF15MKpyRZiTz-83z67NDjqe6M47BTymEiuuDRxI3QGTc6tdvEg_CnrCg9dAHusXVl9AT-YW5hSre-iURmitNtg0JQAFqPjw9zHJkOt30L8ebwH1DPbbEq1oLyssev4GmNwVFaxgRRvyjleC8Zxqa8njrzfBbHtZFssp351I7Or4q_G_fHfk99HXdoVy8UBD19m4dv2k29b7XvQ88reoA9yzZ0K9gC23tJJzgzLiMlLLj2f2uv2byTSJemZJw96dIb_q1vyCiTQ8J-vOFlEzISSDsUYkt-p4LddEwGyMLuOhnPk7i-S6wdEeO_Ch7q1W37cuMId8fZZ9OgmH08JCfg34PgGJwbH040gCnbuFSV0-AOquDUq080n85mTkpqdoH-xmNHfjMKgrAfX6dqhoL-ovXBrW5qX7RsXXy3OfjZr3SY-WZbNNoqX2nifGt4G7CDZR4sZpCelk9aFUS5_brKNUhkJEudWxOX3q15ZA1RwxPPNxy6_v8cn86tpfFuRK_kL3bW8cVfj3oyIPjmbOCPWvMfV6uLgmRWI1p3k32NVaBoc2TKHzLpEc=w422-h238-no?authuser=0');

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
(22, 5, 22);

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
(3, '1.5', '1.5 T-GDI 160KM 6MT', '160 KM', '75490'),
(4, '1.6', '1.6 CRDi SCR MHEV 136 KM 6iMT', '136 KM', '82990'),
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
(38, '1.6', '1.6 CRDi SCR MHEV 136 KM 7DCT', '136 KM', '113 990');

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
(4, 'Aga134', 'g@aaa.pl', NULL, '$2y$10$n39jtnuT/uWlJvEUWmbe9uldeSwLcRFOd7Mwk.iWusZVU4DBoGzi2', 'WSjYTcVjQRU32ydLU7edVp4YN9rhrmeezDa9OGMMuqSHM5AHjCfIxwAse8DK', '2021-05-12 09:49:56', '2021-05-12 09:50:54'),
(5, 'psmola99', 'pawel@smola.pl', NULL, '$2y$10$Y2aBNu6Gsrga5yr8PhnOZOHFzLXKHnxo8kWwqXxI8sGJLTs/nKKO.', NULL, '2021-05-20 19:01:18', '2021-05-20 19:01:18');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wersja`
--

CREATE TABLE `wersja` (
  `idWersja` int(11) NOT NULL,
  `nazwaWersja` varchar(45) DEFAULT NULL,
  `podst_wypWersja` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `wersja`
--

INSERT INTO `wersja` (`idWersja`, `nazwaWersja`, `podst_wypWersja`) VALUES
(1, 'Ceed S', '- Tempomat z ogranicznikiem prędkości\r\n- Asystent utrzymania pasa ruchu (LKA)\r\n- System autonomicznego hamowania (FCA)\r\n- Klimatyzacja manualna\r\n- Elektryczne sterowanie szyb przednich i tylnych'),
(2, 'Ceed M', '8\" kolory ekran dotykowy LCD, Apple CarPlay, Android Autokamera cofania z dynamicznymi liniamitylne lampy LED z funkcją do jazdy dziennejklimatyzacja automatycznaelektrochromatyczne lusterko wewnętrzne'),
(3, 'Ceed L', '16-calowe felgi aluminiowe z oponami 205/55/R16Kolorowy wyświetlacz LCD komputera pokładowego o przekątnej 4.2\"Elektrycznie składane lusterka zewnętrzne z kierunkowskazami LEDElektryczna regulacja podparcia odcinka lędźwiowego foteli przednich'),
(4, 'Ceed Business Line', 'Światła mijania oraz drogowe wykonane w technologii LEDKia Navi System z 10,25: kolorowym ekranem dotykowymTuner radia cyfrowego DAB+Felgi aluminiowe 17\"'),
(5, 'Creed GT Line', 'Kia Navi System PlusFelgi aluminiowe 17\"Cyfrowe zegaryKia Smart KeyDedykowana tapicerka GT Line'),
(6, 'Ceed Business Line Plus', 'Kia Smart KeyCyfrowe zegary z wyświetlaczem 12,3\"System audio premium JBLSystem autonomicznego parkowania z przednimi i tylnymi czujnikami'),
(7, 'Ceed GT', 'Sportowe fotele z tapicerką skórzano-zamszową, 18\" felgi aluminiowe, Światła w technologii LED, System dostępu bez kluczykowego'),
(8, 'Picanto M', 'Elektryczne sterowane szyby drzwi przednich i tylnych\r\nElektrycznie regulowane lusterka z funkcją podgrzewania\r\nCentralny zamek z alarmem,\r\nimmobilizer,\r\nskładany kluczyk \r\nCzujnik zmierzchu\r\nRegulacja kolumny kierownicy'),
(9, 'Picanto L', 'Klimatyzacja automatyczna\r\n8” kolorowy ekran dotykowy\r\nInterfejs Android Auto/Apple CarPlay\r\nKamera cofania z dynamicznymi liniami ułatwiającymi parkowanie\r\nŚwiatła do jazdy dziennej wykonane w technologii LED'),
(10, 'Picanto Business Line', 'Podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nKia Smart Key - system otwierania i uruchamiania samochodu bez użycia kluczyka\r\nKia Navi System - system mutlimedialny z nawigacją oraz 8\" ekranem dotykowym\r\nKia UVO Connect - zestaw usług cyfrowych\r\nTylne czujniki parkowania'),
(11, 'Picanto GT Line', 'Podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nTapicerka ze skóry ekologicznej\r\n16\" aluminiowe obręcze kół z oponami 195/45R16\r\nKia Smart Key - system otwierania i uruchamiania pojazdu bez użycia kluczyka\r\nLusterka zewnętrzne z kierunkowskazami LED'),
(12, 'Picanto X-Line', 'Podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nTapicerka ze skóry ekologicznej\r\n16\" aluminiowe obręcze kół z oponami 195/45R16\r\nKia Smart Key - system otwierania i uruchamiania pojazdu bez użycia kluczyka\r\nLusterka zewnętrzne z kierunkowskazami LED'),
(13, 'Rio M', 'Elektryczne sterowane szyby drzwi przednich z funkcją bezpieczeństwa\r\nElektrycznie regulowane lusterka z funkcją podgrzewania\r\nZdalnie sterowany centralny zamek\r\nKlimatyzacja manualna\r\nCzujnik zmierzchu – automatyczne włączanie świateł mijania\r\n15\" stalowe obręcze kół z oponami 185/65/R15 oraz kołpaki'),
(14, 'Rio L', 'Klimatyzacja automatyczna z funkcją odparowywania szyby przedniej\r\n8” kolorowy ekran dotykowy\r\nInterfejs Android Auto/Apple CarPlay\r\nKamera cofania z dynamicznymi liniami ułatwiającymi parkowanie\r\nTylne czujniki parkowania\r\nCzujnik deszczu z automatycznymi wycieraczkami\r\nPakiet bezpieczeństwa z systemami: \r\n•automatycznego hamowania • automatycznego przełączania świateł mijania na drogowe i odwrotnie • wykrywania zmęczenia kierowcy • utrzymania auta pośrodku pasa ruchu • tempomat'),
(15, 'Rio Business Line', 'Światła mijania i drogowe wykonane w technologii LED z funkcją statycznego doświetlania zakrętów\r\nPakiet zimowy: \r\npodgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nTylne lampy wykonane w technologii LED\r\n16\" aluminiowe obręcze kół z oponami 195/55/R16\r\nKia Smart Key - system otwierania i uruchamiania samochodu bez użycia kluczyka\r\nPrzyciemniane szyby tylne'),
(16, 'Rio GT Line', 'Światła mijania i drogowe wykonane w technologii LED ze statycznym doświetlaniem zakrętów\r\nDedykowane 17\" aluminiowe obręcze kół z oponami 205/45/R17\r\nPrzednie czujniki parkowania\r\nKia Navi System - system multimedialny z nawigacją satelitarną\r\nKia Uvo Connect – zestaw usług cyfrowych z darmowym 7 letnim planem obsługi\r\nElektrochromatyczne lusterko wsteczne'),
(17, 'Ceed Kombi S', 'Tempomat z ogranicznikiem prędkości\r\nSystem autonomicznego hamowania (FCA)\r\nAsystent utrzymania pasa ruchu (LKA)\r\nKlimatyzacja manualna\r\nElektryczne sterowanie szyb przednich i tylnych'),
(18, 'Ceed Kombi M', '8\" kolory ekran dotykowy LCD, \r\nApple CarPlay, Android Auto\r\nkamera cofania z dynamicznymi liniami\r\ntylne lampy LED z funkcją do jazdy dziennej\r\nklimatyzacja automatyczna\r\nelektrochromatyczne lusterko wewnętrzne'),
(19, 'Ceed Kombi L', '16-calowe felgi aluminiowe z oponami 205/55/R16\r\nKolorowy wyświetlacz LCD komputera pokładowego o przekątnej 4.2\"\r\nElektrycznie składane lusterka zewnętrzne z kierunkowskazami LED\r\nElektryczna regulacja podparcia odcinka lędźwiowego foteli przednich'),
(20, 'Ceed Kombi GT Line', 'Kia Navi System Plus\r\nFelgi aluminiowe 17\"\r\nŚwiatła w technologii LED\r\nKia Smart Key\r\nDedykowana tapicerka GT Line'),
(21, 'Ceed Kombi Business Line', 'Światła mijania oraz drogowe wykonane w technologii LED\r\nKia Navi System - system nawigacji satelitarnej z obsługą w języku polskim\r\n10,25\" kolorowy ekran dotykowy LCD\r\nTuner radia cyfrowego DAB+\r\nBluetooth z możliwością podłączenia dwóch urządzeń\r\nFelgi aluminiowe 17\" z oponami 225/45/R17'),
(22, 'Creed Kombi Business Line Plus', 'Kia Smart Key\r\nKia Navi System Plus\r\nKia Auto Park Assist\r\nPakiet zimowy'),
(23, 'Ceed Kombi PHEV L', '8” kolorowy, dotykowy ekran LCD, \r\ninterfejs Apple CarPlay oraz Android Auto\r\nKamera cofania z dynamicznymi liniami ułatwiającymi parkowanie, \r\nczujniki parkowania tył\r\nKia Forward Collision Avoidance Assist (FCA) -system autonomicznego hamowania z dodatkową funkcją wykrywania pieszych\r\nKia Smart Key\r\nOświetlenie kameralne przestrzeni na nogi dla pasażerów przednich siedzeń'),
(24, 'Ceed Kombi PHEV Business Line', 'Kia Navi System z 10,25-calowym dotykowym ekranem\r\nKia UVO ConnectKia Supervision Cluster - cyfrowe zegary 12,3\"\r\nPakiet zimowy\r\nIndukcyjna ładowarka do telefonu\r\nKia Auto Park Assist'),
(25, 'Ceed Kombi PHEV XL', 'Kia Navi System - system nawigacji satelitarnej z obsługą w języku polskim\r\n10.25” kolorowy ekran dotykowy LCD,\r\nKia Supervision Cluster – cyfrowe zegary z kolorowym ekranem o przekątnej 12.3”\r\nKia Park Assist – system automatycznego parkowania z przednimi oraz tylnymi czujnikami\r\nIndukcyjna ładowarka do telefonu\r\nKia UVO Connect – zestaw usług cyfrowych zapewniających wsparcie kierowcy w czasie rzeczywistym oraz zdalny dostęp do informacji o Twoim samochodzie\r\nKia Smart Tailgate - funkcja automatycznego otwierania i zamykania pokrywy bagażnika• Kia Speed Limit Warning (SLW) – system rozpoznający znaki ograniczeń prędkości• \r\nPakiet zimowy: podgrzewane przednie fotele z możliwością stopniowania, podgrzewana kierownica, podgrzewane dysze spryskiwaczy• Elektryczna regulacja foteli przednich, funkcja pamięci dla fotela kierowcy• Wentylowane fotele przednie• Skórzana tapicerka foteli'),
(26, 'ProCeed GT Line', 'światła LED\r\n17\" aluminiowe obręcze kół\r\n8\" kolorowy wyświetlacz z interfejsem Android Auto i Apple Car Play\r\nsystem autonomicznego hamowania\r\nsystem dostępu bezkluczykowego'),
(27, 'ProCeed GT', 'sportowe fotele z tapicerką zamszowo-skórzaną\r\ndwie chromowane końcówki układu wydechowego\r\n18\" aluminiowe obręcze kół\r\nsportowa stylistyka zderzaków\r\nsystem automatycznego parkowania z czujnikami przód / tył'),
(28, 'XCeed M', '8” kolorowy, dotykowy ekran LCD\r\nŚwiatła mijania, drogowe oraz do jazdy dziennej LED\r\nKamera cofania\r\nSystem autonomicznego hamowania'),
(29, 'XCeed L', 'Klimatyzacja automatyczna, dwustrefowa\r\nElektrycznie składane lusterka zewnętrzne z funkcją kierunkowskazów LED\r\nFelgi aluminiowe 18-calowe\r\nWykończenie wnętrza Premium'),
(30, 'XCeed Business Line', '10.25” kolorowy ekran dotykowy LCD\r\nKia Navi System Plus\r\nBluetooth z możliwością podłączenia dwóch urządzeń\r\nKia Park Assist\r\nPodgrzewane fotele, kierownica oraz dysze spryskiwaczy'),
(31, 'XCeed XL', 'Cyfrowe zegary z kolorowym ekranem 12,3\"\r\nKia Smart KeyKia Navi System Plus\r\nKia Park Assist\r\nIndukcyjna ładowarka do telefonu'),
(32, 'XCeed PHEV L', 'Klimatyzacja automatyczna, dwustrefowa\r\nElektryczna regulacja podparcia lędźwiowego foteli przednich\r\nKia Smart Key\r\nElektrochromatyczne lusterko wewnętrzne\r\nOświetlenie kameralne przestrzeni na nogi dla pasażerów przednich siedzeń'),
(33, 'XCeed PHEV Business Line', 'Kia Navi System\r\nBluetooth z możliwością podłączenia dwóch urządzeń\r\nKia UVO Connect\r\nKia Park Assist\r\nKia Supervision Cluster\r\nIndukcyjna ładowarka do telefonu'),
(34, 'XCeed PHEV XL', 'Kia Supervision Cluster\r\nKia UVO Connect\r\nKia Park Assist\r\nKia Navi System Plus\r\nWentylowane fotele przednie'),
(35, 'Stonic M', '8” kolorowy ekran dotykowy\r\nInterfejs Android Auto/Apple CarPlay\r\n16\" felgi aluminiowe z oponami 195/55/R16\r\nElektrycznie sterowane szyby drzwi przednich oraz tylnych\r\nElektrycznie regulowane lusterka z funkcją podgrzewania\r\nKlimatyzacja manualna\r\nŚwiatła pozycyjne oraz do jazdy dziennej wykonane w technologii LED'),
(36, 'Stonic L', 'Klimatyzacja automatyczna\r\nCzujniki parkowania z tyłu, kamera cofania\r\nKierownica wykończona perforowaną skórą\r\nCzujnik deszczu z automatycznymi wycieraczkami\r\nElektrochromatyczne lusterko wsteczne\r\nRelingi dachowe, podwójna podłoga bagażnika'),
(37, 'Stonic Business Line', 'Światła mijania i drogowe wykonane w technologii LED\r\nTylne lampy wykonane w technologii LED\r\nPakiet zimowy: podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nKia Smart Key\r\nPrzyciemniane szyby tylne\r\nSzyby przednie z funkcją zapobiegającą nadmiernemu nagrzewaniu się wnętrza'),
(38, 'Stonic GT Line', 'Światła mijania i drogowe wykonane w technologii LED\r\nTylne lampy wykonane w technologii LED\r\nPakiet zimowy: podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nPrzednie czujniki parkowania\r\nNavi System - system multimedialny z nawigacją satelitarną\r\nUvo Connect – zestaw usług cyfrowych z darmowym 7 letnim planem obsługi\r\nSzyby przednie atermiczne, przyciemniane szyby tylne'),
(39, 'Niro HEV M', '8-calowy kolorowy ekran dotykowy z kamerą cofania i interfejsami Android Auto/Apple CarPlay\r\nŚwiatła do jazdy dziennej LED, tylne lampy LED\r\nKlimatyzacja automatyczna 2-strefowa\r\nCzujniki parkowania z tyłu'),
(40, 'Niro HEV L', 'Aktywny tempomat\r\nSystem autonomicznego hamowania\r\nPodgrzewana kierownica i fotele przednie\r\nŚwiatła mijania i drogowe LED'),
(41, 'Niro HEV Business Line', 'Kia Navi System\r\n10,25-calowy kolorowy ekran dotykowy\r\nIndukcyjna łądowarka do telefonu\r\nCyfrowe zegary \"Supervision\" z 7-calowym wyświetlaczem LCD'),
(42, 'Niro HEV XL', 'Czujniki parkowania z przodu\r\nCyfrowe zegary Supervision z 7-calowym wyświetlaczem LCD\r\nSystem inforozrywki z kolorowym ekranem dotykowym 10,25\"\r\nWentylowane fotele przednie z pamięcią ustawień kierowcy'),
(43, 'Niro PHEV Business Line', 'Kia Navi System z 10.25\" kolorowym ekranem dotykowym i możlwiością personalizacji wyświetlacza\r\nKia Smart Key\r\nKameralne podświetlenie deski rozdzielczej'),
(44, 'Niro PHEV L', 'Światła mijania i drogowe LED, światła przeciwmgielne LED\r\nTapicerka skórzano-materiałowa\r\nPodgrzewana kierownica oraz fotele przednie\r\nElektrochromatyczne lusterko'),
(45, 'Niro PHEV M', '8-calowy dotykowy ekran systemu inforozrywki z interfejsami Andorid Auto/Apple CarPlay\r\nKlimatyzacja automatyczna 2-strefowa\r\nAktywny tempomat z funkcją Stop&Go\r\nKamera cofania'),
(46, 'Niro PHEV XL', 'Cyfrowe zegary \"Supervision\" z kolorwym wyświetlaczem LCD 7\"\r\nCzujniki parkowania z przodu\r\n10,25\" kolorowy ekran dotykowy z systemem nawigacji i systemem audio JBL\r\nIndukcyjna ładowarka do telefonu'),
(47, 'e-Niro M', 'System autonomicznego hamowania\r\nAktywny tempomat z automatyczną regulacją odległości\r\nTapicerka skórzano-materiałowa\r\nKlimatyzacja automatyczna'),
(48, 'e-Niro L', 'Reflektory w technologii LED\r\nPakiet zimowy\r\nCzujniki parkowania z przodu\r\nSystem nawigacji satelitarnej z 10.25”'),
(49, 'e-Niro XL', 'System monitorowania martwego pola\r\nSkórzana tapicerka foteli\r\nSystem audio JBL\r\nElektryczna regulacja foteli'),
(50, 'e-Soul M', 'Reflektory w technologii LED\r\nAktywny tempomat z automatyczną regulacją odległości\r\nKlimatyzacja automatyczna\r\nFelgi aluminowe 17”'),
(51, 'e-Soul L', 'System nawigacji satelitarnej z 10.25”\r\nZestaw audio firmy Harman / Kardon\r\nPakiet zimowy\r\nPrzednie czujniki parkowania'),
(52, 'e-Soul XL', 'System monitorowania martwego pola\r\nSkórzana tapicerka foteli\r\nIndukcyjna ładowarka do telefonu\r\nWyświetlacz przezierny „head up”'),
(53, 'Sportage S', 'przednie reflektory typu projekcyjnego\r\nklimatyzacja manualna\r\nradio CD MP3 z 6 głośnikami\r\n16\" felgi aluminiowe'),
(54, 'Sportage M', 'światła do jazdy dziennej LED\r\nelektrycznie składane lusterka\r\nwielofunkcyjna, skórzana kierownica\r\n17\" felgi aluminiowe'),
(55, 'Sportage L', 'Klimatyzacja automatyczna dwustrefowa\r\nPrzyciemniane szyby tylne\r\nCzujniki parkowania z przodu i z tyłu\r\nKia Navi System'),
(56, 'Sportage BUSINESS LINE', 'Światła do jazdy dziennej w stylistyce kostek lodu\r\nŚwiatła mijania i drogowe LED\r\nTylne lampy LED\r\nWykończenie wnętrza Premium'),
(57, 'Sportage GT Line', 'skórzana tapicerka i czarna podsufitka\r\nświatła przeciwmgielne LED\r\nmanetki do zmiany biegów (AT/7DCT)\r\n19\" felgi aluminiowe'),
(58, 'Sportage Black Edition', 'Czarne 17\" felgi aluminiowe z oponami 225/60/R17,\r\nDedykowane, lakierowane na czarno elementy nadwozia,\r\nPakiet systemów bezpieczeństwa, w tym Kia Forward Collision Avoidance Assist,\r\nPodgrzewane fotele oraz kanapa tylna,\r\nŚwiatła mijania oraz drogowe wykonane w technologii LED, kierunkowskazy LED.'),
(59, 'Sorento HEV M', 'Światła przednie i tylne LED\r\nCyfrowe zegary z kolorowym ekranem o przekątnej 12.3”\r\nEkran multimedialny 8”, tuner DAB, kamera cofania\r\nInterfejs Android Auto i Apple CarPlay\r\nSelektor skrzyni biegów typu „Shift By Wire”\r\nKlimatyzacja automatyczna dwustrefowa'),
(60, 'Sorento HEV L', 'Kia Navi System z kolorowym ekranem dotykowym 10.25” oraz UVO Connect\r\nKia Smart Key – system otwierania i uruchamiania pojazdu bez użycia kluczyka\r\nKia Highway Driving Assist – asystent jazdy po autostradzie i w korkach\r\nElektrycznie sterowany fotel kierowcy w 8 kierunkach\r\nElektrycznie sterowane podparcie lędźwiowego odcinka kręgosłupa'),
(61, 'Sorento HEV XL', 'Kameralne podświetlenie wnętrza\r\nRolety przeciwsłoneczne dla pasażerów drugiego rzędu\r\nElektrycznie sterowana pokrywa bagażnika\r\nSkórzana tapicerka foteli\r\nFotel pasażera z elektryczną regulacja w 8 kierunkach, regulacja wysokości fotela pasażera\r\nFelgi aluminiowe 19” z oponami 235/55/R19'),
(62, 'Sorento HEV PRESTIGE LINE', 'Asystent martwego pola z funkcją wyświetlania obrazu z kamer między zegarami\r\nSystem kamer 360°\r\nWyświetlacz Head-up\r\nSkórzana tapicerka \"NAPPA\"\r\nWentylowane fotele przednie\r\nSystem audio \"Bose\"\r\nZawieszenie tylne z funkcją poziomowania'),
(63, 'Nowe Sorento PHEV M', 'Światła przednie i tylne LED\r\nCyfrowe zegary z kolorowym ekranem o przekątnej 12.3”\r\nEkran multimedialny 8”, tuner DAB, kamera cofania\r\nInterfejs Android Auto i Apple CarPlay\r\nSelektor skrzyni biegów typu „Shift By Wire”\r\nKlimatyzacja automatyczna dwustrefowa\r\nFelgi aluminiowe 19” z oponami 235/55/R19'),
(64, 'Nowe Sorento PHEV L', 'Kia Navi System z kolorowym ekranem dotykowym 10.25” oraz UVO Connect\r\nKia Smart Key – system otwierania i uruchamiania pojazdu bez użycia kluczyka\r\nKia Highway Driving Assist – asystent jazdy po autostradzie i w korkach\r\nElektrycznie sterowany fotel kierowcy w 8 kierunkach\r\nElektrycznie sterowane podparcie lędźwiowego odcinka kręgosłupa\r\nFelgi aluminiowe 19” z oponami 235/55/R19'),
(65, 'Nowe Sorento PHEV XL', 'Kameralne podświetlenie wnętrza\r\nRolety przeciwsłoneczne dla pasażerów drugiego rzędu\r\nElektrycznie sterowana pokrywa bagażnika\r\nSkórzana tapicerka foteli\r\nFotel pasażera z elektryczną regulacja w 8 kierunkach, regulacja wysokości fotela pasażera\r\nFelgi aluminiowe 19” z oponami 235/55/R19'),
(66, 'Nowe Sorento PHEV PRESTIGE LINE', 'Asystent martwego pola z funkcją wyświetlania obrazu z kamer między zegarami\r\nSystem kamer 360°Wyświetlacz Head-up\r\nSkórzana tapicerka \"NAPPA\"\r\nWentylowane fotele przednie\r\nSystem audio \"Bose\"'),
(67, 'Sorento M', 'Światła przednie i tylne LED\r\nCyfrowe zegary z kolorowym ekranem o przekątnej 12.3”\r\nEkran multimedialny 8”, tuner DAB, interfejs Android Auto i Apple CarPlay\r\nKamera cofania z dynamicznym torem jazdy\r\nSelektor skrzyni biegów typu „Shift By Wire”\r\nZaawansowany kontroler trybu jazdy miejskiej i terenowej\r\nKlimatyzacja automatyczna dwustrefowa'),
(68, 'Sorento L', 'Kia Navi System z kolorowym ekranem dotykowym 10.25” z systemem UVO \r\nConnectKia Smart Key – system otwierania i uruchamiania pojazdu bez użycia kluczyka\r\nKia Highway Driving Assist – asystent jazdy po autostradzie i w korkach\r\nElektrycznie sterowany fotel kierowcy w 8 kierunkach, elektrycznie sterowane podparcie lędźwiowego odcinka kręgosłupa'),
(69, 'Sorento XL', 'Kameralne podświetlenie wnętrza\r\nRolety przeciwsłoneczne dla pasażerów drugiego rzędu\r\nElektrycznie sterowana pokrywa bagażnika\r\nSkórzana tapicerka foteli\r\nFotel pasażera z elektryczną regulacja w 8 kierunkach, regulacja wysokości fotela pasażera\r\nFelgi aluminiowe 19” z oponami 235/55/R19'),
(70, 'Sorento PRESTIGE LINE', 'Asystent martwego pola z funkcją wyświetlania obrazu z kamer między zegarami\r\nSystem kamer 360\r\nWyświetlacz Head-up\r\nSkórzana tapicerka \"NAPPA\"\r\nWentylowane fotele przednie\r\nSystem audio \"Bose\"\r\nZawieszenie tylne z funkcją poziomowania'),
(71, 'Stinger GT', 'Reflektory LED z dynamicznym doświetlaniem zakrętów\r\nEkran multimedialny 10,25\"\r\nAktywny tempomat\r\nWyświetlacz Head-Up Display\r\nSportowa, zamszowa tapcierka\r\nSystem audio Harman/Kardon\r\nOświetlenie kameralne wnętrza'),
(72, 'Stinger PRESTIGE LINE', 'System monitorowania martwego pola\r\nObraz martwego pola na wyświetlaczu między zegarami\r\nSystem monitorowania ruchu pojazdów podczas cofania\r\nSystem kamer 360Indukcyjna ładowarka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wersja_has_dodatki`
--

CREATE TABLE `wersja_has_dodatki` (
  `idWersjahasDodatki` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL,
  `dodatki_idDodatki` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wersja_has_wnetrze`
--

CREATE TABLE `wersja_has_wnetrze` (
  `idWersjahasWnetrze` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL,
  `wnetrze_idWnetrze` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wnetrze`
--

CREATE TABLE `wnetrze` (
  `idWnetrze` int(11) NOT NULL,
  `rodzajWnetrze` varchar(45) DEFAULT NULL,
  `kolorWnetrze` varchar(255) DEFAULT NULL,
  `cenaWnetrze` int(11) DEFAULT NULL,
  `Zdjecie` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `wnetrze`
--

INSERT INTO `wnetrze` (`idWnetrze`, `rodzajWnetrze`, `kolorWnetrze`, `cenaWnetrze`, `Zdjecie`) VALUES
(1, 'Tapicerka materiałowa', 'czarny', 0, ''),
(2, 'Tapicerka „Cosmo”', 'czarny', 0, ''),
(3, 'Tapicerka „Luna” CP1', 'czarno-szary', 0, ''),
(5, 'Tapicerka czarna M', 'czarny', 0, '');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `dealer`
--
ALTER TABLE `dealer`
  MODIFY `idDealer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `dodatki`
--
ALTER TABLE `dodatki`
  MODIFY `idDodatki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `felgi`
--
ALTER TABLE `felgi`
  MODIFY `idFelgi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `kolor`
--
ALTER TABLE `kolor`
  MODIFY `idKolor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `opcje`
--
ALTER TABLE `opcje`
  MODIFY `idOpcje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `pakiety`
--
ALTER TABLE `pakiety`
  MODIFY `idpakiety` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `samochod`
--
ALTER TABLE `samochod`
  MODIFY `idsamochod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `silnik`
--
ALTER TABLE `silnik`
  MODIFY `idSilnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `wersja`
--
ALTER TABLE `wersja`
  MODIFY `idWersja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT dla tabeli `wnetrze`
--
ALTER TABLE `wnetrze`
  MODIFY `idWnetrze` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- Ograniczenia dla tabeli `kategoria_has_samochod`
--
ALTER TABLE `kategoria_has_samochod`
  ADD CONSTRAINT `kategoria_has_samochod_ibfk_1` FOREIGN KEY (`kategoria_idkategoria`) REFERENCES `kategoria` (`idkategoria`),
  ADD CONSTRAINT `kategoria_has_samochod_ibfk_2` FOREIGN KEY (`samochod_idsamochod`) REFERENCES `samochod` (`idsamochod`);

--
-- Ograniczenia dla tabeli `kolor_has_wersja`
--
ALTER TABLE `kolor_has_wersja`
  ADD CONSTRAINT `kolor_has_wersja_ibfk_3` FOREIGN KEY (`kolor_idKolor`) REFERENCES `kolor` (`idKolor`);

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
-- Ograniczenia dla tabeli `podstwyp_has_wersja`
--
ALTER TABLE `podstwyp_has_wersja`
  ADD CONSTRAINT `podstwyp_has_wersja_ibfk_2` FOREIGN KEY (`podstWyp_idpodstWyp`) REFERENCES `podstwyp` (`idpodstWyp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
