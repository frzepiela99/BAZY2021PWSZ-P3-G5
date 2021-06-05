-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Cze 2021, 14:44
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
(10, 'Uchwyt typu 600 na narty i deski snowboardowe', 'https://ws2.eu.kia.com/filehandler.ashx?guid=d08f31bc-b57e-4dc8-9978-68fb9dea5e38https://ws2.eu.kia.com/filehandler.ashx?guid=d08f31bc-b57e-4dc8-9978-68fb9dea5e38', '722', 'Niezawodny towarzysz podróży podczas przyszłych zimowych przygód. Uchwyt typu 400 na narty i deski snowboardowe pozwala przewieźć 4 pary nart lub 2 deski snowboardowe. Wyposażony w zamek. Jeżeli potrzeba więcej miejsca na sprzęt, można wybrać uchwyt typu 600. Umożliwia on przewóz 6 par nart lub 4 desek snowboardowych.'),
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
(2, '14\" stalowe obręcze kół z oponami 175/65 R14 ', 0, ''),
(3, '15\" aluminiowe obręcze kół z oponami 18', 0, ''),
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
(17, '18” aluminiowe obręcze kół GT z oponami w rozmiarze 225/40/R18 , 17-calowe tarcze hamulcowe z przodu, Zaciski hamulcowe lakierowane w kolorze czerwonym', 0, 'https://ws2.eu.kia.com/filehandler.ashx?guid=937c0b42-be7b-4046-9075-fe0d9014973c'),
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
  `cenaKolor` varchar(11) DEFAULT NULL,
  `Zdjecie` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `kolor`
--

INSERT INTO `kolor` (`idKolor`, `nazwaKolor`, `cenaKolor`, `Zdjecie`) VALUES
(1, 'Infra Red', '2 500', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\Infra Red.png'),
(2, 'Deluxe White', '2500', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\Deluxe White.png'),
(3, 'Lunar Silver', '2500', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\Lunar Silver.png'),
(4, 'Sparkling Silver', '2500', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\Sparkling Silver.png'),
(5, 'Blue Flame', '2500', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\Blue Flame.png'),
(6, 'Dark Penta Metal', '2500', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\Dark Penta Metal.png'),
(7, 'Cassa White', '0', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\Cassa White.png'),
(8, 'Orange Fusion', '2500', '..\\img\\Ceed\\Styl\\Kolor_nadwozia\\orange.png'),
(9, 'Shiny Red', '1900', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Shiny Red.png'),
(10, 'Lime Light', '1900', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Lime Light.png'),
(11, 'Sparkling Silver', '1900', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Sparkling Silver.png'),
(12, 'Honey Bee', '0', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Honey Bee.png'),
(13, 'Pop Orange', '1900', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Pop Orange.png'),
(14, 'Milky Beige', '1900', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\milky.png'),
(15, 'Alice Blue', '1900', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Alice Blue.png'),
(16, 'Aurora Black', '1900', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Aurora Black.png'),
(17, 'Clear White', '1100', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Clear White.png'),
(18, 'Silky Silver', '2000', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Silky Silver.png'),
(19, 'Signal Red', '2000', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Signal Red.png'),
(20, 'Urban Green', '2000', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Urban Green.png'),
(21, 'Smoke Blue', '2000', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Smoke Blue.png'),
(22, 'Aurora Black', '2000', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Aurora Black.png'),
(23, 'Clear White', '1200', '..\\img\\Picanto\\Styl\\Kolor-nadwozia\\Clear White.png'),
(24, 'Most Yellow', '0', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Most Yellow.png'),
(25, 'Perennial Grey', '2000', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Perennial Grey.png'),
(26, 'Sporty Blue', '2000', '..\\img\\Rio\\Styl\\Kolor_nadwozia\\Sporty Blue.png'),
(27, 'Quantum Yellow', '2900', '..\\img\\XCeed\\Styl\\Kolor_nadwozia\\Quantum Yellow.png'),
(28, 'Deep Cerulean Blue', '2800', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Deep Cerulean Blue.png'),
(29, 'Gravity Blue', '2800', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Gravity Blue.png'),
(30, 'Runway Red', '2800', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Runway Red.png'),
(31, 'Orange Delight', '2800', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Orange Delight.png'),
(32, 'Horizon Blue', '2800', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Horizon Blue.png'),
(33, 'Steel Grey', '2800', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Steel Grey.png'),
(34, 'Platinium Graphite', '2800', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Platinium Graphite.png'),
(35, 'Snow White Pearl', '2800', '..\\img\\Niro_HEV\\Styl\\Kolor_nadwozia\\Snow White Pearl.png'),
(36, 'Yacht Blue', '2800', '..\\img\\e-Niro\\Styl\\Kolor_nadwozia\\Blue Yacht.png'),
(37, 'Inferno Red/Black Soul', '3500', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Inferno Red Black Soul.png'),
(38, 'Clear White/ InfernoRed', '3500', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Clear White InfernoRed.png'),
(39, 'Black Soul / InfernoRed', '3500', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Black Soul InfernoRed.png'),
(40, 'Neptune Blue', '2500', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Neptune Blue.png'),
(41, 'Gravity Gray', '2500', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Gravity Gray.png'),
(42, 'Inferno Red', '2500', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Inferno Red.png'),
(43, 'Space Cadet Green', '0', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Space Cadet Green.png'),
(44, 'Mars Orange', '2500', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Mars Orange.png'),
(45, 'Mars Orange/ Cherry Black', '3500', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Mars Orange Cherry Black.png'),
(46, 'Neptune Blue/ Cherry Black', '3500', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Neptune Blue Cherry Black.png'),
(47, 'Black Cherry', '2500', '..\\img\\e-Soul\\Styl\\Kolor_nadwozia\\Black Cherry.png'),
(48, 'Mineral Blue', '3000', '..\\img\\Sorento_HEV\\Styl\\Kolor_nadwozia\\Mineral Blue.png'),
(49, 'Essence Brown', '3000', '..\\img\\Sorento_HEV\\Styl\\Kolor_nadwozia\\Essence Brown.png'),
(50, 'Neon Orange', '0', '..\\img\\Stinger\\Styl\\Kolor_nadwozia\\Neon Orange.png'),
(51, 'High Chroma Red', '4000', '..\\img\\Stinger\\Styl\\Kolor_nadwozia\\High Chroma Red.png'),
(52, 'Ceramic Silver', '3000', '..\\img\\Stinger\\Styl\\Kolor_nadwozia\\Ceramic Silver.png'),
(53, 'Micro Blue', '3000', '..\\img\\Stinger\\Styl\\Kolor_nadwozia\\Micro Blue.png'),
(54, 'Deep Chroma Blue', '3000', '..\\img\\Stinger\\Styl\\Kolor_nadwozia\\Deep Chroma Blue.png'),
(55, 'Panthera Metal', '3000', '..\\img\\Stinger\\Styl\\Kolor_nadwozia\\Panthera Metal.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kolor_has_wersja`
--

CREATE TABLE `kolor_has_wersja` (
  `idKolorhasWersja` int(11) NOT NULL,
  `kolor_idKolor` int(11) NOT NULL,
  `wersja_idWersja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kolor_has_wersja`
--

INSERT INTO `kolor_has_wersja` (`idKolorhasWersja`, `kolor_idKolor`, `wersja_idWersja`) VALUES
(1, 1, 1),
(8, 1, 2),
(15, 1, 3),
(22, 1, 4),
(29, 1, 5),
(37, 1, 6),
(2, 2, 1),
(9, 2, 2),
(16, 2, 3),
(23, 2, 4),
(30, 2, 5),
(38, 2, 6),
(3, 3, 1),
(10, 3, 2),
(17, 3, 3),
(24, 3, 4),
(31, 3, 5),
(39, 3, 6),
(4, 4, 1),
(11, 4, 2),
(18, 4, 3),
(25, 4, 4),
(32, 4, 5),
(40, 4, 6),
(5, 5, 1),
(12, 5, 2),
(19, 5, 3),
(26, 5, 4),
(33, 5, 5),
(41, 5, 6),
(6, 6, 1),
(13, 6, 2),
(20, 6, 3),
(27, 6, 4),
(34, 6, 5),
(42, 6, 6),
(7, 7, 1),
(14, 7, 2),
(21, 7, 3),
(28, 7, 4),
(35, 7, 5),
(43, 7, 6),
(36, 8, 5);

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
(2, 'Ceed M', '8\" kolorowy ekran dotykowy LCD, Apple CarPlay, Android Autokamera cofania z dynamicznymi liniamitylne lampy LED z funkcją do jazdy dziennejklimatyzacja automatycznaelektrochromatyczne lusterko wewnętrzne'),
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
(18, 'Ceed Kombi M', '8\" kolorowy ekran dotykowy LCD, \r\nApple CarPlay, Android Auto\r\nkamera cofania z dynamicznymi liniami\r\ntylne lampy LED z funkcją do jazdy dziennej\r\nklimatyzacja automatyczna\r\nelektrochromatyczne lusterko wewnętrzne'),
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
(72, 'Stinger PRESTIGE LINE', 'System monitorowania martwego pola\r\nObraz martwego pola na wyświetlaczu między zegarami\r\nSystem monitorowania ruchu pojazdów podczas cofania\r\nSystem kamer 360Indukcyjna ładowarka'),
(74, 'Cordoba', '');

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
  MODIFY `idFelgi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT dla tabeli `kolor`
--
ALTER TABLE `kolor`
  MODIFY `idKolor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
