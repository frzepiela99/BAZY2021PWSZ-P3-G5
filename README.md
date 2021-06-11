# BAZY2021PWSZ-P3-G5
Aby uruchomić nasz projekt należy zainstalować Xamppa oraz Composera:
https://getcomposer.org/download/
Następnie tworzymy folder kia i przechodzimy do niego w terminalu
Kolejnym krokiem jest wpisanie komendy: composer create-project laravel/laravel kia
Po zakończeniu instalacji wpisujemy komendę php artisan serve - projekt powinien działać
Zatrzymujemy operację - kopiujemy pliki z naszego archiwum oraz wrzucamy baze do phpmyadmin. 
Przechodzimy do pliku env - upewniamy się czy w linijce DB_BASE jest podana odpowiednia nazwa bazy. Po wykonaniu tych czynności należy wywołać aplikację wpisując w terminalu komendę php artisan serve.

Instalacja wtyczki do PDF:
composer require barryvdh/laravel-dompdf

Konfiguracja apache w xampp dla pdf (obrazek): klikamy przy apache config-> php.ini klikamy ctrl+f i wpisujemy "gd" w linii extension=gd usuwamy ";" przed nazwa



