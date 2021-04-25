Návrh a implementace nového protokolu sběrnice MTBbus
=====================================================

(Honzova diplomka)

Tento repozitář obsahuje diplomovou práci Honzy Horáčka vypracovávanou v roce
2021 na Fakultě informatiky Masarykovy univerzity.

Práce je psána v českém jazyce.

HW & FW & SW vyvíjený v rámci práce:

 * [Nový protokol sběrnice MTBbus](https://github.com/kmzbrnoI/mtbbus-protocol)
 * MTB-UNI v4 (vyvíjeno ve spolupráci s MENDELU)
   - [Deska plošných spojů](https://github.com/kmzbrnoI/mtb-uni-4-ele)
   - [Firmware](https://github.com/kmzbrnoI/mtb-uni-4-fw)
 * MTB-UNI-2 nástavná deska
   - [Deska plošných spojů](https://github.com/kmzbrnoI/mtb-2-avr-pcb)
   - [Firmware](https://github.com/kmzbrnoI/mtb-2-avr-fw)
 * MTB-USB v4
   - [Deska plošných spojů](https://github.com/kmzbrnoI/mtb-usb-4-pcb)
   - [Firmware](https://github.com/kmzbrnoI/mtb-usb-4-fw)
 * IRdet
   - [Deska plošných spojů](https://github.com/kmzbrnoI/irdet-ele)
   - [Firmware](https://github.com/kmzbrnoI/irdet-fw)
 * [MTB daemon](https://github.com/kmzbrnoI/mtb-daemon)
 * [hJOP MTB Network RCS Library](https://github.com/kmzbrnoI/mtb-net-lib)

## Sestavení práce

Pro sestavení této práce je nutný LaTeX balíček
[fithesis3](https://www.fi.muni.cz/lemma/projekty/fithesis3/). Doporučujeme
použít [Honzův vlastní fork](https://github.com/horacekj/fithesis3) (větev
`honzas-customizations`).

Pro sestavení stačí spustit
```
$ make all
```
