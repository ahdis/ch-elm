// https://www.llv.li/de/privatpersonen/gesundheit-vorsorge-und-pflege/elektronisches-gesundheitsdossier/datenschutzhinweis

Profile: IdnIdentifier
Parent: Identifier
Id: ch-elm-idn-identifier
Title: "IDN Identifier"
Description: "Identifier holding the IDN Liechtenstein. It is a 13-digit number without check digit and without special characters."

* system 1..
* system = "urn:oid:2.16.438.10.20.10.10.1.2.1" (exactly)
* value 1..
* value obeys idn-length


Invariant: idn-length
Description: "IDN must be 13 digits long"
Severity: #warning
Expression: "value.matches('^[0-9]{13}$')"