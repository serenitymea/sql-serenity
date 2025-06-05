# sql-serenity
Ten projekt przedstawia uproszczoną bazę danych dla firmy zajmującej się organizacją przyjęć urodzinowych dla dzieci.

Celem bazy danych jest wspieranie codziennej pracy organizatora imprez: zarządzanie klientami, zamówieniami, tematami imprez, animatorami, lokalizacjami, materiałami oraz płatnościami.

Baza danych umożliwia:

Rejestrowanie zamówień na imprezy z uwzględnieniem tematyki, lokalizacji i animatora.

Przechowywanie listy klientów i ich danych kontaktowych.

Kontrolowanie dostępnych materiałów i przypisywanie ich do wydarzeń.

Przechowywanie informacji o dokonanych płatnościach.

Struktura bazy obejmuje 8 tabel: сlients, partythemes, animators, services, orders, supplies, ordersupplies, orderandservices.

Projekt został zrealizowany zgodnie z wymaganiami — zawiera skrypty DDL, DML i DQL, oraz dane testowe i przykładowe zapytania.

Przykłady poleceń DQL

1. Lista wszystkich zamówień z klientem, tematem i animatorem

2. Łączny dochód według każdego tematu przyjęcia

3. Najbardziej popularny rekwizyt

4. Usługi wykorzystywane najczęściej

5. Ile zamówień zrealizował każdy animator

6. Średni rachunek klienta

7. Wszystkie zamówienia, w których użyto rekwizytu „Bańki mydlane XXL”

8. Klienci, którzy mają więcej niż jedno zamówienie

9. Łączny dochód według lat

10. Usługi, które nigdy nie zostały zamówione
