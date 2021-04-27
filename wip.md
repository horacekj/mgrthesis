Poznámky k diplomce
===================

## Úvod

* Co je to PLC a proč je potřebujeme
* Nakousnout využití PLC na modelovém kolejišti
  - PLC, software, schéma řízení
* Cíl práce = PLC na modelové kolejiště

## Kontext, požadavky na řešení, současná implementace

* Současná implementace: closed-source, closed-design, nemáme pořádně výrobní data,
  máme nasazené 100 ks. Požadavek ne zpětnou kompatibilitu.
  - Ukázky desek.
    - Možnosti vstupů a výstupů.
  - Odkazy na aktuální protokol.
  - Aktuální workflow používání modulů.
  - Chybí EEPROM.

* Je třeba vyrobit další kusy, aby se mohlo rozšiřovat kolejiště apod.
* Docházejí součástky.
* + nové požadavky:
  - Oživování desek
  - Open source
  - Multiplexing na úrovní ovládacího SW
  - Flickering
  - Udržitelnost
  - Firmware upgrade
  - Beacon
  - IR per vstup

## Existující řešení

* Vysokoúrovňové: popsat řízení přes DCC centrálu
  - Proč nám nevyhovuje.
* Závěr: neexistuje nic, co by nám vyhovovalo

## Návrh nové sběrnice MTBbus

* Co všechno musíme měnit a proč: všechno.
* Zajímavá rozhodnutí:
  - Zůstaneme u RS485, 9bit komunikace
  - Zachováme různé rychlosti
  - Adresování modulů
  - Princip fungování request-response
  - Konfigurace v modulech, kdo je autoritativní zdroj konfigurace
  - Zahozené typy modulů, nové typy modulů
  - Důraz na spolehlivost a znovuvyrobitenost.
  - Dvouvrstvý návrh protokolu: obecné zprávy, konkretizace pro specifické typy
    modulů.
* Implementační aspekty: automatické osazování součástek, dostupné součástky.
* Návrh MTB-USB: tenká, řeší časování, nezávislá na typu modulů, neskenovat moc
  rychle ani moc pomalu.
* Co není třeba: analogové výstupy.
* Nové workflow fungování.
* Očekávané moduly.

## MTB-UNI

* Základní přehled parametrů, spolupráce s MENDELU.
* Použitý procesor, proč, ...
* Firmware upgrade?
* IR deska
* Nemusí být krabička

## MTB-USB

* Použitý procesor, proč.
* Hardware, firmware.
* Řešení krabičky.
* Spolehlivost: přeposílání paketů.

## MTB daemon

## hJOP MTB network library

## Závěr

* Splnění cílů
* Budoucí rozšíření:
  - Další typy modulů: poreferovat.
  - Měření proudů driverem.
  - Bezdrátovost.
