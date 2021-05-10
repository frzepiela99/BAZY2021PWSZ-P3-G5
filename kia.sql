-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Maj 2021, 16:18
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
-- Baza danych: `kia`
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
  `imieDealer` varchar(45) DEFAULT NULL,
  `nazwiskoDealer` varchar(45) DEFAULT NULL,
  `telefonDealer` int(11) DEFAULT NULL,
  `adresDealer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `nazwaDodatki` varchar(45) DEFAULT NULL,
  `typDodatki` varchar(45) DEFAULT NULL,
  `cenaDodatki` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria_has_samochod`
--

CREATE TABLE `kategoria_has_samochod` (
  `idKategoriahasSamochod` int(11) NOT NULL,
  `kategoria_idkategoria` int(11) NOT NULL,
  `samochod_idsamochod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kolor`
--

CREATE TABLE `kolor` (
  `idKolor` int(11) NOT NULL,
  `nazwaKolor` varchar(45) DEFAULT NULL,
  `cenaKolor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `cenaOpcje` int(11) DEFAULT NULL,
  `pakiety_idPakiety` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `opisPakiety` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
('filiprzepiela@o2.pl', '$2y$10$XGw/ujZHc2f0tN8BtR74GOx6wHqPNCKY05SVS86e52c/mwfPT0vKq', '2021-05-09 19:27:41'),
('filiprzepiela@interia.pl', '$2y$10$7vYgAmltTp/pKYPRp7vCqOENhQ2kQFXhmNF3tZMEj6fijPPUysxYW', '2021-05-10 11:26:58');

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
  `kolor_idKolor` int(11) NOT NULL,
  `wnetrze_idWnetrze` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochod_has_wersja`
--

CREATE TABLE `samochod_has_wersja` (
  `idSamochodhasWersja` int(11) NOT NULL,
  `samochod_idsamochod` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `silnik`
--

CREATE TABLE `silnik` (
  `idSilnik` int(11) NOT NULL,
  `numerSilnik` int(11) DEFAULT NULL,
  `nazwaSilnik` varchar(45) DEFAULT NULL,
  `mocSilnik` varchar(45) DEFAULT NULL,
  `cenaSilnik` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `silnik_has_wersja`
--

CREATE TABLE `silnik_has_wersja` (
  `idSilnikhasWersja` int(11) NOT NULL,
  `silnik_idSilnik` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(3, 'pjoter99', 'pjoter99@pjoter.pl', NULL, '$2y$10$7NrHoLSdIoTW25Elt1gYW.T/4GmB118edprh9xgPVPvEdcd5HNpea', NULL, '2021-05-10 11:21:01', '2021-05-10 11:21:01');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wersja`
--

CREATE TABLE `wersja` (
  `idWersja` int(11) NOT NULL,
  `nazwaWersha` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `kolorWnetrze` varchar(45) DEFAULT NULL,
  `cenaWnetrze` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  ADD PRIMARY KEY (`idOpcje`),
  ADD KEY `pakiety_idPakiety` (`pakiety_idPakiety`);

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
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  ADD CONSTRAINT `felgi_has_wersja_ibfk_1` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`),
  ADD CONSTRAINT `felgi_has_wersja_ibfk_2` FOREIGN KEY (`felgi_idFelgi`) REFERENCES `felgi` (`idFelgi`);

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
  ADD CONSTRAINT `kolor_has_wersja_ibfk_1` FOREIGN KEY (`kolor_idKolor`) REFERENCES `kolor` (`idKolor`),
  ADD CONSTRAINT `kolor_has_wersja_ibfk_2` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`);

--
-- Ograniczenia dla tabeli `konfiguracja_has_samochod`
--
ALTER TABLE `konfiguracja_has_samochod`
  ADD CONSTRAINT `konfiguracja_has_samochod_ibfk_1` FOREIGN KEY (`konfiguracja_idKonfiguracja`) REFERENCES `konfiguracja` (`idKonfiguracja`),
  ADD CONSTRAINT `konfiguracja_has_samochod_ibfk_2` FOREIGN KEY (`samochod_idsamochod`) REFERENCES `samochod` (`idsamochod`);

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
  ADD CONSTRAINT `opcje_has_wersja_ibfk_1` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`),
  ADD CONSTRAINT `opcje_has_wersja_ibfk_2` FOREIGN KEY (`opcje_idOpcje`) REFERENCES `opcje` (`idOpcje`);

--
-- Ograniczenia dla tabeli `pakiety_has_wersja`
--
ALTER TABLE `pakiety_has_wersja`
  ADD CONSTRAINT `pakiety_has_wersja_ibfk_1` FOREIGN KEY (`pakiety_idpakiety`) REFERENCES `pakiety` (`idpakiety`),
  ADD CONSTRAINT `pakiety_has_wersja_ibfk_2` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`);

--
-- Ograniczenia dla tabeli `podstwyp_has_wersja`
--
ALTER TABLE `podstwyp_has_wersja`
  ADD CONSTRAINT `podstwyp_has_wersja_ibfk_1` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`),
  ADD CONSTRAINT `podstwyp_has_wersja_ibfk_2` FOREIGN KEY (`podstWyp_idpodstWyp`) REFERENCES `podstwyp` (`idpodstWyp`);

--
-- Ograniczenia dla tabeli `samochod_has_wersja`
--
ALTER TABLE `samochod_has_wersja`
  ADD CONSTRAINT `samochod_has_wersja_ibfk_1` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`),
  ADD CONSTRAINT `samochod_has_wersja_ibfk_2` FOREIGN KEY (`samochod_idsamochod`) REFERENCES `samochod` (`idsamochod`);

--
-- Ograniczenia dla tabeli `silnik_has_wersja`
--
ALTER TABLE `silnik_has_wersja`
  ADD CONSTRAINT `silnik_has_wersja_ibfk_1` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`),
  ADD CONSTRAINT `silnik_has_wersja_ibfk_2` FOREIGN KEY (`silnik_idSilnik`) REFERENCES `silnik` (`idSilnik`);

--
-- Ograniczenia dla tabeli `wersja_has_dodatki`
--
ALTER TABLE `wersja_has_dodatki`
  ADD CONSTRAINT `wersja_has_dodatki_ibfk_1` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`),
  ADD CONSTRAINT `wersja_has_dodatki_ibfk_2` FOREIGN KEY (`dodatki_idDodatki`) REFERENCES `dodatki` (`idDodatki`);

--
-- Ograniczenia dla tabeli `wersja_has_wnetrze`
--
ALTER TABLE `wersja_has_wnetrze`
  ADD CONSTRAINT `wersja_has_wnetrze_ibfk_1` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`),
  ADD CONSTRAINT `wersja_has_wnetrze_ibfk_2` FOREIGN KEY (`wnetrze_idWnetrze`) REFERENCES `wnetrze` (`idWnetrze`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
