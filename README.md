# MovieDB

Einfaches Schema einer Filme-Datenbank

```
movies(movie_id, title, release_date, genre_id, budget, opening_week, profit, runtime, certificate, sequel_of, distribution)
```

## Tabelle movies

| Attribut | Datentyp              | Beschreibung |
| -------- | --------------------- | ------------ |
| movie_id | NUMBER(8) PRIMARY KEY | ID als Primärschlüssel, Zahl die hochgezählt wird |
| title    | VARCHAR2(128)         | Titel des Films|
| release_date | DATE | Erscheinungsdatum bzw. Premiere des Films
| genre_id | NUMBER(8) | Genre des Films als Fremdschlüssel (zu genres.genre_id)
| budget | NUMBER(10) | Budget des Films in Dollar
| opening_week | NUMBER(10) | Einspielergebnis in der ersten Woche (USA)
| profit | NUMBER(10) | Gesamt Einspielergebnis / Gewinn (USA)
| runtime | NUMBER(3) | Laufzeit des Films in Minuten
| certificate | NUMBER(3) | Altersbeschränkung
| sequel_of| NUMBER(8) | Fremdschlüssel, Vorgänger Film (movies.movie_id)
| distribution | VARCHAR(32) | Filmverleih

Lizenz: CC BY-SA
