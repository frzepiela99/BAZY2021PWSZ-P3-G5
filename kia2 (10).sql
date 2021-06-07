-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Cze 2021, 14:26
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
(2, 'RM FILIPOWICZ Kraków Klimeckiego', 'sprzedaz.filipowicz@kiamotors.pl', 123480952, 'ul. Klimeckiego 25 30-705 Kraków', '- Salon  pon-pt: 9:00 - 18:00 sob: 9:00 - 14:00 - Serwis  pon-pt: 7:00 - 19:00 sob: 7:00 - 15:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nKia | Używane'),
(3, 'BDG Salon KIA MOTORS', ' info@bdg.tarnow.pl', 146223778, 'Krakowska 105, 33-100 Tarnów', 'poniedziałek 09:00–17:00\r\nwtorek 09:00–17:00\r\nśroda 09:00–17:00\r\nczwartek 09:00–17:00\r\npiątek 09:00–17:00\r\nsobota 09:00–13:00', 'BDG jest dealerem samochodów  KIA a także motocykli i skuterów marki Romet oraz Bajaj. \r\nFirma prowadzi działalność w zakresie:\r\nSprzedaży samochodów osobowych i dostawczych, motocykli, skuterów i rowerów;\r\nKredytowania i leasingu pojazdów;\r\nUbezpieczeń komunikacyjnych;\r\nObrotu samochodami używanymi - skup, sprzedaż, zamiana, komis;'),
(4, 'MARVEL Poznań', 'sprzedaz3.marvel@kiamotors.pl', 618425599, 'ul. Obornicka 223\r\n60-650 Poznań', 'pon-pt: 8:00 - 17:00\r\nsob: 9:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG'),
(5, 'EURO-KAS', 'sprzedaz.eurokas@kiamotors.pl', 327540000, 'ul. 73 Pułku Piechoty 1\r\n40-467 Katowice', 'pon-pt: 8:00 - 18:00\r\nsob: 9:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG\r\nKia | Używane'),
(6, 'MOTO', 'sprzedaz.moto@kiamotors.pl', 322555666, 'ul. Paderewskiego 29\r\n40-282 Katowice', 'pon-pt: 9:00 - 18:00\r\nsob: 9:00 - 14:30', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG\r\nKia | Używane\r\nBEST SERWIS 2019'),
(7, 'ETRANS', 'sprzedaz.etrans@kiamotors.pl', 323257412, 'ul. Leśna 1\r\n43-170 Łaziska Górne', 'pon-pt: 9:00 - 18:00\r\nsob: 9:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG\r\nKia | Używane'),
(8, 'AUTO MARKETING', 'sprzedaz.automarketing@kiamotors.pl', 817408870, 'ul. Warszawska 129\r\n20-824 Lublin', 'pon-pt: 8:00 - 16:00\r\nsob: 9:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG'),
(9, 'TECHNOTOP Serwis', 'serwis2.technotop@kiamotors.pl', 817488711, 'Al. Kraśnicka 150A\r\n20-718 Lublin', 'pon-pt: 8:00 - 18:00\r\nsob: 8:00 - 14:00', 'Serwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG'),
(10, 'TECHNOTOP', 'sprzedaz.technotop@kiamotors.pl', 817488888, 'Kalinówka 43A\r\n21-040 Lublin', 'pon-pt: 9:00 - 18:00\r\nsob: 9:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nObsługa LPG'),
(11, 'PATECKI Sandomierz', 'sprzedaz3.patecki@kiamotors.pl', 158479720, 'ul. Lwowska 24A\r\n27-600 Sandomierz', 'pon-pt: 9:00 - 17:00\r\nsob: 9:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nObsługa LPG'),
(12, 'AUTO COMPLEX Krosno', 'sprzedaz.autocomplex@kiamotors.pl', 134200000, 'Al. Jana Pawła II 13A\r\n38-400 Krosno', 'pon-pt: 9:00 - 17:00\r\nsob: 8:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG'),
(13, 'MULTITRUCK', 'sprzedaz.multitruck@kiamotors.pl', 178504161, 'ul. Handlowa 4\r\n35-103 Rzeszów', 'pon-pt: 8:00 - 17:00\r\nsob: 9:00 - 13:00\r\n', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG'),
(14, 'BDG', 'sprzedaz.bdg@kiamotors.pl', 146223778, 'ul. Krakowska 105\r\n33-100 Tarnów', 'pon-pt: 9:00 - 16:00\r\nsob: nieczynne', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG'),
(15, 'PATECKI Kielce', 'sprzedaz2.patecki@kiamotors.pl', 413452525, 'ul. Zakładowa 12\r\n25-672 Kielce', 'pon-pt: 9:00 - 18:00\r\nsob: 9:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG'),
(16, 'K&K BIELICKIE', 'sprzedaz.bielickie@kiamotors.pl', 242689931, 'ul. Przemysłowa 20\r\n09-400 Płock', 'pon-pt: 8:00 - 17:00\r\nsob: 8:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy'),
(17, 'AUTOTECH', 'sprzedaz.autotech@kiamotors.pl', 552326601, 'Władysławowo 41\r\n82-300 Elbląg', 'pon-pt: 9:00 – 17:00\r\nsob: 9:00 – 13:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG'),
(18, 'HADM+ GRAMATOWSKA', 'sprzedaz.hadm@kiamotors.pl', 585821179, 'Rokocin 4G\r\n83-200 Starogard Gdański', 'pon-pt: 7:00 - 18:00\r\nsob: 8:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG\r\nWypożyczalnia samochodów'),
(19, 'JD KULEJ', 'sprzedaz.jdkulej@kiamotors.pl', 585510000, 'Al. Niepodległości 881 C/D\r\n81-861 Sopot', 'pon-pt: 8:00 - 18:00\r\nsob: 9:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy'),
(20, 'INTERBIS', 'sprzedaz.interbis@kiamotors.pl', 585523636, 'ul. Kartuska 408\r\n80-125 Gdańsk', 'pon-pt: 9:00 - 18:00\r\nsob: 9:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG\r\nKia | Używane'),
(21, 'K&K WOJTANOWICZ Wejherowo', 'sprzedaz.wojtanowicz@kiamotors.pl', 586774441, 'ul. Gdańska 105-107\r\n84-200 Wejherowo', 'pon-pt: 9:00 - 17:00\r\nsob: 10:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG\r\nKia | Używane'),
(22, 'POLMOTOR Koszalin', 'sprzedaz.polmotor@kiamotors.pl', 943438890, 'Koszalińska 11\r\n76-039 Biesiekierz (k. Koszalin)', 'pon-pt: 8:00 - 18:00\r\nsob: 8:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG'),
(23, 'GEZET Zielona Góra', 'sprzedaz2.gezet@kiamotors.pl', 684228455, 'ul. Batorego 69A\r\n65-735 Zielona Góra', 'pon-pt: 9:00 - 17:00\r\nsob: 9:00 - 15:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy'),
(24, 'MAKAREWICZ', 'sprzedaz.makarewicz@kiamotors.pl', 523845837, 'ul. Fordońska 353\r\n85-766 Bydgoszcz', 'pon-pt: 9:00 - 18:00\r\nsob: 10:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG'),
(25, 'AUTOPOL Grudziądz', 'sprzedaz.autopol@kiamotors.pl', 667849000, 'Chełmińska 4\r\n86-300 Grudziądz', 'pon-pt: 9:00 - 21:00\r\nsob: 10:00 - 20:00', 'Salon'),
(26, 'DYNAMICA Salon', 'sprzedaz.dynamica@kiamotors.pl', 225120567, 'Ul. Płowiecka 69\r\n04-501 Warszawa', 'pon-pt: 9:00 - 19:00\r\nsob: 9:00 - 15:00', 'Salon'),
(27, 'CAR-DROOM', 'sprzedaz.cardroom@kiamotors.pl', 228145781, 'ul. Wysockiego 67\r\n03-202 Warszawa', 'pon-pt: 9:00 - 19:00\r\nsob: 9:00 - 14:00', 'Salon\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG\r\nKia | Używane'),
(28, 'AS MOTORS Warszawa', 'sprzedaz.asmotors@kiamotors.pl', 227398520, 'ul. Grójecka 194\r\n02-390 Warszawa', 'pon-pt: 10:00 - 18:00\r\nsob: 10:00 - 15:00', 'Salon'),
(29, 'MITCAR', 'sprzedaz.mitcar@kiamotors.pl', 225433737, 'ul. Sporna 1/3\r\n02-846 Warszawa', 'pon-pt: 9:00 – 18:00\r\nsob: 9:00 – 16:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nKia | Używane'),
(30, 'AS MOTORS Nadarzyn', 'sprzedaz.asmotors@kiamotors.pl', 227398520, 'Al. Katowicka 70\r\n05-830 Nadarzyn', 'pon-pt: 9:00 - 17:00\r\nsob: 9:00 - 14:00', 'Salon\r\nSerwis mechaniczny\r\nSerwis blacharsko - lakierniczy\r\nObsługa LPG\r\nKia | Używane');

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
  `Zdjecie` longtext NOT NULL,
  `cenaDodatki` varchar(11) DEFAULT NULL,
  `opisDodatki` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dodatki`
--

INSERT INTO `dodatki` (`idDodatki`, `nazwaDodatki`, `Zdjecie`, `cenaDodatki`, `opisDodatki`) VALUES
(1, 'Naklejki ozdobne ze wzorem pasów wyścigowych (błyszcząca czerń)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=40ed0366-1f00-4fa0-be26-843d7929fd24', '438', 'Podkreślają dynamikę i nowoczesność linii nadwozia. Wysoka jakość wykonania. Idealnie dopasowane do kształtu Kia Ceed. cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(2, 'Naklejki ozdobne ze wzorem pasów wyścigowych (błyszcząca czerwień)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=9fb727d6-dace-4b55-87a5-26828a4a46f9', '438', 'Podkreślają dynamikę i nowoczesność linii nadwozia. Wysoka jakość wykonania. Idealnie dopasowane do kształtu Kia Ceed.\r\nDostępne w błyszczącej czerni, błyszczącej czerwieni lub w matowej bieli. Odporne na zjawiska pogodowe oraz częste korzystanie z myjni samochodowej. Zalecany specjalistyczny montaż.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(3, 'Nakładki lusterek zewnętrznych (chrom)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=586289a6-f310-4172-8885-811016e76c14', '493', 'Mała zmiana, a jaki efekt! Nakładki o wyglądzie szlifowanej lub błyszczącej stali nierdzewnej wzbogacają atrakcyjność stylistyczną nowej Kia Ceed.'),
(4, 'Listwy boczne nadwozia (satyna)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=898f89d7-870f-495a-b150-e5fd6a7531dc', '500', 'Dodają elegancji i podkreślają dynamikę pojazdu.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(5, 'Listwa zderzaka tylnego (chrom)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=1fcfa680-7bdd-4eab-8a68-9faf0820368d', '376', 'Kolejne atrakcyjne detale. Dzięki tym dodatkom samochód zyskuje elegancki akcent przy krawędzi pokrywy bagażnika.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(6, 'Belki dachowe stalowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=8cf435a9-62f3-40ed-a97d-4eaa5afd7dbf', '671', 'Surfing, jazda na rowerze, narciarstwo, spływy kajakowe... Bez względu na to, który sport wybierzesz, możesz polegać na tym lekkim i szybkim akcesorium do przewozu bagaży na dachu.\r\nNieodpowiednie do pojazdów z panoramicznym oknem dachowym.\r\nDealer Kia Motors przekaże informacje o maksymalnej ładowności.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(7, 'Bagażnik dachowy 330', 'https://ws2.eu.kia.com/filehandler.ashx?guid=7f3a383b-927a-411a-af03-78f0b8be7e76', '1940', 'Wyjazd na wakacje? Prawdopodobnie potrzebna będzie większa przestrzeń na bagaż. Elegancki i wytrzymały bagażnik dachowy sprawi, że upychanie rzeczy w kabinie nie będzie już konieczne. Łatwy w montażu. Zapewnia bezproblemowy dostęp dzięki funkcji obustronnego otwierania. Oto doskonały sposób na uzyskanie dodatkowej przestrzeni! Wyposażony w zamek.\r\n(bagażnik dachowy 330 / wymiary: 144 × 86 × 37,5 cm / objętość: 330 l / nośność: do 75 kg)'),
(8, 'Bagażnik dachowy 390', 'https://ws2.eu.kia.com/filehandler.ashx?guid=d99fcd80-58ff-459e-977b-e8959e8c3313', '2056', 'Wyjazd na wakacje? Prawdopodobnie potrzebna będzie większa przestrzeń na bagaż. Elegancki i wytrzymały bagażnik dachowy sprawi, że upychanie rzeczy w kabinie nie będzie już konieczne. Łatwy w montażu. Zapewnia bezproblemowy dostęp dzięki funkcji obustronnego otwierania. Oto doskonały sposób na uzyskanie dodatkowej przestrzeni! Wyposażony w zamek.\r\n(bagażnik dachowy 390 / tylko dla wersji 5-drzwiowej / wymiary: 195 × 73,8 × 36 cm / objętość: 390 l / nośność: do 75 kg)'),
(9, 'Uchwyt „Xtender” na narty i deski snowboardowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=4be28ef3-97a5-46d8-b715-c9b182b95210', '974', 'Ułatwia szybki i łatwy montaż oraz demontaż sprzętu.\r\nPozwala przewieźć 6 par nart lub 4 deski snowboardowe.\r\nWysuwany na bok. Umożliwia montaż i demontaż sprzętu bez dotykania nadwozia pojazdu. Wyposażony w zamek.'),
(10, 'Uchwyt typu 600 na narty i deski snowboardowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=d08f31bc-b57e-4dc8-9978-68fb9dea5e38', '722', 'Niezawodny towarzysz podróży podczas przyszłych zimowych przygód. Uchwyt typu 400 na narty i deski snowboardowe pozwala przewieźć 4 pary nart lub 2 deski snowboardowe. Wyposażony w zamek. Jeżeli potrzeba więcej miejsca na sprzęt, można wybrać uchwyt typu 600. Umożliwia on przewóz 6 par nart lub 4 desek snowboardowych.'),
(11, 'Uchwyt na rowery „Active”', 'https://ws2.eu.kia.com/filehandler.ashx?guid=1ef20427-3fee-41ba-ab18-975737f6af18', '446', 'Łatwy w użyciu. Wyposażony w uchwyt ramy z łatwym zapięciem, wygodne uchwyty kół oraz regulowane, szybko rozpinane paski. Umożliwia błyskawiczny załadunek oraz rozładunek. Dopuszczalne obciążenie: 17 kg. Wyposażony w zamek. W zestawie łącznik do belek bagażnika wykonanych ze stali.'),
(12, 'Hak holowniczy odczepiany automatycznie', 'https://ws2.eu.kia.com/filehandler.ashx?guid=32d5b361-3897-488d-b4d7-c69b6a4d8fc1', '2020', 'System blokady zapewnia łatwy i bezpieczny montaż.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(13, 'Hak holowniczy odkręcany', 'https://ws2.eu.kia.com/filehandler.ashx?guid=1381ac7f-d5a2-446c-9a9f-1b4634206fa3', '1150', 'Jeżeli korzystasz z przyczepy, wybierz wysokiej klasy, oryginalny stalowy hak holowniczy. Zaprojektowano go z uwzględnieniem parametrów Kia Ceed.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(14, 'Uchwyt na rowery na wszystkie haki holownicze', 'https://ws2.eu.kia.com/filehandler.ashx?guid=b6a4a934-b75a-4c15-87d9-110212a13aa2', '2188', 'Nieoceniony podczas wycieczek i wakacji. Niezwykle wygodny i łatwy w użyciu. Pozwala na przewożenie 2 rowerów. Maksymalna ładowność: 60 kg. Umożliwia szybkie montowanie rowerów i zabezpiecza je przed kradzieżą.\r\nNie ogranicza dostępu do bagażnika.'),
(15, 'Listwy boczne', 'https://ws2.eu.kia.com/filehandler.ashx?guid=208039d3-5ecd-4423-9adc-3ad3143ef4b6', '652', 'Dodają elegancji i zapewniają dodatkową ochronę.\r\nPodkreślają sportowego ducha samochodu. Zabezpieczają drzwi przed zarysowaniami. Można je pomalować w kolorze nadwozia.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(16, 'Zestaw chlapaczy (przednie, zestaw 2 sztuk)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=204456ff-88ce-4ef5-88c8-78a242f4175c', '163', 'Niezależnie od warunków pogodowych i otoczenia, chlapacze zabezpieczają podwozie, progi oraz drzwi przed wodą, błotem i pyłem. Zaprojektowane specjalnie dla Kia Ceed.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(17, 'Zestaw chlapaczy (tylne, zestaw 2 sztuk)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=a9c647ae-5b75-4f4d-abe5-951c50c2c87f', '163', 'Niezależnie od warunków pogodowych i otoczenia, chlapacze zabezpieczają podwozie, progi oraz drzwi przed wodą, błotem i pyłem. Zaprojektowane specjalnie dla Kia Ceed.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.\r\n\r\n'),
(18, 'Folia ochronna zderzaka tylnego czarna', 'https://ws2.eu.kia.com/filehandler.ashx?guid=fda65f83-215a-41d6-8025-326f443d8f73', '141', 'Zapewnia odpowiednią ochronę zderzaka tylnego przed zarysowaniami i zadrapaniami podczas załadunku i rozładunku. Dostępna w wersji czarnej i przezroczystej.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.\r\n\r\n'),
(19, 'Folie ochronne zagłębień przy klamkach drzwi', 'https://ws2.eu.kia.com/filehandler.ashx?guid=3f2b73f2-43a4-4980-9c72-0c5c2e280e30', '88', 'Zagłębienia przy klamkach drzwi są szczególnie narażone na zadrapania i zarysowania. Dzięki foliom ochronnym te miejsca mogą wciąż wyglądać jak nowe. (zestaw 4 sztuk)\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(20, 'Układ monitorowania ciśnienia w oponach (TPMS)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=a1d48101-69ab-414f-b96a-7ee7e03fa2b6', '828', 'Oryginalne czujniki Kia, identyczne z montowanymi fabrycznie. Umożliwiają monitorowanie ciśnienia w oponach.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.\r\n'),
(21, 'Diodowe oświetlenie miejsca na nogi (białe, 1 rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=f92725ea-b5d1-4fa3-bb99-b14ed34a0aeb', '338', 'Dyskretne oświetlenie włącza się automatycznie przy każdym\r\nodblokowaniu drzwi i gaśnie po uruchomieniu silnika.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(22, 'Diodowe oświetlenie miejsca na nogi (czerwone, 1 rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=485e520c-f810-4ed9-894d-9ad894d7ba07', '338', 'Dyskretne oświetlenie włącza się automatycznie przy każdym odblokowaniu drzwi i gaśnie po uruchomieniu silnika.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(23, 'Oświetlenie podłoża montowane w drzwiach przednich', 'https://ws2.eu.kia.com/filehandler.ashx?guid=035cea23-3c02-44b7-ae78-ed25906c2606', '350', 'Włącza się przy każdym otwarciu drzwi. Oświetla podłoże subtelnym, rozproszonym światłem. Podnosi bezpieczeństwo i poczucie komfortu po zmroku.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(24, 'Projektory z logo Kia', 'https://ws2.eu.kia.com/filehandler.ashx?guid=3eaaa3c5-3c32-46c0-92a6-2d534af29a7c', '350', 'Oświetlają podłoże jednobarwnym, wyraźnym logo Kia. Wywierają duże wrażenie po zmroku. Włączają się automatycznie po otwarciu drzwi przednich.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(25, 'Standardowe dywaniki tekstylne', 'https://ws2.eu.kia.com/filehandler.ashx?guid=6ed667e7-bffb-4945-a845-95441930183e', '110', 'Wykonane z wytrzymałego materiału. Doskonale chronią podłogę przed zabrudzeniem. Wykonane na miarę. Mocowane za pomocą zaczepów. Antypoślizgowy spód. Dywanik kierowcy z logo Kia Ceed i wzmocnieniem pod piętą. Zestaw 4 sztuk.'),
(26, 'Dywaniki gumowe z czerwonym akcentem', 'https://ws2.eu.kia.com/filehandler.ashx?guid=afe0b651-eff3-4fea-8e41-c615b01aca8a', '219', 'Wytrzymałe i łatwe do umycia. Skutecznie zabezpieczają podłogę. Idealnie dopasowane. Wyposażone w wytrzymałe zaczepy.\r\nDzięki nim nie musisz martwić się o wnętrze samochodu, niezależnie od warunków pogodowych i otoczenia.'),
(27, 'Dwustronny dywanik bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=83f164a6-772a-4e70-877a-9b252452e5a3', '219', 'Elegancki, idealnie dopasowany. Dzięki niemu bagażnik zawsze\r\nwygląda perfekcyjnie, niezależnie od przewożonego ładunku. Z jednej strony pokryty miękkim welurem wysokiej jakości. Druga strona z wytrzymałą powierzchnią gumową, odporną na zabrudzenia.'),
(28, 'Wieszak na ubrania', 'https://ws2.eu.kia.com/filehandler.ashx?guid=4560b756-2d4c-404b-913d-3840a1d0d30c', '238', 'Pozwala utrzymać odzież w odpowiednim stanie, bez zagnieceń.\r\nMożna go szybko zamontować na oparciu fotela przedniego, a później równie szybko zdemontować i zabrać ze sobą. Wymaga demontażu, jeżeli na kanapie tylnej siedzi pasażer.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(29, 'Uchwyt na iPada® dla osoby siedzącej na kanapie tylnej', 'https://ws2.eu.kia.com/filehandler.ashx?guid=ad6a952d-4be5-42c4-87b6-aba2e972c370', '633', 'Umożliwia obracanie oraz przechylanie urządzenia.\r\nPasuje do iPada® 1, 2, 3 i 4 oraz iPada®Air 1 i 2.\r\nZestaw nie obejmuje iPada® ani ładowarki.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(30, 'Osłona na szyby', 'https://ws2.eu.kia.com/filehandler.ashx?guid=5298c60c-7340-480e-845a-2f275d8b1b0b', '272', 'Latem chroni wnętrze przed silnym słońcem. Zimą zabezpiecza szybę czołową oraz szyby boczne przednie przed lodem i zmrożonym śniegiem. Dopasowana do kształtu nadwozia Kia Ceed.\r\nPo zamontowaniu zabezpieczona przed kradzieżą.'),
(31, 'Haczyk na torbe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=9e587cd0-113b-432a-9674-86a835935716', '62', 'Umożliwia zawieszenie pojemnika lub torby z żywnością.\r\nZmniejsza ryzyko zabrudzenia wnętrza. Mocowany w dolnej części konsoli centralnej, od strony pasażera.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(32, 'Trójkąt ostrzegawczy', 'https://ws2.eu.kia.com/filehandler.ashx?guid=37f2cf73-1347-4e19-85ef-0a4817cb6f88', '36', 'Potrzebny w przypadku nieprzewidzianego zdarzenia na drodze.\r\nDobrze widoczny, ostrzega innych kierowców przed unieruchomionym pojazdem. Lekki, stabilny i całkowicie składany. Zgodny z obowiązującą normą ECE-R27. Wyposażenie obowiązkowe w większości krajów Europy.'),
(33, 'Zestaw bezpieczeństwa', 'https://ws2.eu.kia.com/filehandler.ashx?guid=f711e524-5aee-4d03-a25d-7707edefc50d', '100', 'Na wszelki wypadek. Zawiera dwie kamizelki odblaskowe, trójkąt ostrzegawczy oraz apteczkę pierwszej pomocy spełniającą obowiązującą normę DIN 13164:2014. Wyposażenie obowiązkowe w większości krajów Europy.'),
(34, 'Kamizelka odblaskowa', 'https://ws2.eu.kia.com/filehandler.ashx?guid=88a9f76f-0a2a-4620-849e-989bb7c2810d', '19', 'Bezpieczeństwo jest najważniejsze. Jaskrawy kolor oraz paski odblaskowe zapewniają widoczność z daleka zarówno w dzień, jak i w nocy. Mieści się w schowku w drzwiach. Zgodna z normą EN 20471. Wyposażenie obowiązkowe w większości krajów Europy.\r\nRozmiar uniwersalny.'),
(35, 'Przegroda bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=c0d7a837-6193-47c7-83c2-9553de1e23bf', '982', 'Solidna kratka, idealna podczas przewożenia dużego bagażu.\r\nŁatwa do zamontowania, idealnie dopasowana pomiędzy tylne siedzenia a dach. Nie ogranicza kierowcy pola widzenia do tyłu.'),
(36, 'Mata osłaniająca zderzak', 'https://ws2.eu.kia.com/filehandler.ashx?guid=917f783d-8471-4551-832c-ad14b9a5a057', '108', 'Mata osłaniająca zderzak połączona z wykładziną bagażnika. Prosty montaż umożliwia szybkie rozłożenie podczas użytkowania i złożenie lub odczepienie, gdy nie jest potrzebna. Zapewnia doskonałą ochronę zderzaka tylnego podczas załadunku i rozładunku pojazdu. Idealne rozwiązanie również w przypadku przewozu czworonożnych przyjaciół.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(37, 'Oświetlenie LED bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=3ad180c2-28dd-4e71-a8d1-cd1eca45d5d2', '404', 'Nigdy więcej nie czuj się bezradny, próbując znaleźć jakiś konkretny przedmiot po ciemku. Ciesz się doskonałą widocznością w bagażniku i poza nim!\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(38, 'Nakładki lusterek zewnętrznych (chrom)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=dccfd8fa-8a21-44eb-8138-61367ae2027f', '493', 'Mała zmiana, a jaki efekt! Nakładki o wyglądzie szlifowanej lub błyszczącej stali nierdzewnej wzbogacają atrakcyjność stylistyczną nowej Kia Ceed.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.\r\n\r\n'),
(39, 'Nakładki lusterek zewnętrznych (satyna)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=2e5a5c9a-8495-4990-af50-3d5a51bc884e', '499', 'Nakładki lusterek zewnętrznych (satyna)'),
(40, 'Listwa pokrywy bagażnika (chrom)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=e3f030ca-168f-4067-8d26-eb536776bf73', '373', 'Kolejne atrakcyjne detale. Dzięki tym dodatkom samochód zyskuje elegancki akcent przy krawędzi pokrywy bagażnika\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(41, 'Dwustronny dywanik bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=2b25b284-bd31-44a5-ba96-5a1ba2c444e3', '284', 'Elegancki, idealnie dopasowany. Dzięki niemu bagażnik zawsze wygląda perfekcyjnie, niezależnie od przewożonego ładunku.\r\nZ jednej strony pokryty miękkim welurem wysokiej jakości.\r\nDruga strona z wytrzymałą powierzchnią gumową, odporną na zabrudzenia.'),
(42, 'Diodowe oświetlenie miejsca na nogi czerwone', 'https://ws2.eu.kia.com/filehandler.ashx?guid=fc358b88-2fdc-45eb-9cf6-d677da07b56a', '338', 'Dyskretne oświetlenie włącza się automatycznie przy każdym odblokowaniu drzwi i gaśnie po uruchomieniu silnika.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(43, 'Diodowe oświetlenie miejsca na nogi białe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=37dfef15-7147-4b0c-bf32-a2d1f12c77ec', '338', 'Dyskretne oświetlenie włącza się automatycznie przy każdym odblokowaniu drzwi i gaśnie po uruchomieniu silnika.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(44, 'Oświetlenie podłoża montowane w drzwiach przednich', 'https://ws2.eu.kia.com/filehandler.ashx?guid=e756be64-3a27-4292-820c-f7277e4d4311', '350', 'Włącza się przy każdym otwarciu drzwi. Oświetla podłoże subtelnym, rozproszonym światłem. Podnosi bezpieczeństwo i poczucie komfortu po zmroku.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(45, 'Projektory z logo Kia', 'https://ws2.eu.kia.com/filehandler.ashx?guid=d4710f14-5a71-4355-9b08-8ce930da3bcd', '350', 'Oświetlają podłoże jednobarwnym, wyraźnym logo Kia. Wywierają duże wrażenie po zmroku. Włączają się automatycznie po otwarciu drzwi przednich.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(46, 'Projektory z logo GT Line', 'https://ws2.eu.kia.com/filehandler.ashx?guid=24c63058-1c16-4cc9-9627-5cc7a8cdf000', '350', 'Oświetlają podłoże jednobarwnym, wyraźnym logo GT Line.\r\nWywierają duże wrażenie po zmroku. Włączają się automatycznie\r\npo otwarciu drzwi przednich.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(47, 'Uchwyt na iPada® dla osoby siedzącej na kanapie tylnej', 'https://ws2.eu.kia.com/filehandler.ashx?guid=b942f2c6-3d9a-4b3b-9e35-4936544a9a1f', '649', 'Umożliwia obracanie oraz przechylanie urządzenia.\r\nPasuje do iPada® 1, 2, 3 i 4 oraz iPada®Air 1 i 2.\r\nZestaw nie obejmuje iPada® ani ładowarki.'),
(48, 'Listwa pokrywy bagażnika (satyna)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=085a05c5-bca6-4488-b273-577e21a37414', '386', 'Kolejne atrakcyjne detale. Dzięki tym dodatkom samochód zyskuje elegancki akcent przy krawędzi pokrywy bagażnika.'),
(49, 'Listwa zderzaka tylnego chrom', 'https://ws2.eu.kia.com/filehandler.ashx?guid=b0d9936b-31de-4f7b-b0c6-4fb65b46e40f', '378', 'Kolejne atrakcyjne detale. Dzięki tym dodatkom samochód zyskuje elegancki akcent przy krawędzi pokrywy bagażnika.'),
(50, 'Listwa zderzaka tylnego satyna', 'https://ws2.eu.kia.com/filehandler.ashx?guid=962e676a-9612-498f-a092-57bc86ba13fe', '395', 'Kolejne atrakcyjne detale. Dzięki tym dodatkom samochód zyskuje elegancki akcent przy krawędzi pokrywy bagażnika.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(51, 'Naklejki ozdobne ze wzorem pasów wyścigowych (matowa biel)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=f4640ebd-ec3d-4326-ba13-c88a1a683bb9', '438', 'Podkreślają dynamikę i nowoczesność linii nadwozia. Wysoka jakość wykonania. Idealnie dopasowane do kształtu Kia Ceed.\r\nOdporne na zjawiska pogodowe oraz częste korzystanie z myjni samochodowej. Zalecany specjalistyczny montaż.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(52, 'Naklejki ozdobne ze wzorem pasów wyścigowych (błyszcząca czerwień)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=ee2728b0-483d-4d98-965f-5606a0c77cb4', '438', 'Podkreślają dynamikę i nowoczesność linii nadwozia. Wysoka jakość wykonania. Idealnie dopasowane do kształtu Kia Ceed.\r\nOdporne na zjawiska pogodowe oraz częste korzystanie z myjni samochodowej. Zalecany specjalistyczny montaż\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(53, 'Folie ochronne zagłębień przy klamkach drzwi', 'https://ws2.eu.kia.com/filehandler.ashx?guid=d300b90a-400f-40fd-9a24-1dbe5eb1d884', '88', 'Zagłębienia przy klamkach drzwi są szczególnie narażone na zadrapania i zarysowania. Dzięki foliom ochronnym te miejsca mogą wciąż wyglądać jak nowe.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(54, 'Zestaw chlapaczy przednie', 'https://ws2.eu.kia.com/filehandler.ashx?guid=2f44fcd3-4bdc-4f24-b732-7b2411f447c8', '121', 'Niezależnie od warunków pogodowych i otoczenia, chlapacze zabezpieczają podwozie, progi oraz drzwi przed wodą, błotem i pyłem. Zaprojektowane specjalnie dla Kia Ceed.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(55, 'Zestaw chlapaczy tylne', 'https://ws2.eu.kia.com/filehandler.ashx?guid=17a4c442-e7be-4da9-a83c-0472275fe32f', '121', 'Niezależnie od warunków pogodowych i otoczenia, chlapacze zabezpieczają podwozie, progi oraz drzwi przed wodą, błotem i pyłem. Zaprojektowane specjalnie dla Kia Ceed.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(56, 'Hak holowniczy odczepiany automatycznie', 'https://ws2.eu.kia.com/filehandler.ashx?guid=dfffa0d4-a383-4c11-9333-f239c307eba5', '2059', 'System blokady zapewnia łatwy i bezpieczny montaż.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(57, 'Nakładki lusterek zewnętrznych chrom', 'https://ws2.eu.kia.com/filehandler.ashx?guid=de7e4f4c-4765-4fa1-a6fa-1290206a4e24', '493', 'Mała zmiana, a jaki efekt! Nakładki o wyglądzie szlifowanej lub błyszczącej stali nierdzewnej wzbogacają atrakcyjność stylistyczną nowej Kia Ceed.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(58, 'Listwy boczne nadwozia (chrom)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=3df75876-9ca9-47f1-aaf2-3605416c1a0b', '493', 'Dodają elegancji i podkreślają dynamikę pojazdu.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem'),
(59, 'Listwa pokrywy bagażnika (chrom)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=fba79f09-6efa-440b-9acd-18df02e66415', '338', 'W bardzo elegancki sposób łączy tylne lampy zespolone. Dzięki niej nadwozie zyskuje jeszcze bardziej indywidualny, przyciągający uwagę charakter.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(60, 'Nakładka ozdobna zderzaka tylnego (chrom)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=f8f37531-d7c7-494a-9024-4dbe6b57e537', '377', 'Nakładki o wyglądzie szlifowanej lub błyszczącej stali nierdzewnej wzbogacają atrakcyjność stylistyczną tylnej części Kia XCeed\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(61, 'Naklejki ozdobne ze wzorem pasów wyścigowych (matowa biel)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=07dd47ba-24fe-40bf-8c05-494fed8f9c09', '438', 'Podkreślają dynamikę i nowoczesność linii nadwozia. Wysoka jakość wykonania. Idealnie dopasowane do kształtu Kia Ceed.\r\nDostępne w błyszczącej czerni, błyszczącej czerwieni lub w matowej bieli. Odporne na zjawiska pogodowe oraz częste korzystanie z myjni samochodowej. Zalecany specjalistyczny montaż.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(62, 'Naklejki ozdobne ze wzorem pasów wyścigowych (błyszcząca czerń)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=1420aa2d-20b7-4323-b6b6-8020df5255bb', '438', 'Podkreślają dynamikę i nowoczesność linii nadwozia. Wysoka jakość wykonania. Idealnie dopasowane do kształtu Kia Ceed.\r\nDostępne w błyszczącej czerni, błyszczącej czerwieni lub w matowej bieli. Odporne na zjawiska pogodowe oraz częste korzystanie z myjni samochodowej. Zalecany specjalistyczny montaż.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(63, 'Naklejki ozdobne ze wzorem pasów wyścigowych (błyszcząca czerwień)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=41b7339a-7a40-440c-91cb-27aaa470266a', '438', 'Podkreślają dynamikę i nowoczesność linii nadwozia. Wysoka jakość wykonania. Idealnie dopasowane do kształtu Kia Ceed.\r\nDostępne w błyszczącej czerni, błyszczącej czerwieni lub w matowej bieli. Odporne na zjawiska pogodowe oraz częste korzystanie z myjni samochodowej. Zalecany specjalistyczny montaż.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(64, 'Uchwyt na rowery na wszystkie haki holownicze', 'https://ws2.eu.kia.com/filehandler.ashx?guid=daf1c9ce-7883-4e36-806c-9dd0d9df8588', '2188', 'Nieoceniony podczas wycieczek i wakacji. Niezwykle wygodny i łatwy w użyciu.\r\nPozwala na przewożenie 2 rowerów. Maksymalna ładowność: 60 kg.\r\nUmożliwia szybkie montowanie rowerów i zabezpiecza je przed kradzieżą.\r\nNie ogranicza dostępu do bagażnika.'),
(65, 'Poprzeczne belki dachowe stalowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=442523e5-9c16-4d02-b93d-35beb965ee10', '1028', 'Wytrzymałe i łatwe w montażu, ze stopu lekkiego albo stalowe.\r\nOdpowiednie do pojazdów z zamkniętym panoramicznym oknem dachowym. Dealer Kia Motors przekaże informacje o maksymalnej ładowności.'),
(66, 'Uchwyt na rowery „Pro”', 'https://ws2.eu.kia.com/filehandler.ashx?guid=854a8a76-0875-4d77-8bb9-b1578642c0ec', '828', 'Umożliwia szybki i łatwy załadunek oraz rozładunek. Po przymocowaniu roweru do ramienia dalsze dopasowywanie i zabezpieczanie odbywa się na wysokości dachu. Służy do tego pokrętło obracane jedną ręką. Dopuszczalne obciążenie: 20 kg. Wyposażony w zamek.'),
(67, 'Uchwyt typu 600 na narty i deski snowboardowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=9d824c7c-bd1c-4043-9fe2-667bc7a686a4', '722', 'Niezawodny towarzysz podróży podczas przyszłych zimowych przygód. Uchwyt typu 400 na narty i deski snowboardowe pozwala na przewóz 6 par nart lub 4 desek snowboardowych. Wyposażony w zamek.'),
(68, 'Uchwyt „Xtender” na narty i deski snowboardowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=f6fb0ec4-2ec7-4b1d-9566-b52fbad6d8fe', '974', 'Ułatwia szybki i łatwy montaż oraz demontaż sprzętu.\r\nPozwala przewieźć 6 par nart lub 4 deski snowboardowe.\r\nWysuwany na bok. Umożliwia montaż i demontaż sprzętu bez dotykania nadwozia pojazdu. Wyposażony w zamek'),
(69, 'Bagażnik dachowy 330', 'https://ws2.eu.kia.com/filehandler.ashx?guid=8682f7c7-896e-4e50-a456-0634ab4a01c7', '1940', 'Wyjazd na wakacje? Prawdopodobnie potrzebna będzie większa przestrzeń na bagaż. Elegancki i wytrzymały bagażnik dachowy sprawi, że upychanie rzeczy w kabinie nie będzie już konieczne. Łatwy w montażu. Zapewnia bezproblemowy dostęp dzięki funkcji obustronnego otwierania. Oto doskonały sposób na uzyskanie dodatkowej przestrzeni! Wyposażony w zamek.'),
(70, 'Folie ochronne zagłębień przy klamkach drzwi', 'https://ws2.eu.kia.com/filehandler.ashx?guid=5f59440e-6524-4d2b-add5-5a93c1dc1e0d', '88', 'Zagłębienia przy klamkach drzwi są szczególnie narażone na zadrapania i zarysowania. Dzięki foliom ochronnym te miejsca mogą wciąż wyglądać jak nowe.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(71, 'Folia ochronna zderzaka tylnego (czarna)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=98b0e1ad-0f88-4c9f-a50e-af762c5435f7', '141', 'Zapewnia odpowiednią ochronę zderzaka tylnego przed zarysowaniami i zadrapaniami podczas załadunku i rozładunku.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(72, 'Listwy boczne', 'https://ws2.eu.kia.com/filehandler.ashx?guid=22340cfd-c03b-45a0-a2eb-52f05d025c09', '636', 'Dodają elegancji i zapewniają dodatkową ochronę. Podkreślają sportowego ducha samochodu. Zabezpieczają drzwi przed zarysowaniami.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(73, 'Osłona na szyby', 'https://ws2.eu.kia.com/filehandler.ashx?guid=9f158565-d340-43b2-b1ee-e530b1f24295', '278', 'Latem chroni wnętrze przed silnym słońcem. Zimą zabezpiecza szybę czołową oraz szyby boczne przednie przed lodem i zmrożonym śniegiem. Dopasowana do kształtu nadwozia Kia Ceed.\r\nPo zamontowaniu zabezpieczona przed kradzieżą.'),
(74, 'Zestaw chlapaczy przednie', 'https://ws2.eu.kia.com/filehandler.ashx?guid=3bfcef28-6ae5-409f-875c-0245abab9a77', '124', 'Niezależnie od warunków pogodowych i otoczenia, chlapacze zabezpieczają podwozie, progi oraz drzwi przed wodą, błotem i pyłem.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(75, 'Zestaw chlapaczy tylne', 'https://ws2.eu.kia.com/filehandler.ashx?guid=af2d2e60-35ed-48e8-b2ba-52ced80d3de8', '124', 'Niezależnie od warunków pogodowych i otoczenia, chlapacze zabezpieczają podwozie, progi oraz drzwi przed wodą, błotem i pyłem.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(76, 'Nakładka ochronna progu bagażnika chrom', 'https://ws2.eu.kia.com/filehandler.ashx?guid=00db3100-8e8d-4659-b529-cec73494c500', '323', 'Wykonana z błyszczącej stali nierdzewnej wysokiej jakości. Chroni próg bagażnika.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(77, 'Diodowe oświetlenie miejsca na nogi czerwone', 'https://ws2.eu.kia.com/filehandler.ashx?guid=65fe5502-7b5d-4cb5-9501-3014f75a0028', '338', 'Dyskretne oświetlenie włącza się automatycznie przy każdym odblokowaniu drzwi i gaśnie po uruchomieniu silnika.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(78, 'Diodowe oświetlenie miejsca na nogi białe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=c0c95d4c-2c15-4c0a-8710-2446ada8eb12', '338', 'Dyskretne oświetlenie włącza się automatycznie przy każdym odblokowaniu drzwi i gaśnie po uruchomieniu silnika.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(79, 'Projektory z logo Kia', 'https://ws2.eu.kia.com/filehandler.ashx?guid=7278db45-9d53-4351-b6e4-19801aa84df8', '350', 'Oświetlają podłoże jednobarwnym, wyraźnym logo Kia.\r\nWywierają duże wrażenie po zmroku. Włączają się automatycznie po otwarciu drzwi przednich.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(80, 'Oświetlenie podłoża montowane w drzwiach przednich', 'https://ws2.eu.kia.com/filehandler.ashx?guid=07d25ebd-36d7-4efc-9156-2188c131b1fd', '350', 'Włącza się przy każdym otwarciu drzwi. Oświetla podłoże subtelnym, rozproszonym światłem. Podnosi bezpieczeństwo i poczucie komfortu po zmroku.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(81, 'Dywaniki gumowe z logo XCeed', 'https://ws2.eu.kia.com/filehandler.ashx?guid=5f77ec5a-4e08-4158-9043-07583c08ed71', '225', 'Wytrzymałe i łatwe do umycia. Skutecznie zabezpieczają podłogę.\r\nIdealnie dopasowane. Wyposażone w wytrzymałe zaczepy.\r\nDzięki nim nie musisz martwić się o wnętrze samochodu, niezależnie od warunków pogodowych i otoczenia'),
(82, 'Standardowe dywaniki tekstylne z logo XCeed', 'https://ws2.eu.kia.com/filehandler.ashx?guid=248e682d-6119-4614-af82-fdf394a58ed5', '124', 'Wykonane z wytrzymałego materiału. Doskonale chronią podłogę przed zabrudzeniem. Wykonane na miarę. Mocowane za pomocą zaczepów. Antypoślizgowy spód. Dywanik kierowcy z logo Kia XCeed i wzmocnieniem pod piętą.'),
(83, 'Dwustronny dywanik bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=05e48523-b599-48b8-968c-33c1c1a9f3d4', '225', 'Elegancki, idealnie dopasowany. Dzięki niemu bagażnik zawsze wygląda perfekcyjnie, niezależnie od przewożonego ładunku.\r\nZ jednej strony pokryty miękkim welurem wysokiej jakości.\r\nDruga strona z wytrzymałą powierzchnią gumową, odporną\r\nna zabrudzenia'),
(84, 'Oświetlenie LED bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=d90b0a25-2d24-4819-89e5-e72b7550fd60', '404', 'Nigdy więcej nie czuj się bezradny, próbując znaleźć jakiś konkretny przedmiot po ciemku. Ciesz się doskonałą widocznością w bagażniku i poza nim!\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(85, 'Przegroda bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=dfc3564c-4f70-4487-a187-a55a57aa5231', '982', 'Solidna kratka, idealna podczas przewożenia dużego bagażu.\r\nŁatwa do zamontowania, idealnie dopasowana pomiędzy tylne siedzenia a dach. Nie ogranicza kierowcy pola widzenia do tyłu.'),
(86, 'Dywaniki gumowe z szarym akcentem', 'https://ws2.eu.kia.com/filehandler.ashx?guid=962e5ee6-cd51-4733-9516-294d9b649959', '218', 'Wytrzymałe i łatwe do umycia. Skutecznie zabezpieczają podłogę. Idealnie dopasowane.\r\nWyposażone w wytrzymałe zaczepy i antypoślizgowy spód.\r\n(zestaw 4 sztuk)'),
(87, 'Eleganckie dywaniki welurowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=13328e3b-bea7-4e9e-b53a-5b3afc666d71', '509', 'Podnoszą elegancję wnętrza. Pasują idealnie do modelu Niro. Niezwykle grube dywaniki przednie z ozdobnym, czarno-srebrnym metalowym logo Kia. Mocowane do podłogi za pomocą standardowych zaczepów.\r\n(zestaw 4 sztuk)'),
(88, 'Dywanik gumowy bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=84e1981a-1e88-4880-988c-2101733b2e1b', '241', 'Zaprojektowany specjalnie dla modelu Niro. Podwyższone krawędzie zabezpieczają bagażnik przed wszelkimi zabrudzeniami. Wytrzymały i wodoodporny. Antypoślizgowy spód. Antypoślizgowa guma zapobiega przesuwaniu się ładunku. Idealnie pasuje do bagażnika pojazdu. Z wytłoczonym logo Kia Niro.'),
(89, 'Diodowe oświetlenie miejsca na nogi (czerwone, 1. rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=90526e35-6f77-43c4-bfb9-098a0fb79a55', '329', 'Dyskretne oświetlenie włącza się automatycznie przy każdym odblokowaniu drzwi, gaśnie po uruchomieniu silnika.'),
(90, 'Diodowe oświetlenie miejsca na nogi (czerwone, 2. rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=165f06d8-7a4d-4e0a-b591-d898e59cc6a2', '349', 'Dyskretne oświetlenie włącza się automatycznie przy każdym odblokowaniu drzwi, gaśnie po uruchomieniu silnika.\r\nInstalacja w 2. rzędzie tylko w połączeniu z instalacją w 1. rzędzie.'),
(91, 'Bagażnik dachowy 390', 'https://ws2.eu.kia.com/filehandler.ashx?guid=a1e5c4a3-1a8a-4b3c-8602-f8557485b097', '2006', 'Wyjazd na wakacje? Prawdopodobnie potrzebna będzie większa przestrzeń na bagaż.\r\nElegancki i wytrzymały bagażnik dachowy sprawi, że upychanie rzeczy w kabinie nie będzie już konieczne. Łatwy w montażu. Zapewnia bezproblemowy dostęp dzięki funkcji obustronnego otwierania.\r\nOto doskonały sposób na uzyskanie dodatkowej przestrzeni! Wyposażony w zamek.\r\n(nośność: do 75 kg)'),
(92, 'Diodowe oświetlenie miejsca na nogi (białe, 1. rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=44ec57de-c87d-4e24-afa5-d9dbafba884d', '329', 'Dyskretne oświetlenie włącza się automatycznie przy każdym odblokowaniu drzwi, gaśnie po uruchomieniu silnika.'),
(93, 'Diodowe oświetlenie miejsca na nogi (białe, 2. rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=11cc9205-2c81-440e-b4aa-4af61cacb233', '349', 'Dyskretne oświetlenie włącza się automatycznie\r\nprzy każdym odblokowaniu drzwi, gaśnie po uruchomieniu silnika.\r\nInstalacja w 2. rzędzie tylko w połączeniu z instalacją w 1. rzędzie.'),
(94, 'Oświetlenie diodowe pod lusterkami zewnętrznymi', 'https://ws2.eu.kia.com/filehandler.ashx?guid=ba5fb647-98c6-4be5-949a-5ae195e05abd', '342', 'Włącza się przy każdym otwarciu drzwi. Oświetla podłoże przy drzwiach subtelnym, rozproszonym światłem. W ten sposób podnosi bezpieczeństwo i poczucie komfortu po zmroku.'),
(95, 'Projektory z logo Kia', 'https://ws2.eu.kia.com/filehandler.ashx?guid=a64465a8-4694-483a-9700-13bb4ee3421a', '342', 'Podświetlają podłoże jednobarwnym, wyraźnym logo Kia. Włączają się automatycznie po otwarciu drzwi przednich.'),
(96, 'Folie ochronne zagłębień przy klamkach drzwi', 'https://ws2.eu.kia.com/filehandler.ashx?guid=a49e1d93-dbb8-4a03-82db-3a08ccffcc01', '86', 'Zagłębienia przy klamkach drzwi są szczególnie narażone na zadrapania i zarysowania. Dzięki foliom ochronnym mogą wciąż wyglądać jak nowe.\r\n(zestaw 4 sztuk)'),
(97, 'Zestaw chlapaczy przednie', 'https://ws2.eu.kia.com/filehandler.ashx?guid=2e466327-13f0-4330-8248-ad746e6923cf', '156', 'Dodają elegancji i zapewniają dodatkową ochronę. Podkreślają sportowego ducha samochodu. Zabezpieczają drzwi przed zarysowaniami.'),
(98, 'Zestaw chlapaczy tylne', 'https://ws2.eu.kia.com/filehandler.ashx?guid=5b57651e-5315-45bc-b1df-6e39ca24c290', '116', 'Dodają elegancji i zapewniają dodatkową ochronę. Podkreślają sportowego ducha samochodu. Zabezpieczają drzwi przed zarysowaniami.'),
(99, 'Aluminiowe poprzeczne belki dachowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=51d88244-6a78-49d7-b4c2-b3031129af36', '889', 'Ułatwiają zabranie potrzebnego ekwipunku i podjęcie następnego wyzwania.\r\nLekkie i łatwe w montażu. Umożliwiają transport wszystkich niezbędnych rzeczy podczas kolejnej wyprawy. Tylko dla pojazdów z oryginalnymi relingami.\r\nPasują do panoramicznego okna dachowego.'),
(100, 'Bagażnik dachowy 330', 'https://ws2.eu.kia.com/filehandler.ashx?guid=0dba3f86-36a0-41ed-b383-411d3e9f671d', '1892', 'Wyjazd na wakacje? Prawdopodobnie potrzebna będzie większa przestrzeń na bagaż. Elegancki i wytrzymały bagażnik dachowy sprawi, że upychanie rzeczy w kabinie nie będzie już konieczne. Łatwy w montażu. Zapewnia bezproblemowy dostęp dzięki funkcji obustronnego otwierania. Oto doskonały sposób na uzyskanie dodatkowej przestrzeni! Wyposażony w zamek.'),
(101, 'Uchwyt do rowerów na wszystkie haki holownicze', 'https://ws2.eu.kia.com/filehandler.ashx?guid=ff54dd73-bb65-4b80-b4b5-b1bd4d1ab82b', '2134', 'Nieoceniony podczas wycieczek i wakacji. Niezwykle wygodny i łatwy w użyciu.\r\nUmożliwia przewóz 2 rowerów, w tym również rowerów elektrycznych (e-bike).\r\nMaksymalne obciążenie: 60 kg. Umożliwia szybkie montowanie rowerów i zabezpiecza je przed kradzieżą. Nie ogranicza dostępu do bagażnika.'),
(102, 'Uchwyt „Xtender” do nart i desek snowboardowych', 'https://ws2.eu.kia.com/filehandler.ashx?guid=f30a3926-60b2-40f2-af0f-e0a2db57c68c', '942', 'Ułatwia uprawianie sportów zimowych. Pozwala przewieźć 6 par nart lub 4 deski snowboardowe. Wysuwany na bok. Umożliwia montaż i demontaż sprzętu bez dotykania nadwozia pojazdu. Wyposażony w zamek.'),
(103, 'Uchwyt typu 600 na narty i deski snowboardowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=78da0b2c-e6c8-44a8-9267-66bb7d65bb41', '704', 'Niezawodny towarzysz podróży podczas przyszłych zimowych przygód. Uchwyt typu 600 na narty i deski snowboardowe pozwala przewieźć 6 par nart lub 4 desek snowboardowych. Wyposażony w zamek.'),
(104, 'Hak holowniczy odczepiany automatycznie', 'https://ws2.eu.kia.com/filehandler.ashx?guid=3da928e8-9746-44f2-a5ef-316d4113dec8', '2018', 'Wysokiej klasy, odporny na korozję stalowy hak holowniczy. 3-kulowy system blokady zapewnia łatwy i bezpieczny montaż od spodu.\r\nDemontowalny, konstrukcja haka niewidoczna (wkomponowana pod zderzak). Zgodny z normą UNECE 55R. Dealer Kia Motors przekaże informacje o maksymalnej ładowności uchwytu na rowery.'),
(105, 'Hak holowniczy odpinany', 'https://ws2.eu.kia.com/filehandler.ashx?guid=d107ef60-1f2c-40db-9c3b-8159c8f4490a', '1331', 'Idealny do częstego używania. Z zabezpieczeniem antykorozyjnym wysokiej jakości. Zgodny z normą UNECE 55R. Dealer Kia Motors przekaże informacje o maksymalnej ładowności uchwytu na rowery.'),
(106, 'Sportowe nakładki na pedały', 'https://ws2.eu.kia.com/filehandler.ashx?guid=adbd25d6-3205-43e7-b256-060776c1cb65', '296', 'Znak rozpoznawczy dynamicznego kierowcy. Metalowe sportowe pedały wyglądają atrakcyjne, a gumowe wstawki zapewniają pewność prowadzenia.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(107, 'Czarna folia ochronna zderzaka tylnego', 'https://ws2.eu.kia.com/filehandler.ashx?guid=3569ecde-6336-4242-81c0-e27d7e0094c7', '140', 'Idealnie dopasowana, zapewnia ochronę przy załadunku i rozładunku ciężkich przedmiotów. Chroni lakier zderzaka przed zarysowaniami.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(108, 'Zestaw chlapaczy przód', 'https://ws2.eu.kia.com/filehandler.ashx?guid=fe93520b-92dd-4d97-91d9-0b01e808a820', '116', 'Niezależnie od warunków pogodowych i otoczenia, chlapacze zabezpieczają podwozie, progi oraz drzwi przed wodą, błotem i pyłem.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(109, 'Zestaw chlapaczy tył', 'https://ws2.eu.kia.com/filehandler.ashx?guid=629acfe4-0430-4580-865c-0eb958279049', '116', 'Niezależnie od warunków pogodowych i otoczenia, chlapacze zabezpieczają podwozie, progi oraz drzwi przed wodą, błotem i pyłem.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(110, 'Dywaniki gumowe z szarym logo', 'https://ws2.eu.kia.com/filehandler.ashx?guid=c5ee2214-77a9-4b18-86cd-7907ec1abded', '265', 'Umożliwiają beztroskie wsiadanie do samochodu niezależnie od warunków pogodowych i otoczenia.\r\nWytrzymałe i łatwe do umycia. Skutecznie zabezpieczają podłogę. Idealnie dopasowane. Wyposażone w wytrzymałe zaczepy i antypoślizgowy spód.'),
(111, 'Dywaniki welurowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=c0a02113-e3e2-4ac8-8b9b-f92018aaef3d', '225', 'Eleganckie i praktyczne. Z wysokiej jakości weluru, ozdobione logo modelu. Chronią wnętrze przed zabrudzeniami.\r\nWykonane na miarę. Mocowane do podłogi za pomocą standardowych zaczepów. Antypoślizgowy spód.'),
(112, 'Dwustronny dywanik bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=7bcab166-e02c-48b6-b28b-7c2473ab33dc', '223', 'Wyjazd na zajęcia sportowe, do sklepu, na wakacje? Mamy jedno rozwiązanie na wszystkie okazje! Dwustronny dywanik bagażnika zapewnia pełną ochronę. Z jednej strony pokryty miękkim welurem wysokiej jakości. Druga strona z wytrzymałą powierzchnią gumową, odporną na zabrudzenia.'),
(113, 'Dywanik gumowy bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=6babbdac-6423-41c4-8e5e-5edcc37ffaeb', '209', 'Podwyższone krawędzie zabezpieczają bagażnik przed zabrudzeniami. Wytrzymały i wodoodporny.\r\nAntypoślizgowy spód. Przeciwpoślizgowa guma zapobiega przesuwaniu się ładunku.\r\nIdealnie pasuje do wnętrza.\r\nOzdobiony logo modelu Soul'),
(114, 'Sportowe nakładki na pedały', 'https://ws2.eu.kia.com/filehandler.ashx?guid=5ea1dedc-480e-4ea4-adef-ca62501ff7a7', '293', 'Znak rozpoznawczy dynamicznego kierowcy. Metalowe sportowe pedały wyglądają atrakcyjne, a gumowe wstawki zapewniają pewność prowadzenia.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(115, 'Naklejki ozdobne \"boomerang\" niebieskie', 'https://ws2.eu.kia.com/filehandler.ashx?guid=3c4bb15b-6262-4e9c-9d90-9a1f3dedf8ad', '557', 'Naklejki ozdobne.\r\nPodkreślają sportowy charakter, nowoczesność i własności aerodynamiczne nadwozia.\r\nOdporne na zjawiska pogodowe oraz częste korzystanie z myjni samochodowej.\r\nZalecany specjalistyczny montaż.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(116, 'Naklejki ozdobne \"boomerang\" czerwone', 'https://ws2.eu.kia.com/filehandler.ashx?guid=37bd4fdb-abe1-4d57-9887-95d505837a4a', '557', 'Naklejki ozdobne.\r\nPodkreślają sportowy charakter, nowoczesność i własności aerodynamiczne nadwozia.\r\nOdporne na zjawiska pogodowe oraz częste korzystanie z myjni samochodowej.\r\nZalecany specjalistyczny montaż.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(117, 'Naklejki ozdobne \"boomerang\" czarny metallik', 'https://ws2.eu.kia.com/filehandler.ashx?guid=695b01af-4929-4d7b-894f-558bc5b86b5b', '557', 'Naklejki ozdobne.\r\nPodkreślają sportowy charakter, nowoczesność i własności aerodynamiczne nadwozia.\r\nOdporne na zjawiska pogodowe oraz częste korzystanie z myjni samochodowej.\r\nZalecany specjalistyczny montaż.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(118, 'Folie ochronne zagłębień przy klamkach drzwi', 'https://ws2.eu.kia.com/filehandler.ashx?guid=f6af4869-a440-46f4-b5ff-546cae6c5c43', '86', 'Zagłębienia przy klamkach drzwi są szczególnie narażone na zadrapania i zarysowania. Dzięki foliom ochronnym te miejsca mogą wciąż wyglądać jak nowe.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(119, 'Czarna folia ochronna zderzaka tylnego', 'https://ws2.eu.kia.com/filehandler.ashx?guid=55407ff2-3e5e-468d-9759-da19e5f58819', '133', 'Idealnie dopasowana, zapewnia ochronę przy załadunku i rozładunku ciężkich przedmiotów. Chroni lakier zderzaka przed zarysowaniami.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(120, 'Zestaw chlapaczy przednich', 'https://ws2.eu.kia.com/filehandler.ashx?guid=d3a83813-99ff-4613-9e2d-fb689c11359e', '125', 'Niezależnie od warunków pogodowych i otoczenia, chlapacze zabezpieczają podwozie, progi oraz drzwi przed wodą, błotem i pyłem.\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(121, 'Zestaw chlapaczy tylnych', 'https://ws2.eu.kia.com/filehandler.ashx?guid=e21318d3-0b49-4fc0-9ba1-87f005355e36', '125', 'Niezależnie od warunków pogodowych i otoczenia, chlapacze zabezpieczają podwozie, progi oraz drzwi przed wodą, błotem i pyłem.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(122, 'Diodowe oświetlenie miejsca na nogi (czerwone, 1. rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=a72bc450-a0c2-46d5-ab3d-c73e6b125cf1', '338', 'Dyskretnie oświetla podłogę przed fotelem. Z funkcją „powitania” — automatycznie włącza się i wyłącza w momencie odblokowania/zablokowania drzwi kluczykiem. Po uruchomieniu silnika oświetlenie gaśnie.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.');
INSERT INTO `dodatki` (`idDodatki`, `nazwaDodatki`, `Zdjecie`, `cenaDodatki`, `opisDodatki`) VALUES
(123, 'Diodowe oświetlenie miejsca na nogi (czerwone, 2. rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=374898a1-c61c-4114-bbc1-29e5da0131af', '358', 'Dyskretnie oświetla podłogę przed fotelem. Z funkcją „powitania” — automatycznie włącza się i wyłącza w momencie odblokowania/zablokowania drzwi kluczykiem. Po uruchomieniu silnika oświetlenie gaśnie. Instalacja w 2. rzędzie możliwa wyłącznie w połączeniu z instalacją w 1. rzędzie.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(124, 'Diodowe oświetlenie miejsca na nogi (białe, 1. rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=138cabcf-56e3-4318-bbd9-9628c195bea3', '338', 'Dyskretnie oświetla podłogę przed fotelem. Z funkcją „powitania” — automatycznie włącza się i wyłącza w momencie odblokowania/zablokowania drzwi kluczykiem. Po uruchomieniu silnika oświetlenie gaśnie.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(125, 'Diodowe oświetlenie miejsca na nogi (białe, 2. rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=99b79907-e0d6-4e27-b667-7300598beba6', '358', 'Dyskretnie oświetla podłogę przed fotelem. Z funkcją „powitania” — automatycznie włącza się i wyłącza w momencie odblokowania/zablokowania drzwi kluczykiem. Po uruchomieniu silnika oświetlenie gaśnie. Instalacja w 2. rzędzie możliwa wyłącznie w połączeniu z instalacją w 1. rzędzie.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(126, 'Dywaniki gumowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=340320b9-2a73-446c-bf14-4bb0502b91f0', '225', 'Zestaw 4 dywaników na wszelkie warunki pogodowe. Każdy dokładnie pasuje do miejsca na nogi. Wyjątkowo wytrzymałe. Nie przepuszczają wody, błota, piasku ani soli drogowej. Specjalne wykończenie ułatwia utrzymanie ich w czystości. Dywaniki przednie z wytłoczonym logo modelu.'),
(127, 'Stopnie boczne', 'https://ws2.eu.kia.com/filehandler.ashx?guid=6e6998ea-23b8-457a-875f-3945d213555c', '2130', 'Solidne, z matowego aluminium z gumowymi wstawkami antypoślizgowymi. Ułatwiają dostęp do wnętrza pojazdu i akcesoriów dachowych. Pasują do chlapaczy.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(128, 'Podświetlane stopnie boczne', 'https://ws2.eu.kia.com/filehandler.ashx?guid=4217c798-4003-4143-958c-475240233623', '3153', 'Solidne, z matowego aluminium z gumowymi wstawkami\r\nantypoślizgowymi. Ułatwiają dostęp do wnętrza pojazdu\r\ni akcesoriów dachowych. Odblokowanie drzwi kluczykiem\r\nwłącza diodowe podświetlenie. Po uruchomieniu silnika\r\npodświetlenie gaśnie. Pasują do chlapaczy.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(129, 'Dwustronny dywanik bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=1ecb15b6-1699-4ad5-9fda-e840f6710d40', '273', 'Uniwersalny, zaprojektowany specjalnie dla Kia Sportage. Z jednej strony pokryty miękkim welurem wysokiej jakości. Druga strona z wytrzymałą powierzchnią gumową, odporną na zabrudzenia. Z zatrzaskami do przypięcia maty osłaniającej zderzak.'),
(130, 'Listwy progowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=ceb9f46a-78b1-4289-aa0e-83210968e1fa', '2617', 'Eleganckie, z błyszczącej stali nierdzewnej.\r\nDopasowane do nadwozia.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(131, 'Mata osłaniająca zderzak', 'https://ws2.eu.kia.com/filehandler.ashx?guid=35efec06-5387-4f2b-96ce-df1dcbe40583', '108', 'Odchylana, zaprojektowana specjalnie dla tego modelu. Zabezpiecza zderzak tylny podczas załadunku i rozładunku. Można ją łatwo i szybko połączyć z tylną krawędzią dywanika bagażnika.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(132, 'Dywanik piankowy bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=bffcb269-ad0a-4622-adbb-822a73646ae6', '174', 'Lekki i wytrzymały. Wykonany z pianki polietylenowej.\r\nEkonomiczny i praktyczny, pomaga utrzymać bagażnik w czystości i porządku. Zaprojektowany specjalnie dla tego modelu, z wytłoczonym logo Kia Sportage. Aby zapewnić wygodne przechowywanie można go swobodnie zwinąć.'),
(133, 'Dywanik gumowy bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=c65bc933-f864-4c79-a4da-77599c208350', '215', 'Lekki, wodoodporny i wytrzymały. Podniesione krawędzie dywanika zabezpieczają bagażnik przed zabrudzeniami. Antypoślizgowa guma zapobiega przesuwaniu się ładunku. Zaprojektowany specjalnie dla tego modelu, z wytłoczonym logo Kia Sportage.'),
(134, 'Nakładki na lusterka zewnętrzne', 'https://ws2.eu.kia.com/filehandler.ashx?guid=ff7d6d87-4b88-42b0-8d64-e1dc8b6c4c83', '478', 'Z błyszczącej stali nierdzewnej.\r\nDoskonale komponują się z pozostałymi akcesoriami o wysokim połysku.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(135, 'Listwy boczne', 'https://ws2.eu.kia.com/filehandler.ashx?guid=60d7cf73-dfe9-4085-a44c-e0a2c567ce44', '560', 'Z błyszczącej stali nierdzewnej.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(136, 'Nakładka ochronna progu bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=6c4da3d7-aa62-4171-b1c8-9910748a37d3', '323', 'Wykonana z błyszczącej stali nierdzewnej wysokiej jakości.\r\nChroni próg bagażnika.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(137, 'Listwa klapy bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=ba254fe8-ba44-44a2-879a-0e00ce97deb0', '273', 'Z błyszczącej stali nierdzewnej.\r\nDodaje elegancji tylnej części pojazdu.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(138, 'Bagażnik dachowy 390', 'https://ws2.eu.kia.com/filehandler.ashx?guid=206cb09c-5378-4168-9223-36c4e68b06a7', '2056', 'Wyjazd na wakacje? Prawdopodobnie potrzebna będzie większa przestrzeń na bagaż.\r\nElegancki i wytrzymały bagażnik dachowy sprawi, że upychanie rzeczy w kabinie nie będzie już konieczne. Łatwy w montażu. Zapewnia bezproblemowy dostęp dzięki funkcji obustronnego otwierania. Oto doskonały sposób na uzyskanie dodatkowej przestrzeni! Wyposażony w zamek.'),
(139, 'Uchwyt na rower „ProRide”', 'https://ws2.eu.kia.com/filehandler.ashx?guid=fbdfc847-4de1-417f-bec6-c8b74b177437', '802', 'Po przymocowaniu roweru do ramienia, dalsze dopasowanie i zabezpieczanie odbywa się na wysokości dachu. Służy do tego pokrętło obracane jedną ręką. Do zamontowania zarówno z lewej, jak i z prawej strony dachu. Maksymalne obciążenie: 20 kg.\r\nWyposażony w zamek'),
(140, 'Aluminiowe poprzeczne belki dachowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=3abbc8b1-93a6-403d-b992-6d84a6db1e18', '827', 'Wytrzymałe i lekkie. Zaprojektowane specjalnie do relingów dachowych Kia Sportage. Łatwe do zamontowania i zdemontowania. Tylko dla modeli z relingami OE. Pasują do pojazdów z panoramicznym oknem dachowym i bez okna.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(141, 'Siatka na bagaż', 'https://ws2.eu.kia.com/filehandler.ashx?guid=28c28727-216c-4117-97ec-bf22f6acb46f', '212', 'Dzięki wygodnej siatce łatwiej utrzymać porządek w bagażniku.\r\nElastyczna i wytrzymała siatka zapobiega przesuwaniu się ładunku.'),
(142, 'Hak holowniczy stały', 'https://ws2.eu.kia.com/filehandler.ashx?guid=01875722-d499-4ab3-9f2b-f7194571ecd2', '1190', 'Idealny do częstego używania. Z zabezpieczeniem antykorozyjnym wysokiej jakości. Zgodny z normą UNECE 55R. Dealer Kia Motors przekaże informacje o maksymalnym obciążeniu haka holowniczego z zamontowanym uchwytem na rower.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(143, 'Demontowany hak holowniczy', 'https://ws2.eu.kia.com/filehandler.ashx?guid=67471e2a-fff5-4615-bca9-edbc7d156beb', '2137', 'Wysokiej klasy stalowy hak holowniczy. 3-kulowy system blokady zapewnia łatwy i bezpieczny montaż od spodu. Niewidoczny gdy nie jest używany. Zgodny z normą UNECE 55R. Dealer Kia Motors przekaże informacje o maksymalnym obciążeniu haka holowniczego z zamontowanym uchwytem na rower.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(144, 'Uchwyt do rowerów na wszystkie haki holownicze', 'https://ws2.eu.kia.com/filehandler.ashx?guid=b6d8e816-4fe4-4620-b681-cb0ce6ff3b87', '2188', 'Umożliwia przewożenie 2 rowerów, w tym również rowerów elektrycznych (e bike). Maksymalna ładowność: 60 kg. Niezwykle wygodna funkcja odchylania umożliwia otwieranie klapy bagażnika nawet przy załadowanym uchwycie. Uchwyt oraz zamontowane w nim rowery są zabezpieczone przed kradzieżą.'),
(145, 'Pokrowiec na szyby', 'https://ws2.eu.kia.com/filehandler.ashx?guid=99a0899e-2198-4c05-9138-f73c5665ddda', '283', 'Zabezpiecza wnętrze przed nadmiernym rozgrzewaniem przez promienie słoneczne.\r\nZimą chroni szybę czołową i szyby boczne przednie przed oblodzeniem. Po zamontowaniu zabezpieczony przed kradzieżą. Zaprojektowany specjalnie dla modelu Sportage.'),
(146, 'Owiewki przednie', 'https://ws2.eu.kia.com/filehandler.ashx?guid=a4841e5f-63b3-4512-a82f-ce5882b01512', '306', 'Ograniczają zawirowania podczas jazdy z nieznacznie opuszczonymi szybami przednimi. Aerodynamicznie ukształtowane. Zmieniają kierunek opływającego je powietrza, chroniąc przed kroplami deszczu. Zestaw 2 sztuk.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(147, 'Nakładka ochronna zderzaka tylnego', 'https://ws2.eu.kia.com/filehandler.ashx?guid=80ce682b-681c-43b4-be8b-0edb0193cb24', '382', 'Elegancka i wytrzymała. Wykonana z nierdzewnej stali. Chroni lakier zderzaka przed uszkodzeniami podczas załadunku i rozładunku dużych i ciężkich przedmiotów. Pasuje idealnie do kształtu zderzaka.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(148, 'Czarna folia ochronna zderzaka tylnego', 'https://ws2.eu.kia.com/filehandler.ashx?guid=9d1f1a91-804a-4d26-a171-eba0176f5ea2', '113', 'Pasuje idealnie do powierzchni górnej zderzaka tylnego. Podczas załadunku i rozładunku zabezpiecza przed uszkodzeniem powierzchni lakierowej.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(149, 'Zestaw chlapaczy przednich', 'https://ws2.eu.kia.com/filehandler.ashx?guid=c1a64133-fe32-4754-b6ec-dcf5719bbecc', '133', 'Zabezpieczają podwozie, progi oraz drzwi przed wodą, błotem i pyłem. Zaprojektowane specjalnie dla modelu Sportage.\r\nZestaw 2 sztuk.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(150, 'Zestaw chlapaczy tylnych', 'https://ws2.eu.kia.com/filehandler.ashx?guid=d0150b07-7e43-40a7-bb32-bcd6266faefe', '115', 'Zabezpieczają podwozie, progi oraz drzwi przed wodą, błotem i pyłem. Zaprojektowane specjalnie dla modelu Sportage.\r\nZestaw 2 sztuk.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(151, 'Folie ochronne zagłębień przy klamkach drzwi', 'https://ws2.eu.kia.com/filehandler.ashx?guid=de7b6dae-7b19-4c71-b7a1-7aab5cc3f9fc', '88', 'Zabezpieczają miejsca za klamkami przed zadrapaniem paznokciami lub innymi zarysowaniami. Wykonane z wytrzymałej przezroczystej folii. Zestaw 4 sztuk.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.\r\n\r\n'),
(152, 'Nakładki lusterek zewnętrznych (satyna)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=72e5dc63-d1a6-4e4e-b198-4d9ea92d8428', '918', 'Doskonale komponują się z pozostałymi elementami stylistycznymi nadwozia.'),
(153, 'Nakładki lusterek zewnętrznych (czarne)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=c6a4ee55-9a36-47d5-89de-ebea01eb7e1f', '700', 'Doskonale komponują się z pozostałymi elementami stylistycznymi nadwozia.'),
(154, 'Listwa klapy bagażnika (czarna)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=bfbe814f-9352-4ad9-9f6a-357cddf85f75', '392', 'Podkreśla elegancję części tylnej pojazdu.'),
(155, 'Listwy ozdobne drzwi (czarne)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=4b90ff6d-409d-4bd9-8ec0-e764a513090a', '700', 'Dodają elegancji i podkreślają dynamikę pojazdu.'),
(156, 'Akcesoria stylistyczne (czarne)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=bff6b737-ea53-4e7d-82be-1c75f791c2a7', '1602', 'Dodają elegancji i podkreślają dynamikę pojazdu. Wysoka jakość wykonania.'),
(157, 'Akcesoria stylistyczne (satyna)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=bc131d8d-1dcf-43e5-9627-9e388d25e437', '2273', 'https://ws2.eu.kia.com/filehandler.ashx?guid=bc131d8d-1dcf-43e5-9627-9e388d25e437'),
(158, 'Stopnie boczne', 'https://ws2.eu.kia.com/filehandler.ashx?guid=e38f52c0-0433-4295-bb26-c6a1e26fc331', '2527', 'Atrakcyjne i funkcjonalne. Z aluminiową powierzchnią i gumowymi elementami antypoślizgowymi. Ułatwiają dostęp do wnętrza pojazdu i akcesoriów dachowych.'),
(159, 'Stopnie boczne w sportowym stylu', 'https://ws2.eu.kia.com/filehandler.ashx?guid=a08e2860-5f2a-4b9b-9026-a349ea455750', '3026', 'Atrakcyjne i funkcjonalne. Z aluminiową powierzchnią i gumowymi elementami antypoślizgowymi. Ułatwiają dostęp do wnętrza pojazdu i akcesoriów dachowych.\r\nNieprzystosowane do chlapaczy przednich.'),
(160, 'Poprzeczne belki dachowe ze stopu lekkiego', 'https://ws2.eu.kia.com/filehandler.ashx?guid=eed1b508-b1eb-46bc-bdc6-045c077740e3', '1191', 'Wytrzymałe i lekkie. Stworzone specjalnie do relingów dachowych Kia Sorento. Łatwe do zamontowania i zdemontowania. Samochody bez relingów dachowych — patrz uchwyty na rowery montowane na haku holowniczym.'),
(161, 'Bagażnik dachowy 330', 'https://ws2.eu.kia.com/filehandler.ashx?guid=5ce0a6bb-60ef-4cc1-8b21-e8ce7c2a3cba', '1882', 'Wyjazd na wakacje? Prawdopodobnie potrzebna będzie większa przestrzeń na bagaż.\r\nElegancki i wytrzymały bagażnik dachowy sprawi, że upychanie rzeczy w kabinie nie będzie już konieczne. Łatwy w montażu. Zapewnia bezproblemowy dostęp dzięki funkcji obustronnego otwierania. Oto doskonały sposób na uzyskanie dodatkowej przestrzeni! Wyposażony w zamek.'),
(162, 'Uchwyt typu 600 na narty i deski snowboardowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=ef7c1cad-b79b-46d3-948a-43c32f495408', '704', 'Niezawodny towarzysz podróży podczas przyszłych zimowych przygód. Uchwyt typu 400 na narty i deski snowboardowe pozwala przewieźć 4 pary nart lub 2 deski snowboardowe. Wyposażony w zamek. Jeżeli potrzeba więcej miejsca na sprzęt, można wybrać uchwyt typu 600. Umożliwia on przewóz 6 par nart lub 4 desek snowboardowych'),
(163, 'Uchwyt „Xtender” na narty i deski snowboardowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=61bab30e-db52-48cf-8b1f-1b61273bbb03', '943', 'Ułatwia szybki i łatwy montaż oraz demontaż sprzętu.\r\nPozwala przewieźć 6 par nart lub 4 deski snowboardowe.\r\nWysuwany na bok. Umożliwia montaż i demontaż sprzętu bez dotykania nadwozia pojazdu. Wyposażony w zamek.'),
(164, 'Hak holowniczy demontowany pionowo', 'https://ws2.eu.kia.com/filehandler.ashx?guid=f9ca8ad6-eb6c-438f-8d9f-f8f3ddb0bbfe', '2207', 'Wysokiej klasy stalowy hak holowniczy. 3-kulowy system blokady zapewnia łatwy i bezpieczny montaż od spodu. Demontowalny, konstrukcja haka niewidoczna (wkomponowana pod zderzak).'),
(165, 'Hak holowniczy stały', 'https://ws2.eu.kia.com/filehandler.ashx?guid=7665e6bb-0136-45d8-955b-c75c100fd472', '1495', 'Idealny do częstego używania. Z zabezpieczeniem antykorozyjnym wysokiej jakości.'),
(166, 'Zestaw chlapaczy przednie', 'https://ws2.eu.kia.com/filehandler.ashx?guid=639587ff-0bd2-4d1c-a402-cf2feb9c399e', '139', 'Zabezpieczają podwozie, progi oraz drzwi przed wodą, błotem i pyłem.\r\nZaprojektowane specjalnie do Kia Sorento.'),
(167, 'Zestaw chlapaczy tylne', 'https://ws2.eu.kia.com/filehandler.ashx?guid=c26ee655-cd43-48a7-a4cb-222cd9d05e53', '139', 'Zabezpieczają podwozie, progi oraz drzwi przed wodą, błotem i pyłem.\r\nZaprojektowane specjalnie do Kia Sorento.'),
(168, 'Czarna folia ochronna zderzaka tylnego', 'https://ws2.eu.kia.com/filehandler.ashx?guid=6c5c8bbd-23c0-4f89-8f34-3eed2bbcf210', '141', 'Pasuje idealnie do powierzchni górnej zderzaka tylnego. Podczas załadunku i rozładunku zabezpiecza przed uszkodzeniem powłoki lakierowej.'),
(169, 'Diodowe oświetlenie miejsca na nogi (czerwone, 1. rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=80cecd64-7566-4511-987a-de6179ee252b', '324', 'Dyskretnie rozjaśnia przestrzeń pod deską rozdzielczą. Automatycznie włącza się i gaśnie w momencie otwarcia/zamknięcia przednich drzwi.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(170, 'Diodowe oświetlenie miejsca na nogi (białe, 1. rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=53840324-a616-4404-b03a-57a3b425cdb7', '324', 'Dyskretnie rozjaśnia przestrzeń pod deską rozdzielczą. Automatycznie włącza się i gaśnie w momencie otwarcia/zamknięcia przednich drzwi.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(171, 'Diodowe oświetlenie miejsca na nogi (czerwone, 2. rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=2ac83bdf-1025-43f9-ac84-8363e0efc8df', '354', 'Dyskretnie rozjaśnia przestrzeń pod deską rozdzielczą. Automatycznie włącza się i gaśnie w momencie otwarcia/zamknięcia przednich drzwi.\r\n\r\n*cena nie zawiera montażu (jeśli wymagany).\r\nAby uzyskać informacje dotyczące ceny montażu zalecany jest kontakt bezpośrednio z dealerem.'),
(172, 'Diodowe oświetlenie miejsca na nogi (białe, 2. rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=64ddefb9-c7d0-4d0c-a7e8-fa7426c7795c', '354', 'Dyskretnie rozjaśnia przestrzeń pod deską rozdzielczą. Automatycznie włącza się i gaśnie w momencie otwarcia/zamknięcia przednich drzwi'),
(173, 'Projektory z logo Kia', 'https://ws2.eu.kia.com/filehandler.ashx?guid=a9445dda-745b-478d-8758-b68c1c722aa9', '346', 'Oświetlają podłoże jednobarwnym, wyraźnym logo Kia. Wywierają duże wrażenie po zmroku. Włączają się automatycznie po otwarciu drzwi przednich.'),
(174, 'Oświetlenie podłoża montowane w drzwiach przednich', 'https://ws2.eu.kia.com/filehandler.ashx?guid=81aea7b6-e207-450b-aa57-d7375a54c5c4', '346', 'Włącza się przy każdym otwarciu drzwi. Oświetla podłoże subtelnym, rozproszonym światłem. Podnosi bezpieczeństwo i poczucie komfortu po zmroku.\r\n\r\n'),
(175, 'Oświetlenie LED bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=85892895-4b5c-4010-9677-69bde1bac013', '399', 'Nigdy więcej nie czuj się bezradny, próbując znaleźć jakiś konkretny przedmiot po ciemku. Ciesz się doskonałą widocznością w bagażniku i poza nim!'),
(176, 'Standardowe dywaniki filcowe (3. rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=ee9f18d3-f0e1-4f95-8d27-4b233732c784', '69', 'Zaprojektowane specjalnie do tego modelu. Wykonane z wytrzymałego filcu. Pewne mocowanie.'),
(177, 'Standardowe dywaniki filcowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=f7953d2a-75eb-4e48-957d-fc71008a57dd', '147', 'Zaprojektowane specjalnie do tego modelu. Wykonane z wytrzymałego filcu.\r\nPewne mocowanie. Dywanik kierowcy z logo Kia Sorento i wzmocnieniem pod piętą.'),
(178, 'Dywaniki gumowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=14e77ab1-7df8-4f5d-a0c9-162fbb3df135', '255', 'Zestaw 4 dywaników dostosowanych do wszelkich warunków pogodowych. Każdy dokładnie pasuje do miejsca na nogi. Wyjątkowo wytrzymałe. Nie przepuszczają wody, błota, piasku ani soli drogowej. Specjalne wykończenie ułatwia utrzymanie ich w czystości. Dywanik kierowcy ozdobiony logo modelu.'),
(179, 'Dywaniki gumowe (3. rząd)', 'https://ws2.eu.kia.com/filehandler.ashx?guid=ecfdd9e8-129e-4550-951d-3c627d7b8654', '102', 'Wyjątkowo wytrzymałe. Nie przepuszczają wody, błota, piasku ani soli drogowej. Specjalne wykończenie ułatwia utrzymanie ich w czystości.'),
(180, 'Dywanik gumowy bagażnika', 'https://ws2.eu.kia.com/filehandler.ashx?guid=f5d32a08-da08-4048-af3e-b25f709e04c6', '293', 'Lekki, wodoodporny i wytrzymały. Uniesione krawędzie dywanika zabezpieczają bagażnik przed zabrudzeniami. Antypoślizgowa guma zapobiega przesuwaniu się ładunku. Zaprojektowany specjalnie do tego modelu, z logo Kia Sorento.\r\nNieodpowiedni podczas korzystania z siedzeń 3. rzędu wersji 7-miejscowej');

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
(2, '14\" stalowe obręcze kół z oponami 175/65 R14 ', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=61d39572-0bf6-436a-b404-ce632ca4474f'),
(3, '15\" aluminiowe obręcze kół z oponami 18', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=18f57488-dd0f-4a6e-a557-d2600dec4708'),
(4, '16\" aluminiowe obręcze kół z oponami 195/45 R', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=7e1be038-9759-433d-aa7f-25e9c81cb165'),
(5, '16\" aluminiowe obręcze kół z oponami 195/45 R', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=3ca863d6-979e-41be-9315-75ceec022a8c'),
(6, '15\" stalowe obręcze kół z oponami 185/65/R15 ', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=9a18b669-0a76-4c13-940b-ea2c37f61016'),
(7, '15\" aluminiowe obręcze kół z oponami 185/65/R', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=701871cf-8cd7-44c1-a10b-95ce608fb567'),
(8, '16\" aluminiowe obręcze kół z oponami 195/55/R', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=6d30c765-ad41-438b-8876-60f96f55c7ec'),
(9, '17\" aluminiowe obręcze kół z oponami 205/45/R', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=a03d88d4-c66b-49d8-958b-e74aba197e52'),
(10, '16\" Felgi aluminiowe z oponami 205/55/R16', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=4cd0c3bf-e863-4245-8dbf-3b7eefec1f12'),
(11, '17\'\' Felgi aluminiowe z oponami 225/45/R17', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=6a3d100b-9a1e-4352-8aae-c797c8325eae'),
(12, 'Dedykowane aluminiowe obręcze kół GT Line z o', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=433ed61e-26cf-45bf-853e-a44400ae14b0'),
(13, '17\'\' Felgi aluminiowe z oponami 225/45/R17', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=6a3d100b-9a1e-4352-8aae-c797c8325eae'),
(14, '18\" aluminiowe obręcze kół GT z oponami w rozmiarze 225/40/R18 17-calowe tarcze hamulcowe z przodu, Zaciski hamulcowe lakierowane w kolorze czerwonym', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=19cb4816-03be-42fa-b154-b5d9c7bb2ba1'),
(15, '16\'\' Felgi aluminiowe z oponami 205/55/R16', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=f60c5053-7989-4329-94fb-bc981adb131b'),
(16, '17” aluminiowe obręcze kół z oponami w rozmiarze 225/45/R17', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=7012ffb7-0adb-4171-bfb0-24f115203339'),
(17, '18” aluminiowe obręcze kół GT z oponami w rozmiarze 225/40/R18 , 17-calowe tarcze hamulcowe z przodu, Zaciski hamulcowe lakierowane w kolorze czerwonym', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=937c0b42-be7b-4046-9075-fe0d9014973c'),
(18, 'Felgi aluminiowe 16 calowe z oponami 205/60/R16', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=985ded3b-4428-42af-bd85-35d6e6a9ff47'),
(19, 'Felgi aluminiowe 18 calowe z oponami 235/45/R18', 2000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=e752ccfc-035f-43c7-9748-9a363693a2bb'),
(20, 'Felgi aluminiowe 18 calowe z oponami 235/45/R18', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=e752ccfc-035f-43c7-9748-9a363693a2bb'),
(21, 'Felgi aluminiowe 16 calowe z oponami 205/60/R16', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=65752359-5ffb-482e-b31e-325c9f0a40d0'),
(22, '17\" felgi aluminiowe w kolorze czarnym z oponami 225/60/R17', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=85feb596-6e5a-40e4-951b-760963a4eff2'),
(23, 'Felgi aluminiowe 18 calowe z oponami 235/45/R18', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=449e4f54-eb6d-4a41-bfe2-7ce37d04cf6a'),
(24, '16” aluminiowe obręcze kół z oponami 195/55/R16', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=ccfedf39-92e2-43f8-a4ed-45eba8e29f78'),
(25, '17\" aluminiowe obręcze kół z oponami 205/55/R17 (niedostępne dla silnika 1.2 MPI)', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=54ceb6ad-a7aa-4cf5-bbd1-ee6d51c31d0d'),
(26, '17\" aluminiowe obręcze kół z oponami 205/55/R17', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=a4916835-b07f-4882-8b07-f84ae2fa18ec'),
(27, '16\" felgi aluminiowe z oponami Michelin 205/60 R16', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=31922f77-de7d-43d6-8e56-1e76dfb8f777'),
(28, '18\" felgi aluminiowe z oponami Michelin 225/45 R18', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=6c9d994a-fc2b-4d47-b15b-595db4ea66bc'),
(29, '17\" felgi aluminiowe z oponami Michelin 215/55R17', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=f077ee35-5daf-4a71-b348-477aff7bf0c3'),
(30, '17” felgi aluminowe z oponami 215/55R17', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=612a9a05-8113-48eb-882d-e60191ff3a55'),
(31, '16\" felgi aluminiowe z oponami 215/70/R16', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=9086f7ba-5e2b-48a3-9416-5ca62975eb5b'),
(32, '17\" felgi aluminiowe z oponami 225/60/R17', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=acb3228b-f7ca-429e-bd0d-a7328f206562'),
(33, '19\" felgi aluminiowe z oponami 245/45/R19', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=b70e92a0-442c-4034-9d91-e8a78faae1fa'),
(34, '17\" aluminiowe felgi z oponami 235/65/R17', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=734caa3a-92a3-4909-84dc-33cc6e539d2f'),
(35, '19\" aluminiowe felgi z oponami 235/55 R19', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=9a905401-06e5-4481-a253-133ce844656d'),
(36, '17\" aluminiowe felgi z oponami 235/65R 17', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=86478a3f-dc76-43a6-b11b-805cc4c0b0d8'),
(37, '18” aluminiowe felgi z oponami 235/60R 18', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=7da6de9f-7bff-49f1-b34c-fd39f475dd13'),
(38, '19\" aluminiowe felgi z oponami 235/55 R19', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=8bb07774-1cdf-4426-9fd2-ea00e503f8d2'),
(39, 'Felgi aluminiowe 19\" z oponami 225/40/R19 przód, 255/35/R19 tył', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=6e51810c-fb97-4abb-8b7e-a5879e15d6be'),
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
(53, 'Akcesoryjne kołpaki do stalowych obręczy kół 16”', 685, 'https://ws2.eu.kia.com/filehandler.ashx?guid=de5a5c47-a31d-47a5-85c9-6fd1a7f07f76'),
(54, '17\" aluminiowe obręcze kół z oponami w rozmiarze 225/45/R17', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=7012ffb7-0adb-4171-bfb0-24f115203339'),
(55, 'Akcesoryjne obręcze koła 17” Goyang ze stopu lekkiego (srebrne)', 3150, 'https://ws2.eu.kia.com/filehandler.ashx?guid=096ccb04-d383-4e05-8097-e7bfa999dcb2'),
(56, 'Akcesoryjne obręcze koła 17” Goyang ze stopu lekkiego (dwukolorowe)', 3531, 'https://ws2.eu.kia.com/filehandler.ashx?guid=66e260dd-8b0c-4c5d-bb79-4357f125bd3e'),
(57, 'Akcesoryjne obręcze koła 17” Goyang ze stopu lekkiego (grafitowe)', 3150, 'https://ws2.eu.kia.com/filehandler.ashx?guid=f45a632a-2a8e-41e2-9c6a-f131e7734c36'),
(58, 'Akcesoryjne obręcze koła 17” Goyang ze stopu lekkiego (czarne)', 3150, 'https://ws2.eu.kia.com/filehandler.ashx?guid=aaf05e2b-8395-484f-852d-3e4128cc0912'),
(59, 'Akcesoryjne obręcze koła 18” Danyang ze stopu lekkiego (dwukolorowe)', 3613, 'https://ws2.eu.kia.com/filehandler.ashx?guid=dd02e4f4-2c41-4d67-b859-f58cbef8c4e4'),
(60, 'Akcesoryjne obręcze koła 18” Danyang ze stopu lekkiego (grafitowe)', 3405, 'https://ws2.eu.kia.com/filehandler.ashx?guid=95a7af54-bfda-4f1a-aec4-018bd8a5cf90'),
(61, 'Akcesoryjne obręcze koła 18” type - A ze stopu lekkiego (dwukolorowe)', 5213, 'https://ws2.eu.kia.com/filehandler.ashx?guid=5649d66f-17dc-41d9-9305-b8cc616beb73'),
(62, 'Akcesoryjne obręcze kół 18” Halla ze stopu lekkiego', 4919, 'https://ws2.eu.kia.com/filehandler.ashx?guid=a0ed6cf9-c12e-4e63-8374-211b271e5143'),
(63, 'Akcesoryjne obręcze kół 17” ze stopu lekkiego', 3391, 'https://ws2.eu.kia.com/filehandler.ashx?guid=8e30433f-53e3-4725-b1fc-a9117d33ae89'),
(64, 'Akcesoryjne obręcze kół 16” ze stopu lekkiego', 3027, 'https://ws2.eu.kia.com/filehandler.ashx?guid=58230fad-0f4a-4d77-b57c-66c3fa44a6a1'),
(65, 'Akcesoryjne obręcze kół 19” ze stopu lekkiego', 5551, 'https://ws2.eu.kia.com/filehandler.ashx?guid=caadf6f0-6d80-417c-9b58-f12365c09918'),
(66, 'Akcesoryjne obręcze kół 17” stalowe', 2189, 'https://ws2.eu.kia.com/filehandler.ashx?guid=a5c39f2c-b533-4a63-a622-2faec684bfc1'),
(67, 'Akcesoryjne obręcze koł 17” ze stopu lekkiego', 3356, 'https://ws2.eu.kia.com/filehandler.ashx?guid=81256bab-4cba-4d5f-ab52-ff131a65bc64'),
(68, 'Akcesoryjne obręcze kół 19” ze stopu lekkiego', 4481, 'https://ws2.eu.kia.com/filehandler.ashx?guid=75a816be-f841-4b8c-b36d-8a792fdd25ec'),
(69, 'Akcesoryjne obręcze kół 19” ze stopu lekkiego', 4481, 'https://ws2.eu.kia.com/filehandler.ashx?guid=cbb47bff-b10a-41f3-9011-5f7ae99aa83a'),
(70, 'Akcesoryjne obręcze kół 19” ze stopu lekkiego', 4590, 'https://ws2.eu.kia.com/filehandler.ashx?guid=1eae6aec-f42f-4e12-bb2a-08bed9ea51ab');

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
(23, 17, 27),
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
(14, 52, 1),
(15, 54, 26),
(16, 55, 26),
(29, 55, 27),
(17, 56, 26),
(30, 56, 27),
(18, 57, 26),
(24, 57, 27),
(19, 58, 26),
(25, 58, 27),
(20, 59, 26),
(26, 59, 27),
(21, 60, 26),
(27, 60, 27),
(22, 61, 26),
(28, 61, 27);

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
(1, 'Infra Red', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\Infra Red.png'),
(2, 'Deluxe White', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\Deluxe White.png'),
(3, 'Lunar Silver', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\Lunar Silver.png'),
(4, 'Sparkling Silver', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\Sparkling Silver.png'),
(5, 'Blue Flame', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\Blue Flame.png'),
(6, 'Dark Penta Metal', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\Dark Penta Metal.png'),
(7, 'Cassa White', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\Cassa White.png'),
(8, 'Orange Fusion', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\orange.png'),
(9, 'Shiny Red', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Shiny Red.png'),
(10, 'Lime Light', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Lime Light.png'),
(11, 'Sparkling Silver', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Sparkling Silver.png'),
(12, 'Honey Bee', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Honey Bee.png'),
(13, 'Pop Orange', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Pop Orange.png'),
(14, 'Milky Beige', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\milky.png'),
(15, 'Alice Blue', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Alice Blue.png'),
(16, 'Aurora Black', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Aurora Black.png'),
(17, 'Clear White', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Clear White.png'),
(18, 'Silky Silver', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Silky Silver.png'),
(19, 'Signal Red', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Signal Red.png'),
(20, 'Urban Green', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Urban Green.png'),
(21, 'Smoke Blue', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Smoke Blue.png'),
(22, 'Aurora Black', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Aurora Black.png'),
(23, 'Clear White', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Clear White.png'),
(24, 'Most Yellow', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Most Yellow.png'),
(25, 'Perennial Grey', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Perennial Grey.png'),
(26, 'Sporty Blue', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Sporty Blue.png'),
(27, 'Quantum Yellow', '..\\img\\XCeed\\Styl\\Kolor_nadwozia\\Quantum Yellow.png'),
(28, 'Deep Cerulean Blue', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Deep Cerulean Blue.png'),
(29, 'Gravity Blue', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Gravity Blue.png'),
(30, 'Runway Red', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Runway Red.png'),
(31, 'Orange Delight', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Orange Delight.png'),
(32, 'Horizon Blue', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Horizon Blue.png'),
(33, 'Steel Grey', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Steel Grey.png'),
(34, 'Platinium Graphite', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Platinium Graphite.png'),
(35, 'Snow White Pearl', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Snow White Pearl.png'),
(36, 'Yacht Blue', '..\\img\\e-Niro\\Styl\\Kolor_nadwozia\\Blue Yacht.png'),
(37, 'Inferno Red/Black Soul', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Inferno Red Black Soul.png'),
(38, 'Clear White/ InfernoRed', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Clear White InfernoRed.png'),
(39, 'Black Soul / InfernoRed', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Black Soul InfernoRed.png'),
(40, 'Neptune Blue', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Neptune Blue.png'),
(41, 'Gravity Gray', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Gravity Gray.png'),
(42, 'Inferno Red', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Inferno Red.png'),
(43, 'Space Cadet Green', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Space Cadet Green.png'),
(44, 'Mars Orange', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Mars Orange.png'),
(45, 'Mars Orange/ Cherry Black', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Mars Orange Cherry Black.png'),
(46, 'Neptune Blue/ Cherry Black', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Neptune Blue Cherry Black.png'),
(47, 'Black Cherry', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Black Cherry.png'),
(48, 'Mineral Blue', '..\\img\\Sorento_HEV\\Styl\\Kolor_nadwozia\\Mineral Blue.png'),
(49, 'Essence Brown', '..\\img\\Sorento_HEV\\Styl\\Kolor_nadwozia\\Essence Brown.png'),
(50, 'Neon Orange', '..\\img\\Stinger\\Styl\\Kolor_nadwozia\\Neon Orange.png'),
(51, 'High Chroma Red', '..\\img\\Stinger\\Styl\\Kolor_nadwozia\\High Chroma Red.png'),
(52, 'Ceramic Silver', '..\\img\\Stinger\\Styl\\Kolor_nadwozia\\Ceramic Silver.png'),
(53, 'Micro Blue', '..\\img\\Stinger\\Styl\\Kolor_nadwozia\\Micro Blue.png'),
(54, 'Deep Chroma Blue', '..\\img\\Stinger\\Styl\\Kolor_nadwozia\\Deep Chroma Blue.png'),
(55, 'Panthera Metal', '..\\img\\Stinger\\Styl\\Kolor_nadwozia\\Panthera Metal.png'),
(56, 'Black Pearl', '..\\img\\ProCeed\\Styl\\Kolor_nadwozia\\Black Pearl.png');

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
(71, 56, 26, '//ws2.eu.kia.com/filehandler.ashx?guid=4a098f9f-2be6-49b3-ae21-9358b363df7c', '//ws2.eu.kia.com/filehandler.ashx?guid=2f88621d-0217-4f12-b2c1-2b753c8f382c', '2 500'),
(72, 12, 8, '//ws2.eu.kia.com/filehandler.ashx?guid=b160a771-a7b3-4cad-ad88-9553307900f9', '//ws2.eu.kia.com/filehandler.ashx?guid=27ebc626-2e57-4dbe-837b-49f2c5b5f2e9', '0'),
(73, 12, 9, '//ws2.eu.kia.com/filehandler.ashx?guid=c57562fd-4c91-43e5-b038-8f97d86be8cc', '//ws2.eu.kia.com/filehandler.ashx?guid=e82fe134-6a38-450d-873c-4461ebfb6786', '0'),
(74, 12, 10, '//ws2.eu.kia.com/filehandler.ashx?guid=3c4c97d2-e4f8-4657-ba8d-39400f91a9b5', '//ws2.eu.kia.com/filehandler.ashx?guid=326a6d99-f2fc-4929-9e55-18d2a0ed1d48', '0'),
(75, 12, 11, '//ws2.eu.kia.com/filehandler.ashx?guid=4ab42388-84bc-4077-8948-51bf758700ff', '//ws2.eu.kia.com/filehandler.ashx?guid=e0a3f5d1-a555-4686-8f5d-c9a8ad54d2b1', '0'),
(76, 12, 12, '//ws2.eu.kia.com/filehandler.ashx?guid=23462c44-25cd-4ee4-b640-faa3a759ce8b', '//ws2.eu.kia.com/filehandler.ashx?guid=0a9fd8af-f08b-444c-bba1-ac3d7b51d78f', '0'),
(77, 24, 13, '//ws2.eu.kia.com/filehandler.ashx?guid=b56a6d84-9b97-4b94-9e34-814f3f700139', '//ws2.eu.kia.com/filehandler.ashx?guid=a42a4b8a-5bd2-4d52-bf73-8141753c1a89', '0'),
(78, 24, 14, '//ws2.eu.kia.com/filehandler.ashx?guid=bfc080a3-ee70-438f-9f47-603602ad30d3', '//ws2.eu.kia.com/filehandler.ashx?guid=15ce5639-e171-4eaf-8550-567a86893e87', '0'),
(79, 24, 15, '//ws2.eu.kia.com/filehandler.ashx?guid=12c25358-3738-4287-8337-e2cc78561998', '//ws2.eu.kia.com/filehandler.ashx?guid=e97c254f-29cb-4af6-9073-6213e5fbe955', '0'),
(80, 24, 16, '//ws2.eu.kia.com/filehandler.ashx?guid=2ed30e37-0ce2-4396-b950-e993ae0e4893', '//ws2.eu.kia.com/filehandler.ashx?guid=94e7a2ff-82c4-4a3f-aac8-56579c434550', '0'),
(81, 7, 17, '//ws2.eu.kia.com/filehandler.ashx?guid=eef24775-a32a-4d65-9ab3-9d5b6112b30e', '//ws2.eu.kia.com/filehandler.ashx?guid=62e2e1a9-be30-417b-9b9a-fe7e510ceb13', '0'),
(82, 7, 23, '//ws2.eu.kia.com/filehandler.ashx?guid=b38d5e06-a2d4-45cc-9790-f696a4e3ca5e', '//ws2.eu.kia.com/filehandler.ashx?guid=53995c5a-20e2-4542-9753-5ce6849aa5ec', '0'),
(83, 7, 28, '//ws2.eu.kia.com/filehandler.ashx?guid=cc77452f-82ca-4b56-bcd9-9a1d680aa4c4', '//ws2.eu.kia.com/filehandler.ashx?guid=a50b4831-2521-4c61-80c8-de39c8df703f', '0'),
(84, 7, 32, '//ws2.eu.kia.com/filehandler.ashx?guid=f9e66a57-b056-4624-962e-1fc87924f299', '//ws2.eu.kia.com/filehandler.ashx?guid=1b148439-083b-45c7-afc4-45bbfc72765b', '0'),
(85, 24, 35, '//ws2.eu.kia.com/filehandler.ashx?guid=afdd246c-db7b-49fb-871a-419a84c84e4c', '//ws2.eu.kia.com/filehandler.ashx?guid=d6feb9f5-24ae-453b-b603-bbac4e427812', '0'),
(86, 18, 39, '//ws2.eu.kia.com/filehandler.ashx?guid=0a477059-d42c-402e-bd33-44c520cb162f', '//ws2.eu.kia.com/filehandler.ashx?guid=98266d1f-c250-4d9c-9476-b6a4d9cc5f97', '0'),
(87, 18, 43, '//ws2.eu.kia.com/filehandler.ashx?guid=c0266daa-27a4-4a28-bb4d-00c0c6a087cf', '//ws2.eu.kia.com/filehandler.ashx?guid=0b63d1dc-0074-4b8f-aac5-b46f963baa09', '0'),
(88, 18, 47, '//ws2.eu.kia.com/filehandler.ashx?guid=5d1bfd34-09b7-4b73-8e5e-f7f876e3fe8b', '//ws2.eu.kia.com/filehandler.ashx?guid=5a15de22-3c19-4047-9c42-f787fa083888', '0'),
(89, 43, 50, '//ws2.eu.kia.com/filehandler.ashx?guid=2763eb5a-04ce-4f13-8e5f-4c3cdbe4afda', '//ws2.eu.kia.com/filehandler.ashx?guid=23cf6ca8-3341-4a68-bc87-0f79b268db3d', '0'),
(90, 4, 55, '//ws2.eu.kia.com/filehandler.ashx?guid=93e234ff-5e8a-4937-aa8e-798f5bc97963', '//ws2.eu.kia.com/filehandler.ashx?guid=475bafc6-7fa9-4c93-bd72-519e8c59fafe', '0'),
(91, 23, 59, '//ws2.eu.kia.com/filehandler.ashx?guid=9d0e9df8-e76b-47ef-9601-cb90770e0fb8', '//ws2.eu.kia.com/filehandler.ashx?guid=995cc5fe-8223-4759-b5d7-bba08e1cdd8f', '0'),
(92, 23, 63, '//ws2.eu.kia.com/filehandler.ashx?guid=c9a2fb36-869b-4f65-b33e-498bd730aa9d', '//ws2.eu.kia.com/filehandler.ashx?guid=ef306334-619f-46a3-9557-6197a313ab25', '0'),
(93, 23, 67, '//ws2.eu.kia.com/filehandler.ashx?guid=c85cc2dc-43c6-4ffe-b7a1-a4ebe434e23d', '//ws2.eu.kia.com/filehandler.ashx?guid=c8bac24d-9759-4797-b92c-9bee05268744', '0'),
(94, 50, 71, '//ws2.eu.kia.com/filehandler.ashx?guid=3b1a22e2-2622-488f-82da-a80917927934', '//ws2.eu.kia.com/filehandler.ashx?guid=e65622d9-ba1b-44d3-9562-b5eeef33dda5', '0'),
(95, 4, 53, '//ws2.eu.kia.com/filehandler.ashx?guid=93e234ff-5e8a-4937-aa8e-798f5bc97963', '//ws2.eu.kia.com/filehandler.ashx?guid=475bafc6-7fa9-4c93-bd72-519e8c59fafe', '0');

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
-- Struktura tabeli dla tabeli `log_user`
--

CREATE TABLE `log_user` (
  `id` int(11) NOT NULL,
  `Login` varchar(255) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `log_user`
--

INSERT INTO `log_user` (`id`, `Login`, `Data`) VALUES
(2, 'groszek12', '2021-06-06 21:20:37');

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
(4, 'Kierownica wielofunkcyjna, port USB', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=8b58587d-2178-4d12-a5f3-c4b47b97838b', ''),
(5, 'Klimatyzacja manualna', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=5709373f-5c80-4116-9f91-e2d2f51893da', ''),
(6, 'zestaw zegarów z regulacją podświetlenia oraz wyświetlaczem TFT 4.2\" dla komputera pokładowego', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C3.jpg', ''),
(7, 'Radioodtwarzacz MP3 z RDS, tuner radia cyfrow', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C7.jpg', ''),
(8, 'Kia Forward Collision Avoidance Assist - syst', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C4.jpg', ''),
(9, 'Instalacja LPG', 4800, 'https://ws2.eu.kia.com/defaultasset/element_preview/C1.jpg', ''),
(10, 'Kia Cruise Control – tempomat z ogranicznikie', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C4.jpg', ''),
(11, 'Kia Forward Collision Avoidance Assist (FCA) ', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=61f332f5-4525-47b5-a735-4fe3d367b4c5', ''),
(12, 'Kia Lane Keeping Assist – asystent utrzymania pasa ruchu, Kia Lane Following Assist – asystent jazdy w ruchu utrzymujący samochód w środku pasa', 1000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=9b98da17-a500-4312-a512-42dde4f50b6a', ''),
(13, 'Kia Navi System - system multimedialny z nawigacją satelitarną z obsługą w języku polskim, 8” ekran dotykowy, interfejs Android Auto oraz Apple CarPlay, 6 głośników (w tym 2 tweetery), 7 letni plan darmowej aktualizacji map, usługi TomTom', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=c1f93449-2ae1-416a-93b8-7d1b1e34017e', ''),
(14, 'Kia Blind Spot Collision Warning - system monitorowania martwego pola w lusterkach, Kia Rear Cross Traffic Alert - system monitorowania ruchu pojazdów podczas cofania', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=3aef116b-8518-4081-8927-3b4a59dffd06', ''),
(15, 'Kia UVO Connect – zestaw usług cyfrowych z darmowym 7 letnim planem obsługi', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=cb87b649-334f-407a-8d50-d7a09c789a79', ''),
(16, 'Kia Rear Cross Traffic Collision Avoidance Assist – system automatycznie hamujący w przypadku braku reakcji kierowcy na możliwość wystąpienia kolizji z nadjeżdżającym pojazdem podczas cofania', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C4.jpg', ''),
(17, 'Kia Blind Spot Collision Avoidance Assist – system automatycznie zmieniający tor jazdy w przypadku braku reakcji kierowcy na możliwość wystąpienia kolizji podczas zmiany pasa ruchu', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=eafbeb69-e17d-49be-afb2-c3784d03b393', ''),
(18, 'Forward Collision Avoidance Assist - system automatycznego hamowania wykrywający samochód, rowerzystę i pieszego, Lane Keeping Assist - asystent utrzymania pasa ruchu', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=8f867baa-46af-43ee-88fc-4247565f8e22', ''),
(19, 'Pakiet zimowy: podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=afa74b72-b807-4268-9059-f22c87bd3931', ''),
(20, 'High Beam Assist - funkcja automatycznego przełączania świateł mijania na drogowe i odwrotnie, Driver Attention Warning - system ostrzegania o zmęczeniu kierowcy, Lane Following Assist - asystent jazdy w ruchu utrzymujący samochód pośrodku pasa', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C4.jpg', ''),
(21, 'Koło kierownicy, drążek zmiany biegów obszyte skórą', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C3.jpg', ''),
(22, '7 letni plan darmowej aktualizacji map, usługi TomTom, tuner radia cyfrowego DAB, antena dachowa typu „płetwa rekina”, Kia Uvo Connect – zestaw usług cyfrowych z darmowym 7 letnim planem obsługi', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C7.jpg', ''),
(23, 'Rear Cross Traffic Collision Avoidance Assist – system automatycznie hamujący podczas cofania w przypadku ryzyka kolizji z nadjeżdżającym pojazdem', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=5744c529-6e28-4c36-b00b-83813cf004e9', ''),
(24, 'Smart Cruise Control – tempomat aktywny bez funkcji Stop & Go', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=a97f6c5d-cca0-4169-b71b-57dd5a13da86', ''),
(25, 'Okno dachowe otwierane elektrycznie', 2000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=c023ef37-4399-4c23-95a0-aa3f27824682', ''),
(26, 'Intelligent Speed Limit Warning – system rozpoznawania znaków ograniczeń prędkości', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=16af5445-eea2-4737-ace6-4127f0d967e7', ''),
(27, 'Kia Navi System', 4000, 'https://ws2.eu.kia.com/defaultasset/element_preview/C7.jpg', ''),
(28, 'Światła mijania oraz drogowe wykonane w technologii LED, kierunkowskazy LED', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C2.jpg', ''),
(29, 'Elektryczna regulacja podparcia lędźwiowego foteli przednich, manualna regulacja wysokość siedziska fotela pasażera', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C5.jpg', ''),
(30, 'Szklany dach', 3500, 'https://ws2.eu.kia.com/defaultasset/element_preview/C2.jpg', ''),
(31, 'Kia Smart Cruise Control (SCC)', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=67c87b08-a390-47ca-86dc-a90874ddb84a', ''),
(32, 'Szklany dach, sterowany elektrycznie, elektrycznie regulowana roleta, oświetlenie wnętrza LED', 3500, 'https://ws2.eu.kia.com/defaultasset/element_preview/C2.jpg', ''),
(33, 'Pakiet bezpieczeństwa dla wersji DCT', 4000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=e5d777a0-5436-4a53-aa68-cfa956de7152', ''),
(34, 'Pakiet Technologiczny', 6000, 'https://ws2.eu.kia.com/defaultasset/element_preview/C7.jpg', ''),
(35, 'Czujniki parkowania z tyłu', 1000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=8573a719-823a-4caf-ac3a-9c07d1c1088f', ''),
(36, 'Kia Navi System', 4000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=fd3be3f0-e779-4ace-bf0e-9ff70d078cee', ''),
(37, 'Przyciemniane szyby tylne', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C2.jpg', ''),
(38, 'Światła mijania oraz drogowe wykonane w technologii LED, kierunkowskazy LED', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C2.jpg', ''),
(39, 'Pakiet Premium', 4000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=fa2dd28b-41f3-4ae8-955d-41fc2240a598', ''),
(40, 'Pakiet Premium', 6000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=fa2dd28b-41f3-4ae8-955d-41fc2240a598', ''),
(41, 'Pakiet bezpieczeństwa dla wersji MT', 3000, 'https://ws2.eu.kia.com/defaultasset/element_preview/C4.jpg', ''),
(42, 'Indukcyjna ładowarka do telefonu', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=e62f1059-095f-404a-af81-9d78dea7fea5', ''),
(43, 'System nagłośnienia JBL', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=5ccac132-27a9-49f8-a6a4-8d1629119b3b', ''),
(44, 'Kia Speed Limit Warning (SLW) – system rozpoznający znaki ograniczeń prędkości', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C4.jpg', ''),
(45, '10.25\" kolorowy ekran dotykowy LCD, tuner radia cyfrowego DAB+', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=549b17ed-3d1d-4a19-b6db-17cb1df55297', ''),
(46, 'Kia Supervision Cluster – cyfrowe zegary z kolorowym ekranem o przekątnej 12.3', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=941f6ed8-cff9-4e08-a044-421ef0c9f097', ''),
(47, 'Pakiet bezpieczeństwa dla 7DCT', 4000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=4895bd17-0b69-4b31-a70a-94b28a527207', ''),
(48, 'Pakiet Premium dla wersji GT', 3500, 'https://ws2.eu.kia.com/filehandler.ashx?guid=bbb37dfc-03c2-4b9a-bed2-fd05a02fe7d4', ''),
(49, 'Elektrochromatyczne lusterko wewnętrzne', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C4.jpg', ''),
(50, 'Automatyczne wycieraczki z czujnikiem deszczu', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C4.jpg', ''),
(51, 'Klimatyzacja automatyczna', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C4.jpg', ''),
(52, 'Fotele przednie wentylowane', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=0ee8a578-a5a9-4b4a-bee2-d5ab0ffcf2f7', ''),
(53, 'Pakiet bezpieczeństwa', 4000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=26aa7c3f-85e2-4b27-8d54-e5b55c10aed0', 'Pakiet bezpieczeństwa\r\n\r\n-Kia Blind Spot Collision Warning (BCW) - system monitorowania martwego pola w lusterkach\r\n-Kia Rear Cross Traffic Collision Warning (RTCW) - system monitorowania ruchu pojazdów podczas cofania\r\n-Kia Forward Collision Avoidance Assist (FCA) - system autonomicznego hamowania z dodatkową funkcją wykrywania rowerzystów\r\n-Kia Smart Cruise Control (SCC) - aktywny tempomat z automatyczną regulacją odległości oraz funkcją Stop & Go\r\n-Kia Lane Following Assist (LFA) – asystent jazdy w korku'),
(54, 'Kierownica wykończona skórą', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C3.jpg', ''),
(55, 'Kamera cofania z dynamicznymi liniami ułatwiającymi parkowanie', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=faa5a6fe-376b-452d-8fb3-f8744be4d1b1', ''),
(56, 'Relingi dachowe', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=9f82f2ff-e90b-4ca3-ac05-0ed59b1845f3', ''),
(57, 'Podwójna podłoga bagażnika', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C3.jpg', ''),
(58, 'Zestaw zegarów \"Supervision” z regulacją podświetlenia oraz 4,2” wyświetlaczem TFT komputera pokładowego', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=b4ca1f21-8d69-45fe-9327-aaeda9683138', ''),
(59, 'Forward Collision Avoidance Assist - system automatycznego hamowania wykrywający samochód, rowerzystę i pieszego, High Beam Assist - funkcja automatycznego przełączania świateł mijania na drogowe i odwrotnie', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=0087903b-73b0-479c-97a8-ef89a31e9231', 'Driver Attention Warning - system ostrzegania o zmęczeniu kierowcy, Lane Following Assist - asystent jazdy w ruchu utrzymujący samochód pośrodku pasa, Cruise Control - tempomat z ogranicznikiem prędkości'),
(60, 'Kia Navi System', 3000, 'https://ws2.eu.kia.com/defaultasset/element_preview/C7.jpg', 'System multimedialny z nawigacją satelitarną z obsługą w języku polskim\r\n- 7 letni plan darmowej aktualizacji map\r\n- usługi TomTom\r\n- antena dachowa typu „płetwa rekina”\r\n- Kia Uvo Connect – zestaw usług cyfrowych z darmowym 7 letnim planem obsługi'),
(61, 'Blind Spot Detection - system monitorowania martwego pola w lusterkach, Rear Cross Traffic Alert - system monitorowania ruchu pojazdów podczas cofania', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=42f8cdeb-44e0-475c-834d-2cb0b6ebbca0', ''),
(62, 'Przednie czujniki parkowania', 0, '', ''),
(63, 'Pakiet Bezpieczeństwa', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=8122b0f9-2d1d-4276-bb39-f350850acbac', 'Pakiet Bezpieczeństwa:\r\nKia Forward Collision Avoidance Assist (FCA) - system autonomicznego hamowania z funkcją wykrywania pieszych\r\nKia Lane Following Assist (LFA) - asystent jazdy w korku\r\nKia Smart Cruise Control (SCC) - aktywny tempomat z automatyczną regulacją odległości oraz funkcją Stop & Go'),
(64, 'Kia Rear Cross Traffic Alert - system monitorowania ruchu pojazdów podczas cofania', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C7.jpg', ''),
(65, 'Okno dachowe', 2500, 'https://ws2.eu.kia.com/filehandler.ashx?guid=74cbfee8-8e22-4747-b499-c67a48b87a33', 'Okno dachowe, sterowane elektrycznie, oświetlenie wnętrza LED'),
(66, 'Pakiet technologiczny', 2000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=12195acd-fde5-4614-b7ce-e6457ee9b8bd', '- Kia Blind Spot Detection - system monitorowania martwego pola w lusterkach,\r\n- Kia Rear Cross Traffic Alert - system monitorowania ruchu pojazdów podczas cofania'),
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
(89, 'Panoramiczny szklany dach, sterowany elektrycznie z elektrycznie regulowaną roletą', 4000, 'https://ws2.eu.kia.com/filehandler.ashx?guid=d308ad73-87b9-438a-9018-469c8b9fd9cd', ''),
(90, 'Kia Navi System Plus', 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C7.jpg', 'Kia Navi System\r\n- system nawigacji satelitarnej z obsługą w języku polskim, 7-letnim planem darmowej aktualizacji, usługami TomTom\r\n-bluetooth z możliwością podłączenia dwóch urządzeń');

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
(1, 1, 1),
(10, 15, 26),
(19, 15, 27),
(2, 30, 26),
(12, 30, 27),
(3, 40, 26),
(4, 41, 26),
(5, 42, 26),
(15, 42, 27),
(6, 43, 26),
(16, 43, 27),
(7, 44, 26),
(17, 44, 27),
(8, 45, 26),
(18, 45, 27),
(9, 46, 26),
(20, 46, 27),
(14, 47, 27),
(13, 48, 27),
(11, 90, 26),
(21, 90, 27);

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
('filiprzepiela@interia.pl', '$2y$10$S6fsBib3JoZHMMxGE5odbukXmXNEaEWzNYfJ9NGmWK3kVpfEmc3em', '2021-06-06 06:48:32');

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
(244, NULL, '3.3 T-GDI V6 AWD 366 KM 8AT', NULL, '244 990'),
(255, NULL, '1.2 DPi 5AMT 84KM', NULL, '62 990');

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
(122, 15, 26),
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
(38, 38, 6),
(45, 39, 8),
(46, 40, 8),
(47, 41, 8),
(48, 42, 9),
(49, 43, 9),
(50, 44, 9),
(51, 45, 10),
(52, 46, 10),
(53, 47, 11),
(54, 48, 11),
(55, 49, 12),
(56, 50, 12),
(57, 51, 12),
(59, 52, 13),
(60, 53, 13),
(61, 54, 13),
(62, 55, 13),
(63, 56, 14),
(64, 57, 14),
(65, 58, 14),
(66, 59, 14),
(67, 60, 14),
(68, 61, 15),
(69, 62, 15),
(70, 63, 15),
(71, 64, 15),
(72, 65, 15),
(73, 66, 16),
(74, 67, 16),
(75, 68, 16),
(76, 69, 16),
(77, 70, 16),
(44, 71, 7),
(78, 71, 7),
(79, 72, 17),
(80, 73, 17),
(81, 74, 17),
(82, 75, 17),
(83, 76, 18),
(84, 77, 18),
(85, 78, 18),
(86, 79, 18),
(87, 80, 18),
(88, 81, 18),
(89, 82, 18),
(90, 83, 18),
(91, 84, 18),
(92, 85, 19),
(93, 86, 19),
(94, 87, 19),
(95, 88, 19),
(96, 89, 19),
(97, 90, 19),
(98, 91, 19),
(99, 92, 20),
(100, 93, 20),
(101, 94, 20),
(102, 95, 20),
(103, 96, 20),
(104, 97, 21),
(105, 98, 21),
(106, 99, 21),
(107, 100, 21),
(108, 101, 21),
(109, 102, 21),
(110, 103, 21),
(111, 104, 22),
(112, 105, 22),
(113, 106, 22),
(114, 107, 22),
(115, 108, 22),
(116, 109, 22),
(117, 110, 22),
(118, 111, 23),
(119, 112, 24),
(120, 113, 25),
(40, 114, 26),
(121, 114, 26),
(39, 114, 27),
(41, 115, 26),
(42, 116, 26),
(123, 116, 26),
(43, 117, 26),
(124, 117, 26),
(125, 118, 27),
(126, 119, 28),
(143, 120, 28),
(144, 121, 28),
(145, 122, 28),
(146, 123, 28),
(147, 124, 29),
(148, 125, 29),
(149, 126, 29),
(150, 126, 29),
(151, 127, 29),
(152, 128, 29),
(153, 129, 29),
(154, 130, 29),
(155, 131, 30),
(156, 132, 30),
(157, 133, 30),
(158, 134, 30),
(159, 135, 30),
(160, 136, 30),
(161, 137, 30),
(162, 138, 31),
(163, 139, 31),
(164, 140, 31),
(165, 141, 31),
(166, 142, 31),
(167, 143, 31),
(168, 144, 32),
(169, 145, 33),
(170, 146, 34),
(171, 147, 35),
(172, 148, 35),
(173, 149, 35),
(174, 150, 35),
(175, 151, 36),
(176, 152, 36),
(177, 153, 36),
(178, 154, 36),
(179, 155, 36),
(180, 156, 37),
(181, 157, 37),
(182, 158, 37),
(183, 159, 37),
(184, 160, 37),
(185, 161, 38),
(186, 162, 38),
(187, 163, 38),
(188, 164, 38),
(189, 165, 39),
(190, 166, 40),
(191, 167, 41),
(192, 168, 42),
(193, 169, 43),
(194, 170, 44),
(195, 171, 45),
(196, 172, 46),
(197, 173, 47),
(198, 174, 47),
(199, 175, 48),
(200, 176, 48),
(201, 177, 49),
(202, 178, 49),
(203, 179, 50),
(204, 180, 50),
(205, 181, 51),
(206, 182, 51),
(207, 183, 52),
(208, 184, 52),
(209, 185, 53),
(210, 186, 54),
(211, 187, 54),
(212, 188, 54),
(213, 189, 54),
(214, 190, 54),
(215, 191, 54),
(216, 192, 54),
(217, 193, 54),
(218, 194, 55),
(219, 195, 55),
(220, 196, 55),
(221, 197, 55),
(222, 198, 55),
(223, 199, 55),
(224, 200, 55),
(225, 201, 55),
(226, 202, 55),
(227, 203, 56),
(228, 204, 56),
(229, 205, 56),
(230, 206, 56),
(231, 207, 56),
(232, 208, 56),
(233, 209, 56),
(234, 210, 56),
(235, 211, 56),
(236, 212, 57),
(237, 213, 57),
(238, 214, 57),
(239, 215, 57),
(240, 216, 57),
(241, 217, 57),
(242, 218, 57),
(243, 219, 58),
(244, 220, 58),
(245, 221, 58),
(246, 222, 58),
(247, 223, 58),
(248, 224, 58),
(249, 225, 58),
(250, 226, 58),
(251, 227, 59),
(252, 228, 59),
(253, 229, 60),
(254, 230, 60),
(255, 231, 61),
(256, 232, 61),
(257, 233, 62),
(258, 234, 62),
(259, 235, 63),
(260, 236, 64),
(261, 237, 65),
(262, 238, 66),
(263, 239, 67),
(264, 240, 68),
(265, 241, 69),
(266, 242, 70),
(267, 243, 71),
(268, 244, 72),
(58, 255, 10);

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
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'frzepiela99', 'filiprzepiela@interia.pl', NULL, '$2y$10$YRPJ396OreD9.bucdcuIWuBQ0utfTxyLqgrAbnJSFQUXPN4.v.LMS', NULL, '2021-05-07 15:14:18', '2021-05-07 15:14:18'),
(2, 'fifi12', 'f@g.pl', NULL, '$2y$10$aGs2frvT6AR32Q/6zJTYeu5h1/gtEtOYzQfqQj11kys8.A1wZgjHK', NULL, '2021-05-10 09:20:54', '2021-05-10 09:20:54'),
(3, 'pjoter99', 'pjoter99@pjoter.pl', NULL, '$2y$10$7NrHoLSdIoTW25Elt1gYW.T/4GmB118edprh9xgPVPvEdcd5HNpea', NULL, '2021-05-10 11:21:01', '2021-05-10 11:21:01'),
(5, 'psmola99', 'pawel@smola.pl', NULL, '$2y$10$Y2aBNu6Gsrga5yr8PhnOZOHFzLXKHnxo8kWwqXxI8sGJLTs/nKKO.', NULL, '2021-05-20 19:01:18', '2021-05-20 19:01:18'),
(8, 'groszek12', 'groszek12345@groszek.eu', NULL, '$2y$10$OJk2ekmGo0WWQVqSoqhddeQ0P5gKL8uiXx5W66IMS.VukCG9idsE2', NULL, '2021-06-06 19:20:37', '2021-06-06 19:20:37');

--
-- Wyzwalacze `users`
--
DELIMITER $$
CREATE TRIGGER `log_uzytkownik` AFTER INSERT ON `users` FOR EACH ROW BEGIN
INSERT INTO log_user(Login) VALUES (NEW.name);
END
$$
DELIMITER ;

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
(8, 'Picanto M', 'Elektryczne sterowane szyby drzwi przednich i tylnych\r\nElektrycznie regulowane lusterka z funkcją podgrzewania\r\nCentralny zamek z alarmem,\r\nimmobilizer,\r\nskładany kluczyk \r\nCzujnik zmierzchu\r\nRegulacja kolumny kierownicy', '//ws2.eu.kia.com/filehandler.ashx?guid=d7eef12d-07b8-4379-950d-a77aa9f87ec0', '//ws2.eu.kia.com/filehandler.ashx?guid=0df112e6-f39b-49bf-aea1-2b6d9f4cffa2'),
(9, 'Picanto L', 'Klimatyzacja automatyczna\r\n8” kolorowy ekran dotykowy\r\nInterfejs Android Auto/Apple CarPlay\r\nKamera cofania z dynamicznymi liniami ułatwiającymi parkowanie\r\nŚwiatła do jazdy dziennej wykonane w technologii LED', '//ws2.eu.kia.com/filehandler.ashx?guid=d7eef12d-07b8-4379-950d-a77aa9f87ec0', '//ws2.eu.kia.com/filehandler.ashx?guid=0df112e6-f39b-49bf-aea1-2b6d9f4cffa2'),
(10, 'Picanto Business Line', 'Podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nKia Smart Key - system otwierania i uruchamiania samochodu bez użycia kluczyka\r\nKia Navi System - system mutlimedialny z nawigacją oraz 8\" ekranem dotykowym\r\nKia UVO Connect - zestaw usług cyfrowych\r\nTylne czujniki parkowania', '//ws2.eu.kia.com/filehandler.ashx?guid=b7c8bfc7-caf2-4ddb-b7c3-19972a2882d9', '//ws2.eu.kia.com/filehandler.ashx?guid=326a6d99-f2fc-4929-9e55-18d2a0ed1d48'),
(11, 'Picanto GT Line', 'Podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nTapicerka ze skóry ekologicznej\r\n16\" aluminiowe obręcze kół z oponami 195/45R16\r\nKia Smart Key - system otwierania i uruchamiania pojazdu bez użycia kluczyka\r\nLusterka zewnętrzne z kierunkowskazami LED', '//ws2.eu.kia.com/filehandler.ashx?guid=c26f753b-c11c-4c50-b35f-10f3a5f867c6', '//ws2.eu.kia.com/filehandler.ashx?guid=5b3da383-7a59-4c54-8b1b-ce4f0337cbc8'),
(12, 'Picanto X-Line', 'Podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nTapicerka ze skóry ekologicznej\r\n16\" aluminiowe obręcze kół z oponami 195/45R16\r\nKia Smart Key - system otwierania i uruchamiania pojazdu bez użycia kluczyka\r\nLusterka zewnętrzne z kierunkowskazami LED', '//ws2.eu.kia.com/filehandler.ashx?guid=103ab9d5-2ed7-4582-9789-c3c15d7ece4b', '//ws2.eu.kia.com/filehandler.ashx?guid=384d0826-5341-40d7-bc79-7d9484714878'),
(13, 'Rio M', 'Elektryczne sterowane szyby drzwi przednich z funkcją bezpieczeństwa\r\nElektrycznie regulowane lusterka z funkcją podgrzewania\r\nZdalnie sterowany centralny zamek\r\nKlimatyzacja manualna\r\nCzujnik zmierzchu – automatyczne włączanie świateł mijania\r\n15\" stalowe obręcze kół z oponami 185/65/R15 oraz kołpaki', '//ws2.eu.kia.com/filehandler.ashx?guid=dd518cf2-4352-497b-9f31-6c6d6bc2327d', '//ws2.eu.kia.com/filehandler.ashx?guid=869200e8-6b7c-4bbb-ba78-7db2f1f37019'),
(14, 'Rio L', 'Klimatyzacja automatyczna z funkcją odparowywania szyby przedniej\r\n8” kolorowy ekran dotykowy\r\nInterfejs Android Auto/Apple CarPlay\r\nKamera cofania z dynamicznymi liniami ułatwiającymi parkowanie\r\nTylne czujniki parkowania\r\nCzujnik deszczu z automatycznymi wycieraczkami\r\nPakiet bezpieczeństwa z systemami: \r\n•automatycznego hamowania • automatycznego przełączania świateł mijania na drogowe i odwrotnie • wykrywania zmęczenia kierowcy • utrzymania auta pośrodku pasa ruchu • tempomat', '//ws2.eu.kia.com/filehandler.ashx?guid=96481049-3cdf-44d1-95c2-3b3bd647b02e', '//ws2.eu.kia.com/filehandler.ashx?guid=20c1d974-63f2-474f-81d8-34956ec87932'),
(15, 'Rio Business Line', 'Światła mijania i drogowe wykonane w technologii LED z funkcją statycznego doświetlania zakrętów\r\nPakiet zimowy: \r\npodgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nTylne lampy wykonane w technologii LED\r\n16\" aluminiowe obręcze kół z oponami 195/55/R16\r\nKia Smart Key - system otwierania i uruchamiania samochodu bez użycia kluczyka\r\nPrzyciemniane szyby tylne', '//ws2.eu.kia.com/filehandler.ashx?guid=12c25358-3738-4287-8337-e2cc78561998', '//ws2.eu.kia.com/filehandler.ashx?guid=4093e25a-2427-4451-a44a-309f157c36e6'),
(16, 'Rio GT Line', 'Światła mijania i drogowe wykonane w technologii LED ze statycznym doświetlaniem zakrętów\r\nDedykowane 17\" aluminiowe obręcze kół z oponami 205/45/R17\r\nPrzednie czujniki parkowania\r\nKia Navi System - system multimedialny z nawigacją satelitarną\r\nKia Uvo Connect – zestaw usług cyfrowych z darmowym 7 letnim planem obsługi\r\nElektrochromatyczne lusterko wsteczne', '//ws2.eu.kia.com/filehandler.ashx?guid=a0683333-69a5-41d3-be9e-8c4dacf09ed9', '//ws2.eu.kia.com/filehandler.ashx?guid=5147ca90-e415-4d8c-afc0-b97b59679e25'),
(17, 'Ceed Kombi S', 'Tempomat z ogranicznikiem prędkości\r\nSystem autonomicznego hamowania (FCA)\r\nAsystent utrzymania pasa ruchu (LKA)\r\nKlimatyzacja manualna\r\nElektryczne sterowanie szyb przednich i tylnych', '//ws2.eu.kia.com/filehandler.ashx?guid=5fe8d6f6-adbe-4244-9940-f6b9f3aec868', '//ws2.eu.kia.com/filehandler.ashx?guid=db3de3db-be04-4993-8f8b-539cd5d018c4'),
(18, 'Ceed Kombi M', '8\" kolorowy ekran dotykowy LCD, \r\nApple CarPlay, Android Auto\r\nkamera cofania z dynamicznymi liniami\r\ntylne lampy LED z funkcją do jazdy dziennej\r\nklimatyzacja automatyczna\r\nelektrochromatyczne lusterko wewnętrzne', '//ws2.eu.kia.com/filehandler.ashx?guid=d7cd646c-9fe5-45ec-8478-1726c9d07f81', '//ws2.eu.kia.com/filehandler.ashx?guid=4bd2dd90-e3cb-45c1-86c7-4cb9218c0480'),
(19, 'Ceed Kombi L', '16-calowe felgi aluminiowe z oponami 205/55/R16\r\nKolorowy wyświetlacz LCD komputera pokładowego o przekątnej 4.2\"\r\nElektrycznie składane lusterka zewnętrzne z kierunkowskazami LED\r\nElektryczna regulacja podparcia odcinka lędźwiowego foteli przednich', '//ws2.eu.kia.com/filehandler.ashx?guid=d7cd646c-9fe5-45ec-8478-1726c9d07f81', '//ws2.eu.kia.com/filehandler.ashx?guid=4bd2dd90-e3cb-45c1-86c7-4cb9218c0480'),
(20, 'Ceed Kombi GT Line', 'Kia Navi System Plus\r\nFelgi aluminiowe 17\"\r\nŚwiatła w technologii LED\r\nKia Smart Key\r\nDedykowana tapicerka GT Line', '//ws2.eu.kia.com/filehandler.ashx?guid=6af7bee2-26cf-4af2-8591-9eaa9c556bb9', '//ws2.eu.kia.com/filehandler.ashx?guid=c9814cb5-9157-4af0-8194-2e08cc2c5d6a'),
(21, 'Ceed Kombi Business Line', 'Światła mijania oraz drogowe wykonane w technologii LED\r\nKia Navi System - system nawigacji satelitarnej z obsługą w języku polskim\r\n10,25\" kolorowy ekran dotykowy LCD\r\nTuner radia cyfrowego DAB+\r\nBluetooth z możliwością podłączenia dwóch urządzeń\r\nFelgi aluminiowe 17\" z oponami 225/45/R17', '//ws2.eu.kia.com/filehandler.ashx?guid=bbfd97fd-7075-439e-8fa9-eb0a23c213fb', '//ws2.eu.kia.com/filehandler.ashx?guid=e8686023-2687-4b12-9d50-ed4ac00a4fb5'),
(22, 'Creed Kombi Business Line Plus', 'Kia Smart Key\r\nKia Navi System Plus\r\nKia Auto Park Assist\r\nPakiet zimowy', '//ws2.eu.kia.com/filehandler.ashx?guid=bbfd97fd-7075-439e-8fa9-eb0a23c213fb', '//ws2.eu.kia.com/filehandler.ashx?guid=e8686023-2687-4b12-9d50-ed4ac00a4fb5'),
(23, 'Ceed Kombi PHEV L', '8” kolorowy, dotykowy ekran LCD, \r\ninterfejs Apple CarPlay oraz Android Auto\r\nKamera cofania z dynamicznymi liniami ułatwiającymi parkowanie, \r\nczujniki parkowania tył\r\nKia Forward Collision Avoidance Assist (FCA) -system autonomicznego hamowania z dodatkową funkcją wykrywania pieszych\r\nKia Smart Key\r\nOświetlenie kameralne przestrzeni na nogi dla pasażerów przednich siedzeń', '//ws2.eu.kia.com/filehandler.ashx?guid=0d8a601f-3590-48bf-be64-fa598d54faeb', '//ws2.eu.kia.com/filehandler.ashx?guid=237dc66b-1911-4146-8aeb-d54183963912'),
(24, 'Ceed Kombi PHEV Business Line', 'Kia Navi System z 10,25-calowym dotykowym ekranem\r\nKia UVO ConnectKia Supervision Cluster - cyfrowe zegary 12,3\"\r\nPakiet zimowy\r\nIndukcyjna ładowarka do telefonu\r\nKia Auto Park Assist', '//ws2.eu.kia.com/filehandler.ashx?guid=545b2a24-323d-4851-bac7-37fb32cc44d3', '//ws2.eu.kia.com/filehandler.ashx?guid=a9d473dd-9af6-4118-9ed1-009aec5c372b'),
(25, 'Ceed Kombi PHEV XL', 'Kia Navi System - system nawigacji satelitarnej z obsługą w języku polskim\r\n10.25” kolorowy ekran dotykowy LCD,\r\nKia Supervision Cluster – cyfrowe zegary z kolorowym ekranem o przekątnej 12.3”\r\nKia Park Assist – system automatycznego parkowania z przednimi oraz tylnymi czujnikami\r\nIndukcyjna ładowarka do telefonu\r\nKia UVO Connect – zestaw usług cyfrowych zapewniających wsparcie kierowcy w czasie rzeczywistym oraz zdalny dostęp do informacji o Twoim samochodzie\r\nKia Smart Tailgate - funkcja automatycznego otwierania i zamykania pokrywy bagażnika• Kia Speed Limit Warning (SLW) – system rozpoznający znaki ograniczeń prędkości• \r\nPakiet zimowy: podgrzewane przednie fotele z możliwością stopniowania, podgrzewana kierownica, podgrzewane dysze spryskiwaczy• Elektryczna regulacja foteli przednich, funkcja pamięci dla fotela kierowcy• Wentylowane fotele przednie• Skórzana tapicerka foteli', '//ws2.eu.kia.com/filehandler.ashx?guid=545b2a24-323d-4851-bac7-37fb32cc44d3', '//ws2.eu.kia.com/filehandler.ashx?guid=a9d473dd-9af6-4118-9ed1-009aec5c372b'),
(26, 'ProCeed GT Line', 'światła LED\r\n17\" aluminiowe obręcze kół\r\n8\" kolorowy wyświetlacz z interfejsem Android Auto i Apple Car Play\r\nsystem autonomicznego hamowania\r\nsystem dostępu bezkluczykowego', '//ws2.eu.kia.com/filehandler.ashx?guid=28260bef-23ac-40b0-8f49-c0bb1773a1ad', '//ws2.eu.kia.com/filehandler.ashx?guid=ff1623e9-6ccf-4862-8800-6ebcf3eb4389'),
(27, 'ProCeed GT', 'sportowe fotele z tapicerką zamszowo-skórzaną\r\ndwie chromowane końcówki układu wydechowego\r\n18\" aluminiowe obręcze kół\r\nsportowa stylistyka zderzaków\r\nsystem automatycznego parkowania z czujnikami przód / tył', '//ws2.eu.kia.com/filehandler.ashx?guid=562de530-34f6-4e91-b264-cb7a146009e9', '//ws2.eu.kia.com/filehandler.ashx?guid=75b061c0-714d-436b-81f4-b3c6bc948094'),
(28, 'XCeed M', '8” kolorowy, dotykowy ekran LCD\r\nŚwiatła mijania, drogowe oraz do jazdy dziennej LED\r\nKamera cofania\r\nSystem autonomicznego hamowania', '//ws2.eu.kia.com/filehandler.ashx?guid=e712f2e5-e243-454d-80b7-a70809c55bb5', '//ws2.eu.kia.com/filehandler.ashx?guid=df31e57a-3087-42e1-a7c1-054a2915f517'),
(29, 'XCeed L', 'Klimatyzacja automatyczna, dwustrefowa\r\nElektrycznie składane lusterka zewnętrzne z funkcją kierunkowskazów LED\r\nFelgi aluminiowe 18-calowe\r\nWykończenie wnętrza Premium', '//ws2.eu.kia.com/filehandler.ashx?guid=d1d69e9b-2086-4732-a446-b9550a9a74f1', '//ws2.eu.kia.com/filehandler.ashx?guid=02eaf13c-c6c7-43c4-a876-7db73230927f'),
(30, 'XCeed Business Line', '10.25” kolorowy ekran dotykowy LCD\r\nKia Navi System Plus\r\nBluetooth z możliwością podłączenia dwóch urządzeń\r\nKia Park Assist\r\nPodgrzewane fotele, kierownica oraz dysze spryskiwaczy', '//ws2.eu.kia.com/filehandler.ashx?guid=d1d69e9b-2086-4732-a446-b9550a9a74f1', '//ws2.eu.kia.com/filehandler.ashx?guid=02eaf13c-c6c7-43c4-a876-7db73230927f'),
(31, 'XCeed XL', 'Cyfrowe zegary z kolorowym ekranem 12,3\"\r\nKia Smart KeyKia Navi System Plus\r\nKia Park Assist\r\nIndukcyjna ładowarka do telefonu', '//ws2.eu.kia.com/filehandler.ashx?guid=d1d69e9b-2086-4732-a446-b9550a9a74f1', '//ws2.eu.kia.com/filehandler.ashx?guid=02eaf13c-c6c7-43c4-a876-7db73230927f'),
(32, 'XCeed PHEV L', 'Klimatyzacja automatyczna, dwustrefowa\r\nElektryczna regulacja podparcia lędźwiowego foteli przednich\r\nKia Smart Key\r\nElektrochromatyczne lusterko wewnętrzne\r\nOświetlenie kameralne przestrzeni na nogi dla pasażerów przednich siedzeń', '//ws2.eu.kia.com/filehandler.ashx?guid=ee2f9a5e-c212-4b73-b39c-6134fdf6d267', '//ws2.eu.kia.com/filehandler.ashx?guid=fb9fe0c2-1fd3-4c9c-b833-2362e35c1536'),
(33, 'XCeed PHEV Business Line', 'Kia Navi System\r\nBluetooth z możliwością podłączenia dwóch urządzeń\r\nKia UVO Connect\r\nKia Park Assist\r\nKia Supervision Cluster\r\nIndukcyjna ładowarka do telefonu', '//ws2.eu.kia.com/filehandler.ashx?guid=3a6c4e4b-e490-4119-9675-822463a1f017', '//ws2.eu.kia.com/filehandler.ashx?guid=eb9453a0-cf3f-4cdd-b089-b9a05a743678'),
(34, 'XCeed PHEV XL', 'Kia Supervision Cluster\r\nKia UVO Connect\r\nKia Park Assist\r\nKia Navi System Plus\r\nWentylowane fotele przednie', '//ws2.eu.kia.com/filehandler.ashx?guid=3a6c4e4b-e490-4119-9675-822463a1f017', '//ws2.eu.kia.com/filehandler.ashx?guid=eb9453a0-cf3f-4cdd-b089-b9a05a743678'),
(35, 'Stonic M', '8” kolorowy ekran dotykowy\r\nInterfejs Android Auto/Apple CarPlay\r\n16\" felgi aluminiowe z oponami 195/55/R16\r\nElektrycznie sterowane szyby drzwi przednich oraz tylnych\r\nElektrycznie regulowane lusterka z funkcją podgrzewania\r\nKlimatyzacja manualna\r\nŚwiatła pozycyjne oraz do jazdy dziennej wykonane w technologii LED', '//ws2.eu.kia.com/filehandler.ashx?guid=997796d3-fadd-42a2-b22e-72c692b08362', '//ws2.eu.kia.com/filehandler.ashx?guid=5f7c0ead-d988-429d-b625-371ae79726aa'),
(36, 'Stonic L', 'Klimatyzacja automatyczna\r\nCzujniki parkowania z tyłu, kamera cofania\r\nKierownica wykończona perforowaną skórą\r\nCzujnik deszczu z automatycznymi wycieraczkami\r\nElektrochromatyczne lusterko wsteczne\r\nRelingi dachowe, podwójna podłoga bagażnika', '//ws2.eu.kia.com/filehandler.ashx?guid=f90fcdf5-cc45-4525-8496-191c7d62624c', '//ws2.eu.kia.com/filehandler.ashx?guid=6a09e7ac-c55a-4a34-a512-b39c64e7e0d2'),
(37, 'Stonic Business Line', 'Światła mijania i drogowe wykonane w technologii LED\r\nTylne lampy wykonane w technologii LED\r\nPakiet zimowy: podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nKia Smart Key\r\nPrzyciemniane szyby tylne\r\nSzyby przednie z funkcją zapobiegającą nadmiernemu nagrzewaniu się wnętrza', '//ws2.eu.kia.com/filehandler.ashx?guid=f90fcdf5-cc45-4525-8496-191c7d62624c', '//ws2.eu.kia.com/filehandler.ashx?guid=6a09e7ac-c55a-4a34-a512-b39c64e7e0d2'),
(38, 'Stonic GT Line', 'Światła mijania i drogowe wykonane w technologii LED\r\nTylne lampy wykonane w technologii LED\r\nPakiet zimowy: podgrzewana kierownica oraz fotele przednie z 3-stopniową regulacją\r\nPrzednie czujniki parkowania\r\nNavi System - system multimedialny z nawigacją satelitarną\r\nUvo Connect – zestaw usług cyfrowych z darmowym 7 letnim planem obsługi\r\nSzyby przednie atermiczne, przyciemniane szyby tylne', '//ws2.eu.kia.com/filehandler.ashx?guid=53de82ff-a3de-474e-ab69-306c54a9108d', '//ws2.eu.kia.com/filehandler.ashx?guid=b0f61e37-e971-4308-87c3-2721bad7b4e3'),
(39, 'Niro HEV M', '8-calowy kolorowy ekran dotykowy z kamerą cofania i interfejsami Android Auto/Apple CarPlay\r\nŚwiatła do jazdy dziennej LED, tylne lampy LED\r\nKlimatyzacja automatyczna 2-strefowa\r\nCzujniki parkowania z tyłu', '//ws2.eu.kia.com/filehandler.ashx?guid=18d09393-4c40-4025-88a4-48942bee6a93', '//ws2.eu.kia.com/filehandler.ashx?guid=5e48fb34-a75c-43f5-850b-a35e61934056'),
(40, 'Niro HEV L', 'Aktywny tempomat\r\nSystem autonomicznego hamowania\r\nPodgrzewana kierownica i fotele przednie\r\nŚwiatła mijania i drogowe LED', '//ws2.eu.kia.com/filehandler.ashx?guid=18d09393-4c40-4025-88a4-48942bee6a93', '//ws2.eu.kia.com/filehandler.ashx?guid=5e48fb34-a75c-43f5-850b-a35e61934056'),
(41, 'Niro HEV Business Line', 'Kia Navi System\r\n10,25-calowy kolorowy ekran dotykowy\r\nIndukcyjna łądowarka do telefonu\r\nCyfrowe zegary \"Supervision\" z 7-calowym wyświetlaczem LCD', '//ws2.eu.kia.com/filehandler.ashx?guid=18d09393-4c40-4025-88a4-48942bee6a93', '//ws2.eu.kia.com/filehandler.ashx?guid=5e48fb34-a75c-43f5-850b-a35e61934056'),
(42, 'Niro HEV XL', 'Czujniki parkowania z przodu\r\nCyfrowe zegary Supervision z 7-calowym wyświetlaczem LCD\r\nSystem inforozrywki z kolorowym ekranem dotykowym 10,25\"\r\nWentylowane fotele przednie z pamięcią ustawień kierowcy', '//ws2.eu.kia.com/filehandler.ashx?guid=18d09393-4c40-4025-88a4-48942bee6a93', '//ws2.eu.kia.com/filehandler.ashx?guid=5e48fb34-a75c-43f5-850b-a35e61934056'),
(43, 'Niro PHEV Business Line', 'Kia Navi System z 10.25\" kolorowym ekranem dotykowym i możlwiością personalizacji wyświetlacza\r\nKia Smart Key\r\nKameralne podświetlenie deski rozdzielczej', '//ws2.eu.kia.com/filehandler.ashx?guid=c1cf74fe-27ed-48c9-ac7f-85f90ef77512', '//ws2.eu.kia.com/filehandler.ashx?guid=3d86dc26-a7e3-43ac-88c5-4e0a8f8f1712'),
(44, 'Niro PHEV L', 'Światła mijania i drogowe LED, światła przeciwmgielne LED\r\nTapicerka skórzano-materiałowa\r\nPodgrzewana kierownica oraz fotele przednie\r\nElektrochromatyczne lusterko', '//ws2.eu.kia.com/filehandler.ashx?guid=c1cf74fe-27ed-48c9-ac7f-85f90ef77512', '//ws2.eu.kia.com/filehandler.ashx?guid=3d86dc26-a7e3-43ac-88c5-4e0a8f8f1712'),
(45, 'Niro PHEV M', '8-calowy dotykowy ekran systemu inforozrywki z interfejsami Andorid Auto/Apple CarPlay\r\nKlimatyzacja automatyczna 2-strefowa\r\nAktywny tempomat z funkcją Stop&Go\r\nKamera cofania', '//ws2.eu.kia.com/filehandler.ashx?guid=c1cf74fe-27ed-48c9-ac7f-85f90ef77512', '//ws2.eu.kia.com/filehandler.ashx?guid=3d86dc26-a7e3-43ac-88c5-4e0a8f8f1712'),
(46, 'Niro PHEV XL', 'Cyfrowe zegary \"Supervision\" z kolorwym wyświetlaczem LCD 7\"\r\nCzujniki parkowania z przodu\r\n10,25\" kolorowy ekran dotykowy z systemem nawigacji i systemem audio JBL\r\nIndukcyjna ładowarka do telefonu', '//ws2.eu.kia.com/filehandler.ashx?guid=c1cf74fe-27ed-48c9-ac7f-85f90ef77512', '//ws2.eu.kia.com/filehandler.ashx?guid=3d86dc26-a7e3-43ac-88c5-4e0a8f8f1712'),
(47, 'e-Niro M', 'System autonomicznego hamowania\r\nAktywny tempomat z automatyczną regulacją odległości\r\nTapicerka skórzano-materiałowa\r\nKlimatyzacja automatyczna', '//ws2.eu.kia.com/filehandler.ashx?guid=ad3ca2fa-5c29-416b-ba97-471c7d7e6250', '//ws2.eu.kia.com/filehandler.ashx?guid=6e1f80f5-e874-4f82-a5ef-525d1365de7b'),
(48, 'e-Niro L', 'Reflektory w technologii LED\r\nPakiet zimowy\r\nCzujniki parkowania z przodu\r\nSystem nawigacji satelitarnej z 10.25”', '//ws2.eu.kia.com/filehandler.ashx?guid=ad3ca2fa-5c29-416b-ba97-471c7d7e6250', '//ws2.eu.kia.com/filehandler.ashx?guid=6e1f80f5-e874-4f82-a5ef-525d1365de7b'),
(49, 'e-Niro XL', 'System monitorowania martwego pola\r\nSkórzana tapicerka foteli\r\nSystem audio JBL\r\nElektryczna regulacja foteli', '//ws2.eu.kia.com/filehandler.ashx?guid=ad3ca2fa-5c29-416b-ba97-471c7d7e6250', '//ws2.eu.kia.com/filehandler.ashx?guid=6e1f80f5-e874-4f82-a5ef-525d1365de7b'),
(50, 'e-Soul M', 'Reflektory w technologii LED\r\nAktywny tempomat z automatyczną regulacją odległości\r\nKlimatyzacja automatyczna\r\nFelgi aluminowe 17”', '//ws2.eu.kia.com/filehandler.ashx?guid=ced792c2-5c9c-4d76-8725-a44e16904758', '//ws2.eu.kia.com/filehandler.ashx?guid=e1a4d5d8-953f-40b7-9e43-09e215e29ee4'),
(51, 'e-Soul L', 'System nawigacji satelitarnej z 10.25”\r\nZestaw audio firmy Harman / Kardon\r\nPakiet zimowy\r\nPrzednie czujniki parkowania', '//ws2.eu.kia.com/filehandler.ashx?guid=ced792c2-5c9c-4d76-8725-a44e16904758', '//ws2.eu.kia.com/filehandler.ashx?guid=e1a4d5d8-953f-40b7-9e43-09e215e29ee4'),
(52, 'e-Soul XL', 'System monitorowania martwego pola\r\nSkórzana tapicerka foteli\r\nIndukcyjna ładowarka do telefonu\r\nWyświetlacz przezierny „head up”', '//ws2.eu.kia.com/filehandler.ashx?guid=ced792c2-5c9c-4d76-8725-a44e16904758', '//ws2.eu.kia.com/filehandler.ashx?guid=e1a4d5d8-953f-40b7-9e43-09e215e29ee4'),
(53, 'Sportage S', 'przednie reflektory typu projekcyjnego\r\nklimatyzacja manualna\r\nradio CD MP3 z 6 głośnikami\r\n16\" felgi aluminiowe', '//ws2.eu.kia.com/filehandler.ashx?guid=ea5764a1-67ef-49a2-b787-38e9619161f6', '//ws2.eu.kia.com/filehandler.ashx?guid=808e361d-ee93-4d34-9a3f-ef4d684d8942'),
(54, 'Sportage M', 'światła do jazdy dziennej LED\r\nelektrycznie składane lusterka\r\nwielofunkcyjna, skórzana kierownica\r\n17\" felgi aluminiowe', '//ws2.eu.kia.com/filehandler.ashx?guid=5652a4ae-6bbe-40c6-9eeb-7b2e07df2009', '//ws2.eu.kia.com/filehandler.ashx?guid=32455bfb-070a-48dd-b9d4-934c4b594cb0'),
(55, 'Sportage L', 'Klimatyzacja automatyczna dwustrefowa\r\nPrzyciemniane szyby tylne\r\nCzujniki parkowania z przodu i z tyłu\r\nKia Navi System', '//ws2.eu.kia.com/filehandler.ashx?guid=99af9e57-192e-4a1a-b252-5a26a3ce5953', '//ws2.eu.kia.com/filehandler.ashx?guid=28a895a5-adb9-4dd6-8d61-7674e9b602db'),
(56, 'Sportage BUSINESS LINE', 'Światła do jazdy dziennej w stylistyce kostek lodu\r\nŚwiatła mijania i drogowe LED\r\nTylne lampy LED\r\nWykończenie wnętrza Premium', '//ws2.eu.kia.com/filehandler.ashx?guid=99af9e57-192e-4a1a-b252-5a26a3ce5953', '//ws2.eu.kia.com/filehandler.ashx?guid=28a895a5-adb9-4dd6-8d61-7674e9b602db'),
(57, 'Sportage GT Line', 'skórzana tapicerka i czarna podsufitka\r\nświatła przeciwmgielne LED\r\nmanetki do zmiany biegów (AT/7DCT)\r\n19\" felgi aluminiowe', '//ws2.eu.kia.com/filehandler.ashx?guid=ae94b190-1d50-4656-b37e-dce6ddf53b06', '//ws2.eu.kia.com/filehandler.ashx?guid=bc60708c-13fb-455a-a532-22ec5c2ec8c4'),
(58, 'Sportage Black Edition', 'Czarne 17\" felgi aluminiowe z oponami 225/60/R17,\r\nDedykowane, lakierowane na czarno elementy nadwozia,\r\nPakiet systemów bezpieczeństwa, w tym Kia Forward Collision Avoidance Assist,\r\nPodgrzewane fotele oraz kanapa tylna,\r\nŚwiatła mijania oraz drogowe wykonane w technologii LED, kierunkowskazy LED.', '//ws2.eu.kia.com/filehandler.ashx?guid=d8ace61c-ba43-4f6c-9ac1-9f80b2a46b1f', '//ws2.eu.kia.com/filehandler.ashx?guid=eacf784d-b077-4218-81b5-d284f45c5965'),
(59, 'Sorento HEV M', 'Światła przednie i tylne LED\r\nCyfrowe zegary z kolorowym ekranem o przekątnej 12.3”\r\nEkran multimedialny 8”, tuner DAB, kamera cofania\r\nInterfejs Android Auto i Apple CarPlay\r\nSelektor skrzyni biegów typu „Shift By Wire”\r\nKlimatyzacja automatyczna dwustrefowa', '//ws2.eu.kia.com/filehandler.ashx?guid=a767fe27-2ed2-412c-8ba0-3253eeaa5ed6', '//ws2.eu.kia.com/filehandler.ashx?guid=6e4c3c53-fd9b-4746-963c-23920e159acf'),
(60, 'Sorento HEV L', 'Kia Navi System z kolorowym ekranem dotykowym 10.25” oraz UVO Connect\r\nKia Smart Key – system otwierania i uruchamiania pojazdu bez użycia kluczyka\r\nKia Highway Driving Assist – asystent jazdy po autostradzie i w korkach\r\nElektrycznie sterowany fotel kierowcy w 8 kierunkach\r\nElektrycznie sterowane podparcie lędźwiowego odcinka kręgosłupa', '//ws2.eu.kia.com/filehandler.ashx?guid=12d49d2a-4c2d-4ede-b9e3-c3bb45e359fd', '//ws2.eu.kia.com/filehandler.ashx?guid=5da86a74-9795-4334-b328-e5007b512368'),
(61, 'Sorento HEV XL', 'Kameralne podświetlenie wnętrza\r\nRolety przeciwsłoneczne dla pasażerów drugiego rzędu\r\nElektrycznie sterowana pokrywa bagażnika\r\nSkórzana tapicerka foteli\r\nFotel pasażera z elektryczną regulacja w 8 kierunkach, regulacja wysokości fotela pasażera\r\nFelgi aluminiowe 19” z oponami 235/55/R19', '//ws2.eu.kia.com/filehandler.ashx?guid=12d49d2a-4c2d-4ede-b9e3-c3bb45e359fd', '//ws2.eu.kia.com/filehandler.ashx?guid=5da86a74-9795-4334-b328-e5007b512368'),
(62, 'Sorento HEV PRESTIGE LINE', 'Asystent martwego pola z funkcją wyświetlania obrazu z kamer między zegarami\r\nSystem kamer 360°\r\nWyświetlacz Head-up\r\nSkórzana tapicerka \"NAPPA\"\r\nWentylowane fotele przednie\r\nSystem audio \"Bose\"\r\nZawieszenie tylne z funkcją poziomowania', '//ws2.eu.kia.com/filehandler.ashx?guid=12d49d2a-4c2d-4ede-b9e3-c3bb45e359fd', '//ws2.eu.kia.com/filehandler.ashx?guid=5da86a74-9795-4334-b328-e5007b512368'),
(63, 'Nowe Sorento PHEV M', 'Światła przednie i tylne LED\r\nCyfrowe zegary z kolorowym ekranem o przekątnej 12.3”\r\nEkran multimedialny 8”, tuner DAB, kamera cofania\r\nInterfejs Android Auto i Apple CarPlay\r\nSelektor skrzyni biegów typu „Shift By Wire”\r\nKlimatyzacja automatyczna dwustrefowa\r\nFelgi aluminiowe 19” z oponami 235/55/R19', '//ws2.eu.kia.com/filehandler.ashx?guid=1cda118b-b617-4a20-a5f0-a4650caf0ad0', '//ws2.eu.kia.com/filehandler.ashx?guid=1faf391d-4273-4f05-ad1a-ef2e00516350'),
(64, 'Nowe Sorento PHEV L', 'Kia Navi System z kolorowym ekranem dotykowym 10.25” oraz UVO Connect\r\nKia Smart Key – system otwierania i uruchamiania pojazdu bez użycia kluczyka\r\nKia Highway Driving Assist – asystent jazdy po autostradzie i w korkach\r\nElektrycznie sterowany fotel kierowcy w 8 kierunkach\r\nElektrycznie sterowane podparcie lędźwiowego odcinka kręgosłupa\r\nFelgi aluminiowe 19” z oponami 235/55/R19', '//ws2.eu.kia.com/filehandler.ashx?guid=1cda118b-b617-4a20-a5f0-a4650caf0ad0', '//ws2.eu.kia.com/filehandler.ashx?guid=1faf391d-4273-4f05-ad1a-ef2e00516350'),
(65, 'Nowe Sorento PHEV XL', 'Kameralne podświetlenie wnętrza\r\nRolety przeciwsłoneczne dla pasażerów drugiego rzędu\r\nElektrycznie sterowana pokrywa bagażnika\r\nSkórzana tapicerka foteli\r\nFotel pasażera z elektryczną regulacja w 8 kierunkach, regulacja wysokości fotela pasażera\r\nFelgi aluminiowe 19” z oponami 235/55/R19', '//ws2.eu.kia.com/filehandler.ashx?guid=1cda118b-b617-4a20-a5f0-a4650caf0ad0', '//ws2.eu.kia.com/filehandler.ashx?guid=1faf391d-4273-4f05-ad1a-ef2e00516350'),
(66, 'Nowe Sorento PHEV PRESTIGE LINE', 'Asystent martwego pola z funkcją wyświetlania obrazu z kamer między zegarami\r\nSystem kamer 360°Wyświetlacz Head-up\r\nSkórzana tapicerka \"NAPPA\"\r\nWentylowane fotele przednie\r\nSystem audio \"Bose\"', '//ws2.eu.kia.com/filehandler.ashx?guid=1cda118b-b617-4a20-a5f0-a4650caf0ad0', '//ws2.eu.kia.com/filehandler.ashx?guid=1faf391d-4273-4f05-ad1a-ef2e00516350'),
(67, 'Sorento M', 'Światła przednie i tylne LED\r\nCyfrowe zegary z kolorowym ekranem o przekątnej 12.3”\r\nEkran multimedialny 8”, tuner DAB, interfejs Android Auto i Apple CarPlay\r\nKamera cofania z dynamicznym torem jazdy\r\nSelektor skrzyni biegów typu „Shift By Wire”\r\nZaawansowany kontroler trybu jazdy miejskiej i terenowej\r\nKlimatyzacja automatyczna dwustrefowa', '//ws2.eu.kia.com/filehandler.ashx?guid=0a7c2320-93ab-4921-95b6-f1e4dc0919f3', '//ws2.eu.kia.com/filehandler.ashx?guid=b02f0685-1035-4cd9-a4e3-0012846e3097'),
(68, 'Sorento L', 'Kia Navi System z kolorowym ekranem dotykowym 10.25” z systemem UVO \r\nConnectKia Smart Key – system otwierania i uruchamiania pojazdu bez użycia kluczyka\r\nKia Highway Driving Assist – asystent jazdy po autostradzie i w korkach\r\nElektrycznie sterowany fotel kierowcy w 8 kierunkach, elektrycznie sterowane podparcie lędźwiowego odcinka kręgosłupa', '//ws2.eu.kia.com/filehandler.ashx?guid=c94ee5f8-1903-4513-80af-cf321758096b', '//ws2.eu.kia.com/filehandler.ashx?guid=70ecac46-4b8e-45e2-96e5-b4579a50c430'),
(69, 'Sorento XL', 'Kameralne podświetlenie wnętrza\r\nRolety przeciwsłoneczne dla pasażerów drugiego rzędu\r\nElektrycznie sterowana pokrywa bagażnika\r\nSkórzana tapicerka foteli\r\nFotel pasażera z elektryczną regulacja w 8 kierunkach, regulacja wysokości fotela pasażera\r\nFelgi aluminiowe 19” z oponami 235/55/R19', '//ws2.eu.kia.com/filehandler.ashx?guid=591e54cb-3c3e-41dd-b17e-d1a6504386e5', '//ws2.eu.kia.com/filehandler.ashx?guid=fe55bee2-33dc-4072-ba1b-630c48848ee1'),
(70, 'Sorento PRESTIGE LINE', 'Asystent martwego pola z funkcją wyświetlania obrazu z kamer między zegarami\r\nSystem kamer 360\r\nWyświetlacz Head-up\r\nSkórzana tapicerka \"NAPPA\"\r\nWentylowane fotele przednie\r\nSystem audio \"Bose\"\r\nZawieszenie tylne z funkcją poziomowania', '//ws2.eu.kia.com/filehandler.ashx?guid=591e54cb-3c3e-41dd-b17e-d1a6504386e5', '//ws2.eu.kia.com/filehandler.ashx?guid=fe55bee2-33dc-4072-ba1b-630c48848ee1'),
(71, 'Stinger GT', 'Reflektory LED z dynamicznym doświetlaniem zakrętów\r\nEkran multimedialny 10,25\"\r\nAktywny tempomat\r\nWyświetlacz Head-Up Display\r\nSportowa, zamszowa tapcierka\r\nSystem audio Harman/Kardon\r\nOświetlenie kameralne wnętrza', '//ws2.eu.kia.com/filehandler.ashx?guid=0bb7b480-eeb0-4bf2-9b94-d3c9cb1b44ef', '//ws2.eu.kia.com/filehandler.ashx?guid=35b3506b-c55c-4df1-a1c7-35647010e662'),
(72, 'Stinger PRESTIGE LINE', 'System monitorowania martwego pola\r\nObraz martwego pola na wyświetlaczu między zegarami\r\nSystem monitorowania ruchu pojazdów podczas cofania\r\nSystem kamer 360Indukcyjna ładowarka', '//ws2.eu.kia.com/filehandler.ashx?guid=0bb7b480-eeb0-4bf2-9b94-d3c9cb1b44ef', '//ws2.eu.kia.com/filehandler.ashx?guid=35b3506b-c55c-4df1-a1c7-35647010e662');

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
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(58, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(66, 1, 32),
(33, 1, 33),
(34, 1, 34),
(69, 2, 1),
(104, 2, 1),
(36, 2, 2),
(37, 2, 3),
(38, 2, 4),
(39, 2, 5),
(40, 2, 6),
(41, 2, 7),
(42, 2, 8),
(43, 2, 9),
(44, 2, 10),
(45, 2, 11),
(46, 2, 12),
(47, 2, 13),
(48, 2, 14),
(49, 2, 15),
(50, 2, 16),
(51, 2, 17),
(52, 2, 18),
(53, 2, 19),
(54, 2, 20),
(55, 2, 21),
(56, 2, 22),
(57, 2, 23),
(59, 2, 25),
(60, 2, 26),
(61, 2, 27),
(62, 2, 28),
(63, 2, 29),
(64, 2, 30),
(65, 2, 31),
(67, 2, 33),
(136, 2, 33),
(68, 2, 34),
(137, 2, 34),
(205, 2, 34),
(70, 3, 1),
(71, 3, 2),
(72, 3, 3),
(73, 3, 4),
(74, 3, 5),
(75, 3, 6),
(76, 3, 7),
(77, 3, 8),
(78, 3, 9),
(79, 3, 10),
(80, 3, 11),
(81, 3, 12),
(82, 3, 13),
(83, 3, 14),
(84, 3, 15),
(85, 3, 16),
(86, 3, 17),
(87, 3, 18),
(88, 3, 19),
(89, 3, 20),
(90, 3, 21),
(91, 3, 22),
(92, 3, 23),
(93, 3, 24),
(94, 3, 25),
(95, 3, 26),
(96, 3, 27),
(97, 3, 28),
(98, 3, 29),
(99, 3, 30),
(100, 3, 31),
(101, 3, 32),
(102, 3, 33),
(103, 3, 34),
(105, 4, 2),
(106, 4, 3),
(107, 4, 4),
(108, 4, 5),
(109, 4, 6),
(110, 4, 7),
(111, 4, 8),
(112, 4, 9),
(113, 4, 10),
(114, 4, 11),
(115, 4, 12),
(116, 4, 13),
(117, 4, 14),
(118, 4, 15),
(119, 4, 16),
(120, 4, 17),
(121, 4, 18),
(122, 4, 19),
(123, 4, 20),
(124, 4, 21),
(125, 4, 22),
(126, 4, 23),
(127, 4, 24),
(128, 4, 25),
(129, 4, 26),
(130, 4, 27),
(131, 4, 28),
(132, 4, 29),
(133, 4, 30),
(134, 4, 31),
(135, 4, 32),
(138, 5, 1),
(139, 5, 2),
(140, 5, 3),
(141, 5, 4),
(142, 5, 5),
(143, 5, 6),
(144, 5, 7),
(145, 5, 8),
(146, 5, 9),
(147, 5, 10),
(148, 5, 11),
(149, 5, 12),
(150, 5, 13),
(151, 5, 14),
(152, 5, 15),
(153, 5, 16),
(154, 5, 17),
(155, 5, 18),
(156, 5, 19),
(157, 5, 20),
(158, 5, 21),
(159, 5, 22),
(160, 5, 23),
(161, 5, 24),
(162, 5, 25),
(163, 5, 26),
(164, 5, 27),
(165, 5, 28),
(166, 5, 29),
(167, 5, 30),
(168, 5, 31),
(169, 5, 32),
(170, 5, 33),
(171, 5, 34),
(172, 6, 1),
(173, 6, 2),
(174, 6, 3),
(175, 6, 4),
(176, 6, 5),
(177, 6, 6),
(178, 6, 7),
(179, 6, 8),
(180, 6, 9),
(181, 6, 10),
(182, 6, 11),
(183, 6, 12),
(184, 6, 13),
(185, 6, 14),
(186, 6, 15),
(187, 6, 16),
(188, 6, 17),
(189, 6, 18),
(190, 6, 19),
(191, 6, 20),
(192, 6, 21),
(193, 6, 22),
(194, 6, 23),
(195, 6, 24),
(196, 6, 25),
(197, 6, 26),
(198, 6, 27),
(199, 6, 28),
(200, 6, 29),
(201, 6, 30),
(202, 6, 31),
(203, 6, 32),
(204, 6, 33),
(206, 7, 1),
(207, 7, 2),
(208, 7, 3),
(209, 7, 4),
(210, 7, 5),
(211, 7, 6),
(212, 7, 7),
(213, 7, 8),
(214, 7, 9),
(215, 7, 10),
(216, 7, 11),
(217, 7, 12),
(218, 7, 13),
(219, 7, 14),
(220, 7, 15),
(221, 7, 16),
(222, 7, 17),
(223, 7, 18),
(224, 7, 19),
(225, 7, 20),
(226, 7, 21),
(227, 7, 22),
(228, 7, 23),
(229, 7, 24),
(230, 7, 25),
(231, 7, 26),
(232, 7, 27),
(233, 7, 28),
(234, 7, 29),
(235, 7, 30),
(236, 7, 31),
(237, 7, 32),
(238, 7, 33),
(239, 7, 34),
(240, 17, 1),
(241, 17, 2),
(242, 17, 3),
(243, 17, 4),
(244, 17, 5),
(245, 17, 6),
(246, 17, 7),
(247, 17, 8),
(248, 17, 9),
(249, 17, 10),
(250, 17, 11),
(251, 17, 12),
(252, 17, 13),
(253, 17, 14),
(254, 17, 15),
(255, 17, 16),
(256, 17, 17),
(257, 17, 18),
(258, 17, 19),
(259, 17, 20),
(260, 17, 21),
(261, 17, 22),
(262, 17, 23),
(263, 17, 24),
(264, 17, 25),
(265, 17, 26),
(266, 17, 27),
(267, 17, 28),
(268, 17, 29),
(269, 17, 30),
(270, 17, 31),
(271, 17, 32),
(272, 17, 33),
(273, 17, 34),
(274, 17, 35),
(275, 17, 36),
(276, 18, 1),
(277, 18, 2),
(278, 18, 3),
(279, 18, 4),
(280, 18, 5),
(281, 18, 6),
(282, 18, 7),
(283, 18, 8),
(284, 18, 9),
(285, 18, 10),
(286, 18, 11),
(287, 18, 12),
(288, 18, 13),
(289, 18, 14),
(290, 18, 15),
(291, 18, 16),
(292, 18, 17),
(293, 18, 18),
(294, 18, 19),
(295, 18, 20),
(296, 18, 21),
(297, 18, 22),
(298, 18, 23),
(299, 18, 24),
(300, 18, 25),
(301, 18, 26),
(302, 18, 27),
(303, 18, 28),
(304, 18, 29),
(305, 18, 30),
(306, 18, 31),
(307, 18, 32),
(308, 18, 33),
(309, 18, 34),
(310, 18, 35),
(311, 18, 36),
(312, 19, 1),
(313, 19, 2),
(314, 19, 3),
(315, 19, 4),
(316, 19, 5),
(317, 19, 6),
(318, 19, 7),
(319, 19, 8),
(320, 19, 9),
(321, 19, 10),
(322, 19, 11),
(323, 19, 12),
(324, 19, 13),
(325, 19, 14),
(326, 19, 15),
(327, 19, 16),
(328, 19, 17),
(329, 19, 18),
(330, 19, 19),
(331, 19, 20),
(332, 19, 21),
(333, 19, 22),
(334, 19, 23),
(335, 19, 24),
(336, 19, 25),
(337, 19, 26),
(338, 19, 27),
(339, 19, 28),
(340, 19, 29),
(341, 19, 30),
(342, 19, 31),
(343, 19, 32),
(344, 19, 33),
(345, 19, 34),
(346, 19, 35),
(347, 19, 36),
(348, 20, 1),
(349, 20, 2),
(350, 20, 3),
(351, 20, 4),
(352, 20, 5),
(353, 20, 6),
(354, 20, 7),
(355, 20, 8),
(356, 20, 9),
(357, 20, 10),
(358, 20, 11),
(359, 20, 12),
(360, 20, 13),
(361, 20, 14),
(362, 20, 15),
(363, 20, 16),
(364, 20, 17),
(365, 20, 18),
(366, 20, 19),
(367, 20, 20),
(368, 20, 21),
(369, 20, 22),
(370, 20, 23),
(371, 20, 24),
(372, 20, 25),
(373, 20, 26),
(374, 20, 27),
(375, 20, 28),
(376, 20, 29),
(377, 20, 30),
(378, 20, 31),
(379, 20, 32),
(380, 20, 33),
(381, 20, 34),
(382, 20, 35),
(383, 20, 36),
(384, 21, 1),
(385, 21, 2),
(386, 21, 3),
(387, 21, 4),
(388, 21, 5),
(389, 21, 6),
(390, 21, 7),
(391, 21, 8),
(392, 21, 9),
(393, 21, 10),
(394, 21, 11),
(395, 21, 12),
(396, 21, 13),
(397, 21, 14),
(398, 21, 15),
(399, 21, 16),
(400, 21, 17),
(401, 21, 18),
(402, 21, 19),
(403, 21, 20),
(404, 21, 21),
(405, 21, 22),
(406, 21, 23),
(407, 21, 24),
(408, 21, 25),
(409, 21, 26),
(410, 21, 27),
(411, 21, 28),
(412, 21, 29),
(413, 21, 30),
(414, 21, 31),
(415, 21, 32),
(416, 21, 33),
(417, 21, 34),
(418, 21, 35),
(419, 21, 36),
(420, 22, 1),
(421, 22, 2),
(422, 22, 3),
(423, 22, 4),
(424, 22, 5),
(425, 22, 6),
(426, 22, 7),
(427, 22, 8),
(428, 22, 9),
(429, 22, 10),
(430, 22, 11),
(431, 22, 12),
(432, 22, 13),
(433, 22, 14),
(434, 22, 15),
(435, 22, 16),
(436, 22, 17),
(437, 22, 18),
(438, 22, 19),
(439, 22, 20),
(440, 22, 21),
(441, 22, 22),
(442, 22, 23),
(443, 22, 24),
(444, 22, 25),
(445, 22, 26),
(446, 22, 27),
(447, 22, 28),
(448, 22, 29),
(449, 22, 30),
(450, 22, 31),
(451, 22, 32),
(452, 22, 33),
(453, 22, 34),
(454, 22, 35),
(455, 22, 36),
(458, 23, 12),
(459, 23, 19),
(460, 23, 25),
(456, 23, 37),
(457, 23, 47),
(463, 24, 12),
(464, 24, 19),
(465, 24, 25),
(461, 24, 37),
(462, 24, 47),
(468, 25, 12),
(469, 25, 19),
(470, 25, 25),
(466, 25, 37),
(467, 25, 47),
(495, 26, 20),
(493, 26, 28),
(494, 26, 31),
(490, 26, 32),
(491, 26, 33),
(492, 26, 34),
(471, 26, 38),
(472, 26, 39),
(473, 26, 40),
(474, 26, 41),
(475, 26, 42),
(476, 26, 43),
(477, 26, 44),
(478, 26, 45),
(479, 26, 46),
(480, 26, 47),
(481, 26, 48),
(482, 26, 49),
(483, 26, 50),
(484, 26, 51),
(485, 26, 52),
(486, 26, 53),
(487, 26, 54),
(488, 26, 55),
(489, 26, 56),
(520, 27, 20),
(518, 27, 28),
(519, 27, 31),
(515, 27, 32),
(516, 27, 33),
(517, 27, 34),
(496, 27, 38),
(497, 27, 39),
(498, 27, 40),
(499, 27, 41),
(500, 27, 42),
(501, 27, 43),
(502, 27, 44),
(503, 27, 45),
(504, 27, 46),
(505, 27, 47),
(506, 27, 48),
(507, 27, 49),
(508, 27, 50),
(509, 27, 51),
(510, 27, 52),
(511, 27, 53),
(512, 27, 54),
(513, 27, 55),
(514, 27, 56),
(613, 28, 20),
(612, 28, 28),
(611, 28, 31),
(608, 28, 32),
(609, 28, 33),
(610, 28, 34),
(579, 28, 57),
(580, 28, 58),
(581, 28, 59),
(582, 28, 60),
(583, 28, 61),
(584, 28, 62),
(585, 28, 63),
(586, 28, 64),
(587, 28, 65),
(588, 28, 66),
(589, 28, 67),
(590, 28, 68),
(591, 28, 69),
(592, 28, 70),
(593, 28, 71),
(594, 28, 72),
(595, 28, 73),
(596, 28, 74),
(597, 28, 75),
(598, 28, 76),
(599, 28, 77),
(600, 28, 78),
(601, 28, 79),
(602, 28, 80),
(603, 28, 81),
(604, 28, 82),
(605, 28, 83),
(606, 28, 84),
(607, 28, 85),
(648, 29, 20),
(647, 29, 28),
(646, 29, 31),
(643, 29, 32),
(644, 29, 33),
(645, 29, 34),
(614, 29, 57),
(615, 29, 58),
(616, 29, 59),
(617, 29, 60),
(618, 29, 61),
(619, 29, 62),
(620, 29, 63),
(621, 29, 64),
(622, 29, 65),
(623, 29, 66),
(624, 29, 67),
(625, 29, 68),
(626, 29, 69),
(627, 29, 70),
(628, 29, 71),
(629, 29, 72),
(630, 29, 73),
(631, 29, 74),
(632, 29, 75),
(633, 29, 76),
(634, 29, 77),
(635, 29, 78),
(636, 29, 79),
(637, 29, 80),
(638, 29, 81),
(639, 29, 82),
(640, 29, 83),
(641, 29, 84),
(642, 29, 85),
(683, 30, 20),
(682, 30, 28),
(681, 30, 31),
(678, 30, 32),
(679, 30, 33),
(680, 30, 34),
(649, 30, 57),
(650, 30, 58),
(651, 30, 59),
(652, 30, 60),
(653, 30, 61),
(654, 30, 62),
(655, 30, 63),
(656, 30, 64),
(657, 30, 65),
(658, 30, 66),
(659, 30, 67),
(660, 30, 68),
(661, 30, 69),
(662, 30, 70),
(663, 30, 71),
(664, 30, 72),
(665, 30, 73),
(666, 30, 74),
(667, 30, 75),
(668, 30, 76),
(669, 30, 77),
(670, 30, 78),
(671, 30, 79),
(672, 30, 80),
(673, 30, 81),
(674, 30, 82),
(675, 30, 83),
(676, 30, 84),
(677, 30, 85),
(718, 31, 20),
(717, 31, 28),
(716, 31, 31),
(713, 31, 32),
(714, 31, 33),
(715, 31, 34),
(684, 31, 57),
(685, 31, 58),
(686, 31, 59),
(687, 31, 60),
(688, 31, 61),
(689, 31, 62),
(690, 31, 63),
(691, 31, 64),
(692, 31, 65),
(693, 31, 66),
(694, 31, 67),
(695, 31, 68),
(696, 31, 69),
(697, 31, 70),
(698, 31, 71),
(699, 31, 72),
(700, 31, 73),
(701, 31, 74),
(702, 31, 75),
(703, 31, 76),
(704, 31, 77),
(705, 31, 78),
(706, 31, 79),
(707, 31, 80),
(708, 31, 81),
(709, 31, 82),
(710, 31, 83),
(711, 31, 84),
(712, 31, 85),
(753, 32, 20),
(752, 32, 28),
(751, 32, 31),
(748, 32, 32),
(749, 32, 33),
(750, 32, 34),
(719, 32, 57),
(720, 32, 58),
(721, 32, 59),
(722, 32, 60),
(723, 32, 61),
(724, 32, 62),
(725, 32, 63),
(726, 32, 64),
(727, 32, 65),
(728, 32, 66),
(729, 32, 67),
(730, 32, 68),
(731, 32, 69),
(732, 32, 70),
(733, 32, 71),
(734, 32, 72),
(735, 32, 73),
(736, 32, 74),
(737, 32, 75),
(738, 32, 76),
(739, 32, 77),
(740, 32, 78),
(741, 32, 79),
(742, 32, 80),
(743, 32, 81),
(744, 32, 82),
(745, 32, 83),
(746, 32, 84),
(747, 32, 85),
(788, 33, 20),
(787, 33, 28),
(786, 33, 31),
(783, 33, 32),
(784, 33, 33),
(785, 33, 34),
(754, 33, 57),
(755, 33, 58),
(756, 33, 59),
(757, 33, 60),
(758, 33, 61),
(759, 33, 62),
(760, 33, 63),
(761, 33, 64),
(762, 33, 65),
(763, 33, 66),
(764, 33, 67),
(765, 33, 68),
(766, 33, 69),
(767, 33, 70),
(768, 33, 71),
(769, 33, 72),
(770, 33, 73),
(771, 33, 74),
(772, 33, 75),
(773, 33, 76),
(774, 33, 77),
(775, 33, 78),
(776, 33, 79),
(777, 33, 80),
(778, 33, 81),
(779, 33, 82),
(780, 33, 83),
(781, 33, 84),
(782, 33, 85),
(823, 34, 20),
(822, 34, 28),
(821, 34, 31),
(818, 34, 32),
(819, 34, 33),
(820, 34, 34),
(789, 34, 57),
(790, 34, 58),
(791, 34, 59),
(792, 34, 60),
(793, 34, 61),
(794, 34, 62),
(795, 34, 63),
(796, 34, 64),
(797, 34, 65),
(798, 34, 66),
(799, 34, 67),
(800, 34, 68),
(801, 34, 69),
(802, 34, 70),
(803, 34, 71),
(804, 34, 72),
(805, 34, 73),
(806, 34, 74),
(807, 34, 75),
(808, 34, 76),
(809, 34, 77),
(810, 34, 78),
(811, 34, 79),
(812, 34, 80),
(813, 34, 81),
(814, 34, 82),
(815, 34, 83),
(816, 34, 84),
(817, 34, 85),
(844, 39, 20),
(845, 39, 32),
(846, 39, 33),
(847, 39, 34),
(824, 39, 86),
(825, 39, 87),
(826, 39, 88),
(827, 39, 89),
(828, 39, 90),
(829, 39, 91),
(830, 39, 92),
(831, 39, 93),
(832, 39, 94),
(833, 39, 95),
(834, 39, 96),
(835, 39, 97),
(836, 39, 98),
(837, 39, 99),
(838, 39, 100),
(839, 39, 101),
(840, 39, 102),
(841, 39, 103),
(842, 39, 104),
(843, 39, 105),
(868, 40, 20),
(869, 40, 32),
(870, 40, 33),
(871, 40, 34),
(848, 40, 86),
(849, 40, 87),
(850, 40, 88),
(851, 40, 89),
(852, 40, 90),
(853, 40, 91),
(854, 40, 92),
(855, 40, 93),
(856, 40, 94),
(857, 40, 95),
(858, 40, 96),
(859, 40, 97),
(860, 40, 98),
(861, 40, 99),
(862, 40, 100),
(863, 40, 101),
(864, 40, 102),
(865, 40, 103),
(866, 40, 104),
(867, 40, 105),
(892, 41, 20),
(893, 41, 32),
(894, 41, 33),
(895, 41, 34),
(872, 41, 86),
(873, 41, 87),
(874, 41, 88),
(875, 41, 89),
(876, 41, 90),
(877, 41, 91),
(878, 41, 92),
(879, 41, 93),
(880, 41, 94),
(881, 41, 95),
(882, 41, 96),
(883, 41, 97),
(884, 41, 98),
(885, 41, 99),
(886, 41, 100),
(887, 41, 101),
(888, 41, 102),
(889, 41, 103),
(890, 41, 104),
(891, 41, 105),
(916, 42, 20),
(917, 42, 32),
(918, 42, 33),
(919, 42, 34),
(896, 42, 86),
(897, 42, 87),
(898, 42, 88),
(899, 42, 89),
(900, 42, 90),
(901, 42, 91),
(902, 42, 92),
(903, 42, 93),
(904, 42, 94),
(905, 42, 95),
(906, 42, 96),
(907, 42, 97),
(908, 42, 98),
(909, 42, 99),
(910, 42, 100),
(911, 42, 101),
(912, 42, 102),
(913, 42, 103),
(914, 42, 104),
(915, 42, 105),
(940, 43, 20),
(941, 43, 32),
(942, 43, 33),
(943, 43, 34),
(920, 43, 86),
(921, 43, 87),
(922, 43, 88),
(923, 43, 89),
(924, 43, 90),
(925, 43, 91),
(926, 43, 92),
(927, 43, 93),
(928, 43, 94),
(929, 43, 95),
(930, 43, 96),
(931, 43, 97),
(932, 43, 98),
(933, 43, 99),
(934, 43, 100),
(935, 43, 101),
(936, 43, 102),
(937, 43, 103),
(938, 43, 104),
(939, 43, 105),
(964, 44, 20),
(965, 44, 32),
(966, 44, 33),
(967, 44, 34),
(944, 44, 86),
(945, 44, 87),
(946, 44, 88),
(947, 44, 89),
(948, 44, 90),
(949, 44, 91),
(950, 44, 92),
(951, 44, 93),
(952, 44, 94),
(953, 44, 95),
(954, 44, 96),
(955, 44, 97),
(956, 44, 98),
(957, 44, 99),
(958, 44, 100),
(959, 44, 101),
(960, 44, 102),
(961, 44, 103),
(962, 44, 104),
(963, 44, 105),
(988, 45, 20),
(989, 45, 32),
(990, 45, 33),
(991, 45, 34),
(968, 45, 86),
(969, 45, 87),
(970, 45, 88),
(971, 45, 89),
(972, 45, 90),
(973, 45, 91),
(974, 45, 92),
(975, 45, 93),
(976, 45, 94),
(977, 45, 95),
(978, 45, 96),
(979, 45, 97),
(980, 45, 98),
(981, 45, 99),
(982, 45, 100),
(983, 45, 101),
(984, 45, 102),
(985, 45, 103),
(986, 45, 104),
(987, 45, 105),
(1012, 46, 20),
(1013, 46, 32),
(1014, 46, 33),
(1015, 46, 34),
(992, 46, 86),
(993, 46, 87),
(994, 46, 88),
(995, 46, 89),
(996, 46, 90),
(997, 46, 91),
(998, 46, 92),
(999, 46, 93),
(1000, 46, 94),
(1001, 46, 95),
(1002, 46, 96),
(1003, 46, 97),
(1004, 46, 98),
(1005, 46, 99),
(1006, 46, 100),
(1007, 46, 101),
(1008, 46, 102),
(1009, 46, 103),
(1010, 46, 104),
(1011, 46, 105),
(1040, 47, 20),
(1041, 47, 32),
(1042, 47, 33),
(1043, 47, 34),
(1016, 47, 86),
(1017, 47, 87),
(1018, 47, 88),
(1019, 47, 89),
(1020, 47, 90),
(1021, 47, 91),
(1022, 47, 92),
(1023, 47, 93),
(1024, 47, 94),
(1025, 47, 95),
(1026, 47, 96),
(1027, 47, 97),
(1028, 47, 98),
(1029, 47, 99),
(1030, 47, 100),
(1031, 47, 101),
(1032, 47, 102),
(1033, 47, 103),
(1034, 47, 104),
(1035, 47, 105),
(1036, 47, 106),
(1037, 47, 107),
(1038, 47, 108),
(1039, 47, 109),
(1068, 48, 20),
(1069, 48, 32),
(1070, 48, 33),
(1071, 48, 34),
(1044, 48, 86),
(1045, 48, 87),
(1046, 48, 88),
(1047, 48, 89),
(1048, 48, 90),
(1049, 48, 91),
(1050, 48, 92),
(1051, 48, 93),
(1052, 48, 94),
(1053, 48, 95),
(1054, 48, 96),
(1055, 48, 97),
(1056, 48, 98),
(1057, 48, 99),
(1058, 48, 100),
(1059, 48, 101),
(1060, 48, 102),
(1061, 48, 103),
(1062, 48, 104),
(1063, 48, 105),
(1064, 48, 106),
(1065, 48, 107),
(1066, 48, 108),
(1067, 48, 109),
(1096, 49, 20),
(1097, 49, 32),
(1098, 49, 33),
(1099, 49, 34),
(1072, 49, 86),
(1073, 49, 87),
(1074, 49, 88),
(1075, 49, 89),
(1076, 49, 90),
(1077, 49, 91),
(1078, 49, 92),
(1079, 49, 93),
(1080, 49, 94),
(1081, 49, 95),
(1082, 49, 96),
(1083, 49, 97),
(1084, 49, 98),
(1085, 49, 99),
(1086, 49, 100),
(1087, 49, 101),
(1088, 49, 102),
(1089, 49, 103),
(1090, 49, 104),
(1091, 49, 105),
(1092, 49, 106),
(1093, 49, 107),
(1094, 49, 108),
(1095, 49, 109),
(1112, 50, 32),
(1113, 50, 33),
(1114, 50, 34),
(1100, 50, 110),
(1101, 50, 111),
(1102, 50, 112),
(1103, 50, 113),
(1104, 50, 114),
(1105, 50, 115),
(1106, 50, 116),
(1107, 50, 117),
(1108, 50, 118),
(1109, 50, 119),
(1110, 50, 120),
(1111, 50, 121),
(1127, 51, 32),
(1128, 51, 33),
(1129, 51, 34),
(1115, 51, 110),
(1116, 51, 111),
(1117, 51, 112),
(1118, 51, 113),
(1119, 51, 114),
(1120, 51, 115),
(1121, 51, 116),
(1122, 51, 117),
(1123, 51, 118),
(1124, 51, 119),
(1125, 51, 120),
(1126, 51, 121),
(1142, 52, 32),
(1143, 52, 33),
(1144, 52, 34),
(1130, 52, 110),
(1131, 52, 111),
(1132, 52, 112),
(1133, 52, 113),
(1134, 52, 114),
(1135, 52, 115),
(1136, 52, 116),
(1137, 52, 117),
(1138, 52, 118),
(1139, 52, 119),
(1140, 52, 120),
(1141, 52, 121),
(1175, 53, 32),
(1176, 53, 33),
(1177, 53, 34),
(1145, 53, 122),
(1146, 53, 123),
(1147, 53, 124),
(1148, 53, 125),
(1149, 53, 126),
(1150, 53, 127),
(1151, 53, 128),
(1152, 53, 129),
(1153, 53, 130),
(1154, 53, 131),
(1155, 53, 132),
(1156, 53, 133),
(1157, 53, 134),
(1158, 53, 135),
(1159, 53, 136),
(1160, 53, 137),
(1161, 53, 138),
(1162, 53, 139),
(1163, 53, 140),
(1164, 53, 141),
(1165, 53, 142),
(1166, 53, 143),
(1167, 53, 144),
(1168, 53, 145),
(1169, 53, 146),
(1170, 53, 147),
(1171, 53, 148),
(1172, 53, 149),
(1173, 53, 150),
(1174, 53, 151),
(1208, 54, 32),
(1209, 54, 33),
(1210, 54, 34),
(1178, 54, 122),
(1179, 54, 123),
(1180, 54, 124),
(1181, 54, 125),
(1182, 54, 126),
(1183, 54, 127),
(1184, 54, 128),
(1185, 54, 129),
(1186, 54, 130),
(1187, 54, 131),
(1188, 54, 132),
(1189, 54, 133),
(1190, 54, 134),
(1191, 54, 135),
(1192, 54, 136),
(1193, 54, 137),
(1194, 54, 138),
(1195, 54, 139),
(1196, 54, 140),
(1197, 54, 141),
(1198, 54, 142),
(1199, 54, 143),
(1200, 54, 144),
(1201, 54, 145),
(1202, 54, 146),
(1203, 54, 147),
(1204, 54, 148),
(1205, 54, 149),
(1206, 54, 150),
(1207, 54, 151),
(1241, 55, 32),
(1242, 55, 33),
(1243, 55, 34),
(1211, 55, 122),
(1212, 55, 123),
(1213, 55, 124),
(1214, 55, 125),
(1215, 55, 126),
(1216, 55, 127),
(1217, 55, 128),
(1218, 55, 129),
(1219, 55, 130),
(1220, 55, 131),
(1221, 55, 132),
(1222, 55, 133),
(1223, 55, 134),
(1224, 55, 135),
(1225, 55, 136),
(1226, 55, 137),
(1227, 55, 138),
(1228, 55, 139),
(1229, 55, 140),
(1230, 55, 141),
(1231, 55, 142),
(1232, 55, 143),
(1233, 55, 144),
(1234, 55, 145),
(1235, 55, 146),
(1236, 55, 147),
(1237, 55, 148),
(1238, 55, 149),
(1239, 55, 150),
(1240, 55, 151),
(1274, 56, 32),
(1275, 56, 33),
(1276, 56, 34),
(1244, 56, 122),
(1245, 56, 123),
(1246, 56, 124),
(1247, 56, 125),
(1248, 56, 126),
(1249, 56, 127),
(1250, 56, 128),
(1251, 56, 129),
(1252, 56, 130),
(1253, 56, 131),
(1254, 56, 132),
(1255, 56, 133),
(1256, 56, 134),
(1257, 56, 135),
(1258, 56, 136),
(1259, 56, 137),
(1260, 56, 138),
(1261, 56, 139),
(1262, 56, 140),
(1263, 56, 141),
(1264, 56, 142),
(1265, 56, 143),
(1266, 56, 144),
(1267, 56, 145),
(1268, 56, 146),
(1269, 56, 147),
(1270, 56, 148),
(1271, 56, 149),
(1272, 56, 150),
(1273, 56, 151),
(1307, 57, 32),
(1308, 57, 33),
(1309, 57, 34),
(1277, 57, 122),
(1278, 57, 123),
(1279, 57, 124),
(1280, 57, 125),
(1281, 57, 126),
(1282, 57, 127),
(1283, 57, 128),
(1284, 57, 129),
(1285, 57, 130),
(1286, 57, 131),
(1287, 57, 132),
(1288, 57, 133),
(1289, 57, 134),
(1290, 57, 135),
(1291, 57, 136),
(1292, 57, 137),
(1293, 57, 138),
(1294, 57, 139),
(1295, 57, 140),
(1296, 57, 141),
(1297, 57, 142),
(1298, 57, 143),
(1299, 57, 144),
(1300, 57, 145),
(1301, 57, 146),
(1302, 57, 147),
(1303, 57, 148),
(1304, 57, 149),
(1305, 57, 150),
(1306, 57, 151),
(1340, 58, 32),
(1341, 58, 33),
(1342, 58, 34),
(1310, 58, 122),
(1311, 58, 123),
(1312, 58, 124),
(1313, 58, 125),
(1314, 58, 126),
(1315, 58, 127),
(1316, 58, 128),
(1317, 58, 129),
(1318, 58, 130),
(1319, 58, 131),
(1320, 58, 132),
(1321, 58, 133),
(1322, 58, 134),
(1323, 58, 135),
(1324, 58, 136),
(1325, 58, 137),
(1326, 58, 138),
(1327, 58, 139),
(1328, 58, 140),
(1329, 58, 141),
(1330, 58, 142),
(1331, 58, 143),
(1332, 58, 144),
(1333, 58, 145),
(1334, 58, 146),
(1335, 58, 147),
(1336, 58, 148),
(1337, 58, 149),
(1338, 58, 150),
(1339, 58, 151),
(1406, 59, 20),
(1405, 59, 28),
(1404, 59, 31),
(1401, 59, 32),
(1402, 59, 33),
(1403, 59, 34),
(1372, 59, 152),
(1373, 59, 153),
(1374, 59, 154),
(1375, 59, 155),
(1376, 59, 156),
(1377, 59, 157),
(1378, 59, 158),
(1379, 59, 159),
(1380, 59, 160),
(1381, 59, 161),
(1382, 59, 162),
(1383, 59, 163),
(1384, 59, 164),
(1385, 59, 165),
(1386, 59, 166),
(1387, 59, 167),
(1388, 59, 168),
(1389, 59, 169),
(1390, 59, 170),
(1391, 59, 171),
(1392, 59, 172),
(1393, 59, 173),
(1394, 59, 174),
(1395, 59, 175),
(1396, 59, 176),
(1397, 59, 177),
(1398, 59, 178),
(1399, 59, 179),
(1400, 59, 180),
(1441, 60, 20),
(1440, 60, 28),
(1439, 60, 31),
(1436, 60, 32),
(1437, 60, 33),
(1438, 60, 34),
(1407, 60, 152),
(1408, 60, 153),
(1409, 60, 154),
(1410, 60, 155),
(1411, 60, 156),
(1412, 60, 157),
(1413, 60, 158),
(1414, 60, 160),
(1415, 60, 160),
(1416, 60, 161),
(1417, 60, 162),
(1418, 60, 163),
(1419, 60, 164),
(1420, 60, 165),
(1421, 60, 166),
(1422, 60, 167),
(1423, 60, 168),
(1424, 60, 169),
(1425, 60, 170),
(1426, 60, 171),
(1427, 60, 172),
(1428, 60, 173),
(1429, 60, 174),
(1430, 60, 175),
(1431, 60, 176),
(1432, 60, 177),
(1433, 60, 178),
(1434, 60, 179),
(1435, 60, 180),
(1476, 61, 20),
(1475, 61, 28),
(1474, 61, 31),
(1471, 61, 32),
(1472, 61, 33),
(1473, 61, 34),
(1442, 61, 152),
(1443, 61, 153),
(1444, 61, 154),
(1445, 61, 155),
(1446, 61, 156),
(1447, 61, 157),
(1448, 61, 158),
(1449, 61, 161),
(1450, 61, 161),
(1451, 61, 161),
(1452, 61, 162),
(1453, 61, 163),
(1454, 61, 164),
(1455, 61, 165),
(1456, 61, 166),
(1457, 61, 167),
(1458, 61, 168),
(1459, 61, 169),
(1460, 61, 170),
(1461, 61, 171),
(1462, 61, 172),
(1463, 61, 173),
(1464, 61, 174),
(1465, 61, 175),
(1466, 61, 176),
(1467, 61, 177),
(1468, 61, 178),
(1469, 61, 179),
(1470, 61, 180),
(1511, 62, 20),
(1510, 62, 28),
(1509, 62, 31),
(1506, 62, 32),
(1507, 62, 33),
(1508, 62, 34),
(1477, 62, 152),
(1478, 62, 153),
(1479, 62, 154),
(1480, 62, 155),
(1481, 62, 156),
(1482, 62, 157),
(1483, 62, 158),
(1484, 62, 162),
(1485, 62, 162),
(1486, 62, 162),
(1487, 62, 162),
(1488, 62, 163),
(1489, 62, 164),
(1490, 62, 165),
(1491, 62, 166),
(1492, 62, 167),
(1493, 62, 168),
(1494, 62, 169),
(1495, 62, 170),
(1496, 62, 171),
(1497, 62, 172),
(1498, 62, 173),
(1499, 62, 174),
(1500, 62, 175),
(1501, 62, 176),
(1502, 62, 177),
(1503, 62, 178),
(1504, 62, 179),
(1505, 62, 180),
(1546, 67, 20),
(1545, 67, 28),
(1544, 67, 31),
(1541, 67, 32),
(1542, 67, 33),
(1543, 67, 34),
(1512, 67, 152),
(1513, 67, 153),
(1514, 67, 154),
(1515, 67, 155),
(1516, 67, 156),
(1517, 67, 157),
(1518, 67, 158),
(1523, 67, 163),
(1524, 67, 164),
(1525, 67, 165),
(1526, 67, 166),
(1519, 67, 167),
(1520, 67, 167),
(1521, 67, 167),
(1522, 67, 167),
(1527, 67, 167),
(1528, 67, 168),
(1529, 67, 169),
(1530, 67, 170),
(1531, 67, 171),
(1532, 67, 172),
(1533, 67, 173),
(1534, 67, 174),
(1535, 67, 175),
(1536, 67, 176),
(1537, 67, 177),
(1538, 67, 178),
(1539, 67, 179),
(1540, 67, 180),
(1581, 68, 20),
(1580, 68, 28),
(1579, 68, 31),
(1576, 68, 32),
(1577, 68, 33),
(1578, 68, 34),
(1547, 68, 152),
(1548, 68, 153),
(1549, 68, 154),
(1550, 68, 155),
(1551, 68, 156),
(1552, 68, 157),
(1553, 68, 158),
(1558, 68, 163),
(1559, 68, 164),
(1560, 68, 165),
(1561, 68, 166),
(1554, 68, 168),
(1555, 68, 168),
(1556, 68, 168),
(1557, 68, 168),
(1562, 68, 168),
(1563, 68, 168),
(1564, 68, 169),
(1565, 68, 170),
(1566, 68, 171),
(1567, 68, 172),
(1568, 68, 173),
(1569, 68, 174),
(1570, 68, 175),
(1571, 68, 176),
(1572, 68, 177),
(1573, 68, 178),
(1574, 68, 179),
(1575, 68, 180),
(1616, 69, 20),
(1615, 69, 28),
(1614, 69, 31),
(1611, 69, 32),
(1612, 69, 33),
(1613, 69, 34),
(1582, 69, 152),
(1583, 69, 153),
(1584, 69, 154),
(1585, 69, 155),
(1586, 69, 156),
(1587, 69, 157),
(1588, 69, 158),
(1593, 69, 163),
(1594, 69, 164),
(1595, 69, 165),
(1596, 69, 166),
(1589, 69, 169),
(1590, 69, 169),
(1591, 69, 169),
(1592, 69, 169),
(1597, 69, 169),
(1598, 69, 169),
(1599, 69, 169),
(1600, 69, 170),
(1601, 69, 171),
(1602, 69, 172),
(1603, 69, 173),
(1604, 69, 174),
(1605, 69, 175),
(1606, 69, 176),
(1607, 69, 177),
(1608, 69, 178),
(1609, 69, 179),
(1610, 69, 180),
(1651, 70, 20),
(1650, 70, 28),
(1649, 70, 31),
(1646, 70, 32),
(1647, 70, 33),
(1648, 70, 34),
(1617, 70, 152),
(1618, 70, 153),
(1619, 70, 154),
(1620, 70, 155),
(1621, 70, 156),
(1622, 70, 157),
(1623, 70, 158),
(1628, 70, 163),
(1629, 70, 164),
(1630, 70, 165),
(1631, 70, 166),
(1624, 70, 170),
(1625, 70, 170),
(1626, 70, 170),
(1627, 70, 170),
(1632, 70, 170),
(1633, 70, 170),
(1634, 70, 170),
(1635, 70, 170),
(1636, 70, 171),
(1637, 70, 172),
(1638, 70, 173),
(1639, 70, 174),
(1640, 70, 175),
(1641, 70, 176),
(1642, 70, 177),
(1643, 70, 178),
(1644, 70, 179),
(1645, 70, 180);

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
(2, 11, 8),
(3, 26, 16),
(4, 27, 11);

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
(2, 'Tapicerka „Cosmo”', 'czarny', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=bfdd5069-0175-4fbe-88f6-e4b361e8f318'),
(3, 'Tapicerka „Luna” CP1', 'czarno-szary', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=71b78e53-ee0f-45ca-8382-c0d1d23c82b3'),
(5, 'Tapicerka czarna M', 'czarny', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=f858d342-8074-41ee-9ada-8eef21c8e025'),
(6, 'Pakiet kolorystyczny wnętrza: „ORANGE SPLASH”', 'czarny z pomarańczowym wykończeniem', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=5306904b-400c-4d2d-bdd0-94961dc96bd9'),
(7, 'Pakiet kolorystyczny wnętrza: tapicerka ze skóry ekologicznej w kolorze szarym z żółtymi elementami; przeszycia w kolorze żółtym na podłokietniku, panelach drzwi oraz kierownicy, elementy wnętrza w kolorze srebrnym lakierowane na wysoki połysk', 'szary z żółtymi elementami', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=a4a2622a-6c31-4e0b-a835-da3e08c70813'),
(8, 'Pakiet kolorystyczny wnętrza: tapicerka ze skóry ekologicznej w kolorze czarnym z czerwonymi elementami; przeszycia w kolorze czerwonym na podłokietniku, panelach drzwi oraz kierownicy, elementy wnętrza w kolorze czarnym lakierowane na wysoki połysk', 'czarny z czerwonymi elementami', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=f49f02a7-da40-4f10-bfbb-7908f94bacf2'),
(9, 'Tapicerka czarna L', 'czarny', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=7af17d68-cdf1-4879-9a60-6ed1f3814f7f'),
(10, 'Tapicerka skórzano – materiałowa (skóra ekologiczna)', NULL, 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=56e068b6-944a-4bed-a5b2-e5bf28290240'),
(11, 'Sportowe fotele dedykowana tapicerka skórzano – zamszowa z emblematem GT czerwone przeszycia foteli, boczków drzwi i kierownicy\r\n', 'czarno-czerwony', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=66fa53e8-a111-48a4-b428-f8498b9175f6'),
(12, 'Tapicerka GT Line Premium skórzano-zamszowa z szarymi przeszyciami', 'czarno-szary', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=42b84d6f-0fdb-4b39-838f-b8efb6bf10eb'),
(13, 'Tapicerka „Flow”', 'czarny', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=93cda1ce-6912-4db7-bac3-47f3cba6c886'),
(14, 'Tapicerka „Cosmo” skórzano – materiałowa', 'czarny', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=bcd77163-da67-4ff4-9095-7a26e19686ba'),
(15, 'Skórzana tapicerka foteli', '', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=7f86e55e-d8ef-426b-bd56-43cb3edc6f08'),
(16, 'Tapicerka GT Line – materiałowa z elementami skóry ekologicznej', 'czarno-szary', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=b7aa02fa-b623-4db6-b7ae-3efe9ef48ee8'),
(17, 'Pakiet kolorystyczny wnętrza „Yellow Splash”', 'czarno-żółty', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=dc4f5709-115b-4edd-9d35-7a89fef3070c'),
(18, 'Tapicerka skórzana „Elegance\"', 'czarny', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=b6e2fd2a-4c24-45e3-a010-ccc389676a43'),
(19, 'Tapicerka „Cosmo” skórzano – materiałowa (skóra ekologiczna) w kolorze czarnym, boczki drzwi wykończone skórą ekologiczną w kolorze czarnym', 'czarny', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=b1db9745-6af4-4184-9443-9d2ba2fd68ba'),
(20, 'Tapicerka materiałowa', 'szaro-czarny', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=b8abc98f-fcee-458c-9b52-cd696886cb21'),
(21, 'Pakiet kolorystyczny wnętrza „Blue Splash” - elementy wnętrza w kolorze niebieskim', 'czarno-niebieski', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=dd2e6131-da31-4509-a5f6-b0c750f21e24'),
(22, 'Pakiet kolorystyczny wnętrza „Yellow Splash” - elementy wnętrza w kolorze żółtym', 'czarno-żółty', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=8f4cd207-12fa-4d74-8a31-97f4c5e2e4e2'),
(23, 'Tapicerka skórzano-materiałowa dedykowana wersji GT Line (skóra ekologiczna)', '', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=6fef85b2-b79a-4b94-a135-57f92ebda713'),
(24, 'Wnętrze 1-tonowe czarne', 'czarno-srebny', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=de2661b5-b404-402c-b345-3be0e5e32a27'),
(25, 'Pakiet kolorystyczny wnętrza „Orange Blossom”', 'czarno-srebrno-pomarańczowy', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=134493cb-ec5a-4eb3-b9d0-59db38b69669'),
(26, 'Wnętrze 2-tonowe ', 'czarno - szary', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=3e7a1d0b-8b30-4450-88b2-996db5b7bd03'),
(27, 'Wnętrze 1-tonowe czarne , tapicerka skórzano - materiałowa w kolorze czarnym z niebieskimi przeszyciami, elementy wykończenia wnętrza w kolorze czarnym o wysokim połysku', '', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=3f8af2b5-2781-415f-9836-3ea53dea651e'),
(28, 'Tapicerka materiałowa w kolorze czarnym, elementy ozdobne wnętrza lakierowane w kolorze srebrnym', '', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=d9d70597-0160-4422-b1ee-00b20e26c3c2'),
(29, 'Tapicerka skórzana', 'czarny', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=a8c3c4ee-3b11-4954-a22b-86ad74e968e1'),
(30, 'Tapicerka „Beat”', 'czarny', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=430b1dff-7b59-4bc5-9ce0-c7280c127f85'),
(31, 'Tapicerka „Carmelo”', 'karmelowy', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=58630ccb-58b5-492c-bf2a-911d98a6bd66'),
(32, 'Tapicerka skórzana GT Line', 'czarny', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=6ef77633-39d3-4123-a7ce-0928e43c3c2a'),
(33, 'Skórzana tapicerka foteli', 'czarno-szarym', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=e0a620e9-5bc1-4a7e-9dc7-f0fd92901a76'),
(34, 'Skórzana tapicerka foteli (Nappa)', 'czarny', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=3d4866b3-067b-4fb1-82ab-b8c474c6f7b3'),
(35, 'Skórzana tapicerka foteli typu Nappa czarna', '', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=69f23bdd-7cc0-4bb1-8b0c-9d5ac69818b0'),
(36, 'Skórzana tapicerka foteli typu Nappa czerwona', '', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=36ac7eaa-cd93-42f4-877a-2cccaf370f6b'),
(37, 'Zamszowa tapicerka', 'czarny', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=c1dab6d6-182d-43aa-a9e3-48481357308f'),
(38, NULL, NULL, 0, 'https://ws2.eu.kia.com/defaultasset/element_preview/C5.jpg');

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
-- Indeksy dla tabeli `log_user`
--
ALTER TABLE `log_user`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `idDealer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `dodatki`
--
ALTER TABLE `dodatki`
  MODIFY `idDodatki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `felgi`
--
ALTER TABLE `felgi`
  MODIFY `idFelgi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT dla tabeli `kolor`
--
ALTER TABLE `kolor`
  MODIFY `idKolor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT dla tabeli `log_user`
--
ALTER TABLE `log_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `opcje`
--
ALTER TABLE `opcje`
  MODIFY `idOpcje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

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
  MODIFY `idSilnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT dla tabeli `silnik_has_wersja`
--
ALTER TABLE `silnik_has_wersja`
  MODIFY `idSilnikhasWersja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `wersja`
--
ALTER TABLE `wersja`
  MODIFY `idWersja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT dla tabeli `wersja_has_dodatki`
--
ALTER TABLE `wersja_has_dodatki`
  MODIFY `idWersjahasDodatki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1652;

--
-- AUTO_INCREMENT dla tabeli `wnetrze`
--
ALTER TABLE `wnetrze`
  MODIFY `idWnetrze` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

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
