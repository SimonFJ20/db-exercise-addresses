
CREATE TABLE `vejnavn` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode` smallint NOT NULL,
  `navn` varchar(23) NOT NULL,
  `adresseringsnavn` varchar(20) NOT NULL
);

INSERT INTO `vejnavn` (`kode`, `navn`, `adresseringsnavn`)
    SELECT DISTINCT
        `vejkode` AS `kode`,
        `vejnavn` AS `navn`,
        `adresseringsvejnavn` AS `adresseringsnavn` 
    FROM `raw`

CREATE TABLE `postnr` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nr` int NOT NULL,
  `navn` varchar(12) NOT NULL
);

INSERT INTO `postnr` (`nr`, `navn`)
    SELECT DISTINCT
        `postnr` AS `nr`,
        `postnrnavn` AS `navn`
    FROM `raw`

CREATE TABLE `supplerendebynavn` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY;
  `navn` varchar(14) NULL
);

INSERT INTO `supplerendebynavn` (`navn`)
    SELECT DISTINCT
        `supplerendebynavn` AS `navn`
    FROM `raw`

CREATE TABLE `kommune` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode` int NOT NULL,
  `navn` varchar(6) NOT NULL
);

INSERT INTO `kommune` (`kode`, `navn`)
    SELECT DISTINCT
        `kommunekode` AS `kode`,
        `kommunenavn` AS `navn`
    FROM `raw`

CREATE TABLE `ejerlav` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode` int NOT NULL,
  `navn` varchar(34) NOT NULL
);

INSERT INTO `ejerlav` (`kode`, `navn`)
    SELECT DISTINCT
        `ejerlavkode` as `kode`,
        `ejerlavnavn` as `navn`
    FROM `raw`
    WHERE NOT ISNULL(`ejerlavkode`) AND NOT ISNULL(`ejerlavnavn`)

CREATE TABLE `region` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `kode` int NOT NULL,
    `navn` varchar(18) NOT NULL
);

INSERT INTO `region` (`kode`, `navn`)
    SELECT DISTINCT
        `regionskode` AS `kode`,
        `regionsnavn` AS `navn`
    FROM `raw`

CREATE TABLE `jordstykke_ejerlav` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode` int NOT NULL,
  `navn` varchar(34) NOT NULL
);

INSERT INTO `jordstykke_ejerlav` (`kode`, `navn`)
    SELECT DISTINCT
        `jordstykke_ejerlavkode` AS `kode`,
        `jordstykke_ejerlavnavn` AS `navn`
    FROM `raw`
    WHERE NOT ISNULL(`jordstykke_ejerlavkode`)

CREATE TABLE `sogn` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `kode` int NOT NULL,
  `navn` varchar(19) NOT NULL
);

INSERT INTO `sogn` (`kode`, `navn`)
    SELECT DISTINCT
        `sognekode` AS `kode`,
        `sognenavn` AS `navn`
    FROM `raw`
    WHERE NOT ISNULL(`sognekode`)

CREATE TABLE `politikreds` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `kode` int NOT NULL,
    `navn` varchar(28) NOT NULL
);

INSERT INTO `politikreds` (`kode`, `navn`)
    SELECT DISTINCT
        `politikredskode` AS `kode`,
        `politikredsnavn` AS `navn`
    FROM `raw`

CREATE TABLE `retskreds` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `kode` int NOT NULL,
    `navn` varchar(28) NOT NULL
);

INSERT INTO `retskreds` (`kode`, `navn`)
    SELECT DISTINCT
        `retskredskode` AS `kode`,
        `retskredsnavn` AS `navn`
    FROM `raw`

CREATE TABLE `opstillingskreds` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `kode` int NOT NULL,
    `navn` varchar(15) NOT NULL
);

INSERT INTO `opstillingskreds` (`kode`, `navn`)
    SELECT DISTINCT
        `opstillingskredskode` AS `kode`,
        `opstillingskredsnavn` AS `navn`
    FROM `raw`

CREATE TABLE `zone` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `navn` varchar(16) NOT NULL
);


INSERT INTO `zone` (`navn`)
    SELECT DISTINCT
        `zone` AS `navn`
    FROM `raw`

CREATE TABLE `afstemningsomraade` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nummer` bigint NOT NULL,
    `navn` varchar(16) NOT NULL
);

INSERT INTO `afstemningsomraade` (`nummer`, `navn`)
    SELECT DISTINCT
        `afstemningsomraadenummer` AS `nummer`,
        `afstemningsomraadenavn` AS `navn`
    FROM `raw`

CREATE TABLE `menighedsraadsafstemningsomraade` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nummer` int NOT NULL,
    `navn` varchar(36) NOT NULL
);

INSERT INTO `menighedsraadsafstemningsomraade` (`nummer`, `navn`)
    SELECT DISTINCT
        `menighedsraadsafstemningsomraadenummer` AS `nummer`,
        `menighedsraadsafstemningsomraadenavn` AS `navn`
    FROM `raw`

CREATE TABLE `valglandsdel` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `bogstav` char NOT NULL,
    `navn` varchar(23) NOT NULL
);

INSERT INTO `valglandsdel` (`bogstav`, `navn`)
    SELECT DISTINCT
        `valglandsdelsbogstav` AS `bogstav`,
        `valglandsdelsnavn` AS `navn`
    FROM `raw`

CREATE TABLE `landsdel` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nuts3` varchar(5) NOT NULL,
    `navn` varchar(23) NOT NULL
);

INSERT INTO `landsdel` (`nuts3`, `navn`)
    SELECT DISTINCT
        `landsdelsnuts3` AS `nuts3`,
        `landsdelsnavn` AS `navn`
    FROM `raw`

CREATE TABLE `navngivenvej` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `guid` varchar(36) NOT NULL
);

INSERT INTO `navngivenvej` (`guid`)
    SELECT DISTINCT
        `navngivenvej_id` AS `guid`
    FROM `raw`

CREATE TABLE `vejpunkt_kilde` (
    `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `navn` varchar(10) NOT NULL
);

INSERT INTO `vejpunkt_kilde` (`navn`)
    SELECT DISTINCT
        `vejpunkt_kilde` AS `navn`
    FROM `raw`
