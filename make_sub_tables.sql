
CREATE TABLE `vejnavn` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode` smallint NOT NULL,
  `navn` varchar(23) NOT NULL,
  `adresseringsnavn` varchar(20) NOT NULL
);

INSERT INTO vejnavn (kode, navn, adresseringsnavn)
    SELECT DISTINCT
        vejkode AS kode,
        vejnavn AS navn,
        adresseringsvejnavn AS adresseringsnavn 
    FROM RAW

CREATE TABLE `postnr` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nr` smallint NOT NULL,
  `navn` varchar(12) NOT NULL
);

INSERT INTO postnr (nr, navn)
    SELECT DISTINCT
        postnr AS nr,
        postnrnavn AS navn
    FROM raw

CREATE TABLE `supplerendebynavn` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY;
  `navn` varchar(14) NULL
);

INSERT INTO supplerendebynavn (navn)
    SELECT DISTINCT
        supplerendebynavn AS navn
    FROM RAW

CREATE TABLE `kommune` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode` smallint NOT NULL,
  `navn` varchar(6) NOT NULL
);

INSERT INTO kommune (kode, navn)
    SELECT DISTINCT
        kommunekode AS kode,
        kommunenavn AS navn
    FROM RAW

CREATE TABLE `ejerlav` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode` int NOT NULL,
  `navn` varchar(34) NOT NULL
);

INSERT INTO ejerlav (kode, navn)
    SELECT DISTINCT
        ejerlavkode as kode,
        ejerlavnavn as navn
    FROM raw
    WHERE NOT ISNULL(ejerlavkode) AND NOT ISNULL(ejerlavnavn)
