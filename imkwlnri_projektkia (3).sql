-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 24 Kwi 2021, 19:51
-- Wersja serwera: 10.3.28-MariaDB
-- Wersja PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `imkwlnri_projektkia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `administrator`
--

CREATE TABLE `administrator` (
  `idAdministrator` int(11) NOT NULL,
  `emailAdministrator` varchar(45) DEFAULT NULL,
  `loginAdministrator` varchar(45) DEFAULT NULL,
  `hasloAdministrator` varchar(45) DEFAULT NULL,
  `idKonfiguracja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `dealer_idDealer` int(11) NOT NULL,
  `konfiguracja_idKonfiguracja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dealer_has_zamowienia`
--

CREATE TABLE `dealer_has_zamowienia` (
  `dealer_idDealer` int(11) NOT NULL,
  `zamowienia_idzamowienia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `felgi_idFelgi` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `kategoria_idkategoria` int(11) NOT NULL,
  `samochod_idsamochod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `idKlient` int(11) NOT NULL,
  `imieKlient` varchar(45) DEFAULT NULL,
  `nazwiskoKlient` varchar(45) DEFAULT NULL,
  `loginKlient` varchar(45) DEFAULT NULL,
  `hasloKlient` varchar(45) DEFAULT NULL,
  `emailKlient` varchar(45) DEFAULT NULL,
  `peselKlient` int(11) DEFAULT NULL,
  `telefonKlient` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `kolor_idKolor` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `konfiguracja_idKonfiguracja` int(11) NOT NULL,
  `samochod_idsamochod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `konfiguracja_has_zamowienia`
--

CREATE TABLE `konfiguracja_has_zamowienia` (
  `konfiguracja_idKonfiguracja` int(11) NOT NULL,
  `zamowienia_idzamowienia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `koszyk`
--

CREATE TABLE `koszyk` (
  `idKoszyk` int(11) NOT NULL,
  `idKlient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `koszyk_has_konfiguracja`
--

CREATE TABLE `koszyk_has_konfiguracja` (
  `koszyk_idKoszyk` int(11) NOT NULL,
  `konfiguracja_idKonfiguracja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `opcje_idOpcje` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `pakiety_idpakiety` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `podstWyp`
--

CREATE TABLE `podstWyp` (
  `idpodstWyp` int(11) NOT NULL,
  `samochod_idsamochod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `podstWyp_has_wersja`
--

CREATE TABLE `podstWyp_has_wersja` (
  `podstWyp_idpodstWyp` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `samochod_idsamochod` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `silnik_idSilnik` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `wersja_idWersja` int(11) NOT NULL,
  `dodatki_idDodatki` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wersja_has_wnetrze`
--

CREATE TABLE `wersja_has_wnetrze` (
  `wersja_idWersja` int(11) NOT NULL,
  `wnetrze_idWnetrze` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `klient_idKlient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`idAdministrator`),
  ADD KEY `idKonfiguracja` (`idKonfiguracja`);

--
-- Indeksy dla tabeli `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`idDealer`);

--
-- Indeksy dla tabeli `dealer_has_konfiguracja` //PROBLEMIK
--
ALTER TABLE `dealer_has_konfiguracja`
  ADD PRIMARY KEY (`dealer_idDealer`,`konfiguracja_idKonfiguracja`),
  ADD KEY `konfiguracja_idKonfiguracja` (`konfiguracja_idKonfiguracja`);

--
-- Indeksy dla tabeli `dealer_has_zamowienia`
--
ALTER TABLE `dealer_has_zamowienia`
  ADD PRIMARY KEY (`dealer_idDealer`,`zamowienia_idzamowienia`),
  ADD KEY `zamowienia_idzamowienia` (`zamowienia_idzamowienia`);

--
-- Indeksy dla tabeli `dodatki`
--
ALTER TABLE `dodatki`
  ADD PRIMARY KEY (`idDodatki`);

--
-- Indeksy dla tabeli `felgi`
--
ALTER TABLE `felgi`
  ADD PRIMARY KEY (`idFelgi`);

--
-- Indeksy dla tabeli `felgi_has_wersja`
--
ALTER TABLE `felgi_has_wersja`
  ADD PRIMARY KEY (`felgi_idFelgi`,`wersja_idWersja`),
  ADD KEY `wersja_idWersja` (`wersja_idWersja`);

--
-- Indeksy dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`idkategoria`);

--
-- Indeksy dla tabeli `kategoria_has_samochod`
--
ALTER TABLE `kategoria_has_samochod`
  ADD PRIMARY KEY (`kategoria_idkategoria`,`samochod_idsamochod`),
  ADD KEY `samochod_idsamochod` (`samochod_idsamochod`);

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`idKlient`);

--
-- Indeksy dla tabeli `kolor`
--
ALTER TABLE `kolor`
  ADD PRIMARY KEY (`idKolor`);

--
-- Indeksy dla tabeli `kolor_has_wersja`
--
ALTER TABLE `kolor_has_wersja`
  ADD PRIMARY KEY (`kolor_idKolor`,`wersja_idWersja`),
  ADD KEY `wersja_idWersja` (`wersja_idWersja`);

--
-- Indeksy dla tabeli `konfiguracja`
--
ALTER TABLE `konfiguracja`
  ADD PRIMARY KEY (`idKonfiguracja`);

--
-- Indeksy dla tabeli `konfiguracja_has_samochod`
--
ALTER TABLE `konfiguracja_has_samochod`
  ADD PRIMARY KEY (`konfiguracja_idKonfiguracja`,`samochod_idsamochod`),
  ADD KEY `samochod_idsamochod` (`samochod_idsamochod`);

--
-- Indeksy dla tabeli `konfiguracja_has_zamowienia`
--
ALTER TABLE `konfiguracja_has_zamowienia`
  ADD PRIMARY KEY (`konfiguracja_idKonfiguracja`,`zamowienia_idzamowienia`),
  ADD KEY `zamowienia_idzamowienia` (`zamowienia_idzamowienia`);

--
-- Indeksy dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  ADD PRIMARY KEY (`idKoszyk`),
  ADD KEY `idKlient` (`idKlient`);

--
-- Indeksy dla tabeli `koszyk_has_konfiguracja`
--
ALTER TABLE `koszyk_has_konfiguracja`
  ADD PRIMARY KEY (`koszyk_idKoszyk`,`konfiguracja_idKonfiguracja`),
  ADD KEY `konfiguracja_idKonfiguracja` (`konfiguracja_idKonfiguracja`);

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
  ADD PRIMARY KEY (`opcje_idOpcje`,`wersja_idWersja`),
  ADD KEY `wersja_idWersja` (`wersja_idWersja`);

--
-- Indeksy dla tabeli `pakiety`
--
ALTER TABLE `pakiety`
  ADD PRIMARY KEY (`idpakiety`);

--
-- Indeksy dla tabeli `pakiety_has_wersja`
--
ALTER TABLE `pakiety_has_wersja`
  ADD PRIMARY KEY (`pakiety_idpakiety`,`wersja_idWersja`),
  ADD KEY `wersja_idWersja` (`wersja_idWersja`);

--
-- Indeksy dla tabeli `podstWyp`
--
ALTER TABLE `podstWyp`
  ADD PRIMARY KEY (`idpodstWyp`),
  ADD KEY `samochod_idsamochod` (`samochod_idsamochod`);

--
-- Indeksy dla tabeli `podstWyp_has_wersja`
--
ALTER TABLE `podstWyp_has_wersja`
  ADD PRIMARY KEY (`podstWyp_idpodstWyp`,`wersja_idWersja`),
  ADD KEY `wersja_idWersja` (`wersja_idWersja`);

--
-- Indeksy dla tabeli `samochod` // PROBLEMIK 
--
ALTER TABLE `samochod`
  ADD PRIMARY KEY (`idsamochod`),
  ADD KEY `kolor_idKolor` (`kolor_idKolor`,`wnetrze_idWnetrze`),
  ADD KEY `wnetrze_idWnetrze` (`wnetrze_idWnetrze`);

--
-- Indeksy dla tabeli `samochod_has_wersja`
--
ALTER TABLE `samochod_has_wersja`
  ADD PRIMARY KEY (`samochod_idsamochod`,`wersja_idWersja`),
  ADD KEY `wersja_idWersja` (`wersja_idWersja`);

--
-- Indeksy dla tabeli `silnik`
--
ALTER TABLE `silnik`
  ADD PRIMARY KEY (`idSilnik`);

--
-- Indeksy dla tabeli `silnik_has_wersja`
--
ALTER TABLE `silnik_has_wersja`
  ADD PRIMARY KEY (`silnik_idSilnik`,`wersja_idWersja`),
  ADD KEY `wersja_idWersja` (`wersja_idWersja`);

--
-- Indeksy dla tabeli `wersja`
--
ALTER TABLE `wersja`
  ADD PRIMARY KEY (`idWersja`);

--
-- Indeksy dla tabeli `wersja_has_dodatki`
--
ALTER TABLE `wersja_has_dodatki`
  ADD PRIMARY KEY (`wersja_idWersja`,`dodatki_idDodatki`),
  ADD KEY `dodatki_idDodatki` (`dodatki_idDodatki`);

--
-- Indeksy dla tabeli `wersja_has_wnetrze`
--
ALTER TABLE `wersja_has_wnetrze`
  ADD PRIMARY KEY (`wersja_idWersja`,`wnetrze_idWnetrze`),
  ADD KEY `wnetrze_idWnetrze` (`wnetrze_idWnetrze`);

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
  ADD KEY `klient_idKlient` (`klient_idKlient`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `idKlient` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `samochod` //PROBLEM
--
ALTER TABLE `samochod`
  MODIFY `idsamochod` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `administrator_ibfk_1` FOREIGN KEY (`idKonfiguracja`) REFERENCES `konfiguracja` (`idKonfiguracja`);

--
-- Ograniczenia dla tabeli `dealer` //PROBLEM
--
ALTER TABLE `dealer`
  ADD CONSTRAINT `dealer_ibfk_1` FOREIGN KEY (`idDealer`) REFERENCES `dealer_has_konfiguracja` (`dealer_idDealer`);

--
-- Ograniczenia dla tabeli `dealer_has_konfiguracja` //problem
--
ALTER TABLE `dealer_has_konfiguracja`
  ADD CONSTRAINT `dealer_has_konfiguracja_ibfk_1` FOREIGN KEY (`konfiguracja_idKonfiguracja`) REFERENCES `konfiguracja` (`idKonfiguracja`);

--
-- Ograniczenia dla tabeli `dealer_has_zamowienia`
--
ALTER TABLE `dealer_has_zamowienia`
  ADD CONSTRAINT `dealer_has_zamowienia_ibfk_1` FOREIGN KEY (`dealer_idDealer`) REFERENCES `dealer` (`idDealer`),
  ADD CONSTRAINT `dealer_has_zamowienia_ibfk_2` FOREIGN KEY (`zamowienia_idzamowienia`) REFERENCES `zamowienia` (`idzamowienia`);

--
-- Ograniczenia dla tabeli `felgi_has_wersja`
--
ALTER TABLE `felgi_has_wersja`
  ADD CONSTRAINT `felgi_has_wersja_ibfk_1` FOREIGN KEY (`felgi_idFelgi`) REFERENCES `felgi` (`idFelgi`),
  ADD CONSTRAINT `felgi_has_wersja_ibfk_2` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`);

--
-- Ograniczenia dla tabeli `kategoria_has_samochod`
--
ALTER TABLE `kategoria_has_samochod`
  ADD CONSTRAINT `kategoria_has_samochod_ibfk_2` FOREIGN KEY (`kategoria_idkategoria`) REFERENCES `kategoria` (`idkategoria`);

--
-- Ograniczenia dla tabeli `kolor_has_wersja`
--
ALTER TABLE `kolor_has_wersja`
  ADD CONSTRAINT `kolor_has_wersja_ibfk_1` FOREIGN KEY (`kolor_idKolor`) REFERENCES `kolor` (`idKolor`),
  ADD CONSTRAINT `kolor_has_wersja_ibfk_2` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`);

--
-- Ograniczenia dla tabeli `konfiguracja`
--
ALTER TABLE `konfiguracja`
  ADD CONSTRAINT `konfiguracja_ibfk_1` FOREIGN KEY (`idKonfiguracja`) REFERENCES `konfiguracja_has_samochod` (`konfiguracja_idKonfiguracja`);

--
-- Ograniczenia dla tabeli `konfiguracja_has_samochod` //problem
--
ALTER TABLE `konfiguracja_has_samochod`
  ADD CONSTRAINT `konfiguracja_has_samochod_ibfk_1` FOREIGN KEY (`samochod_idsamochod`) REFERENCES `samochod` (`idsamochod`);

--
-- Ograniczenia dla tabeli `konfiguracja_has_zamowienia`
--
ALTER TABLE `konfiguracja_has_zamowienia`
  ADD CONSTRAINT `konfiguracja_has_zamowienia_ibfk_2` FOREIGN KEY (`konfiguracja_idKonfiguracja`) REFERENCES `konfiguracja` (`idKonfiguracja`),
  ADD CONSTRAINT `konfiguracja_has_zamowienia_ibfk_3` FOREIGN KEY (`zamowienia_idzamowienia`) REFERENCES `zamowienia` (`idzamowienia`);

--
-- Ograniczenia dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  ADD CONSTRAINT `koszyk_ibfk_1` FOREIGN KEY (`idKlient`) REFERENCES `klient` (`idKlient`),
  ADD CONSTRAINT `koszyk_ibfk_2` FOREIGN KEY (`idKoszyk`) REFERENCES `koszyk_has_konfiguracja` (`koszyk_idKoszyk`);

--
-- Ograniczenia dla tabeli `koszyk_has_konfiguracja`
--
ALTER TABLE `koszyk_has_konfiguracja`
  ADD CONSTRAINT `koszyk_has_konfiguracja_ibfk_1` FOREIGN KEY (`konfiguracja_idKonfiguracja`) REFERENCES `konfiguracja` (`idKonfiguracja`);

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
-- Ograniczenia dla tabeli `podstWyp_has_wersja`
--
ALTER TABLE `podstWyp_has_wersja`
  ADD CONSTRAINT `podstWyp_has_wersja_ibfk_1` FOREIGN KEY (`podstWyp_idpodstWyp`) REFERENCES `podstWyp` (`idpodstWyp`),
  ADD CONSTRAINT `podstWyp_has_wersja_ibfk_2` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`);

--
-- Ograniczenia dla tabeli `samochod`
--
ALTER TABLE `samochod`
  ADD CONSTRAINT `samochod_ibfk_3` FOREIGN KEY (`idsamochod`) REFERENCES `kategoria_has_samochod` (`samochod_idsamochod`);

--
-- Ograniczenia dla tabeli `samochod_has_wersja`
--
ALTER TABLE `samochod_has_wersja`
  ADD CONSTRAINT `samochod_has_wersja_ibfk_1` FOREIGN KEY (`samochod_idsamochod`) REFERENCES `samochod` (`idsamochod`),
  ADD CONSTRAINT `samochod_has_wersja_ibfk_2` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`);

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
  ADD CONSTRAINT `wersja_has_dodatki_ibfk_1` FOREIGN KEY (`dodatki_idDodatki`) REFERENCES `dodatki` (`idDodatki`),
  ADD CONSTRAINT `wersja_has_dodatki_ibfk_2` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`);

--
-- Ograniczenia dla tabeli `wersja_has_wnetrze`
--
ALTER TABLE `wersja_has_wnetrze`
  ADD CONSTRAINT `wersja_has_wnetrze_ibfk_1` FOREIGN KEY (`wnetrze_idWnetrze`) REFERENCES `wnetrze` (`idWnetrze`),
  ADD CONSTRAINT `wersja_has_wnetrze_ibfk_2` FOREIGN KEY (`wersja_idWersja`) REFERENCES `wersja` (`idWersja`);

--
-- Ograniczenia dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`klient_idKlient`) REFERENCES `klient` (`idKlient`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
