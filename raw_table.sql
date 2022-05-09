
DROP TABLE IF EXISTS `raw`;
CREATE TABLE `raw` (
    `id` varchar(36) NOT NULL,  `id` varchar(36) NOT NULL,
    `status` tinyint NOT NULL,
    `oprettet` varchar(23) NOT NULL,
    `aendret` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `vejkode` smallint NOT NULL,
    `vejnavn` varchar(23) NOT NULL,
    `adresseringsvejnavn` varchar(20) NOT NULL,
    `husnr` varchar(4) NOT NULL,
    `etage` varchar(2) DEFAULT NULL,
    `doer` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `supplerendebynavn` varchar(14) DEFAULT NULL,
    `postnr` smallint NOT NULL,
    `postnrnavn` varchar(12) NOT NULL,
    `stormodtagerpostnr` smallint DEFAULT NULL,
    `stormodtagerpostnrnavn` varchar(12) DEFAULT NULL,
    `kommunekode` smallint NOT NULL,
    `kommunenavn` varchar(6) NOT NULL,
    `ejerlavkode` int DEFAULT NULL,
    `ejerlavnavn` varchar(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `matrikelnr` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `esrejendomsnr` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `etrs89koordinat_oest` double NOT NULL,
    `etrs89koordinat_nord` double NOT NULL,
    `wgs84koordinat_bredde` double NOT NULL,
    `wgs84koordinat_laengde` double NOT NULL,
    `noejagtighed` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `kilde` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `tekniskstandard` varchar(2) NOT NULL,
    `tekstretning` varchar(6) NOT NULL,
    `ddkn_m100` varchar(15) NOT NULL,
    `ddkn_km1` varchar(15) NOT NULL,
    `ddkn_km10` varchar(12) NOT NULL,
    `adressepunktaendringsdato` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `adgangsadresseid` varchar(36) NOT NULL,
    `adgangsadresse_status` tinyint NOT NULL,
    `adgangsadresse_oprettet` varchar(23) NOT NULL,
    `adgangsadresse_aendret` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `regionskode` smallint NOT NULL,
    `regionsnavn` varchar(18) NOT NULL,
    `jordstykke_ejerlavnavn` varchar(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `kvhx` varchar(21) NOT NULL,
    `sognekode` varchar(15) NOT NULL,
    `sognenavn` varchar(19) NOT NULL,
    `politikredskode` smallint NOT NULL,
    `politikredsnavn` varchar(28) NOT NULL,
    `retskredskode` smallint NOT NULL,
    `retskredsnavn` varchar(28) NOT NULL,
    `opstillingskredskode` smallint NOT NULL,
    `opstillingskredsnavn` varchar(15) NOT NULL,
    `zone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `jordstykke_ejerlavkode` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `jordstykke_matrikelnr` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `jordstykke_esrejendomsnr` int DEFAULT NULL,
    `kvh` varchar(12) NOT NULL,
    `hoejde` int DEFAULT NULL,
    `adgangspunktid` varchar(36) NOT NULL,
    `vejpunkt_id` varchar(36) NOT NULL,
    `vejpunkt_kilde` varchar(36) NOT NULL,
    `vejpunkt_noejagtighed` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `vejpunkt_tekniskstandard` varchar(10) NOT NULL,
    `vejpunkt_x` double NOT NULL,
    `vejpunkt_y` double NOT NULL,
    `afstemningsomraadenummer` bigint NOT NULL,
    `afstemningsomraadenavn` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `brofast` tinyint NOT NULL,
    `supplerendebynavn_dagi_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `navngivenvej_id` varchar(36) DEFAULT NULL,
    `menighedsraadsafstemningsomraadenummer` int NOT NULL,
    `menighedsraadsafstemningsomraadenavn` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `vejpunkt_aendret` varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `ikrafttraedelse` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `nedlagt` varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `adgangsadresse_ikrafttraedelse` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `adgangsadresse_nedlagt` smallint DEFAULT NULL,
    `adgangsadresse_darstatus` varchar(23) NOT NULL,
    `darstatus` tinyint DEFAULT NULL,
    `storkredsnummer` tinyint NOT NULL,
    `storkredsnavn` varchar(11) NOT NULL,
    `valglandsdelsbogstav` char(1) NOT NULL,
    `valglandsdelsnavn` varchar(23) NOT NULL,
    `landsdelsnuts3` varchar(5) NOT NULL,
    `landsdelsnavn` varchar(23) NOT NULL,
    `betegnelse` varchar(51) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
    `status` tinyint NOT NULL,
    `oprettet` varchar(23) NOT NULL,
    `aendret` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `vejkode` smallint NOT NULL,
    `vejnavn` varchar(23) NOT NULL,
    `adresseringsvejnavn` varchar(20) NOT NULL,
    `husnr` varchar(4) NOT NULL,
    `etage` varchar(2) DEFAULT NULL,
    `doer` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `supplerendebynavn` varchar(14) DEFAULT NULL,
    `postnr` smallint NOT NULL,
    `postnrnavn` varchar(12) NOT NULL,
    `stormodtagerpostnr` smallint DEFAULT NULL,
    `stormodtagerpostnrnavn` varchar(12) DEFAULT NULL,
    `kommunekode` smallint NOT NULL,
    `kommunenavn` varchar(6) NOT NULL,
    `ejerlavkode` int DEFAULT NULL,
    `ejerlavnavn` varchar(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `matrikelnr` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `esrejendomsnr` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `etrs89koordinat_oest` double NOT NULL,
    `etrs89koordinat_nord` double NOT NULL,
    `wgs84koordinat_bredde` double NOT NULL,
    `wgs84koordinat_laengde` double NOT NULL,
    `noejagtighed` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `kilde` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `tekniskstandard` varchar(2) NOT NULL,
    `tekstretning` varchar(6) NOT NULL,
    `ddkn_m100` varchar(15) NOT NULL,
    `ddkn_km1` varchar(15) NOT NULL,
    `ddkn_km10` varchar(12) NOT NULL,
    `adressepunktaendringsdato` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `adgangsadresseid` varchar(36) NOT NULL,
    `adgangsadresse_status` tinyint NOT NULL,
    `adgangsadresse_oprettet` varchar(23) NOT NULL,
    `adgangsadresse_aendret` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `regionskode` smallint NOT NULL,
    `regionsnavn` varchar(18) NOT NULL,
    `jordstykke_ejerlavnavn` varchar(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `kvhx` varchar(21) NOT NULL,
    `sognekode` varchar(15) NOT NULL,
    `sognenavn` varchar(19) NOT NULL,
    `politikredskode` smallint NOT NULL,
    `politikredsnavn` varchar(28) NOT NULL,
    `retskredskode` smallint NOT NULL,
    `retskredsnavn` varchar(28) NOT NULL,
    `opstillingskredskode` smallint NOT NULL,
    `opstillingskredsnavn` varchar(15) NOT NULL,
    `zone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `jordstykke_ejerlavkode` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `jordstykke_matrikelnr` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `jordstykke_esrejendomsnr` int DEFAULT NULL,
    `kvh` varchar(12) NOT NULL,
    `hoejde` int DEFAULT NULL,
    `adgangspunktid` varchar(36) NOT NULL,
    `vejpunkt_id` varchar(36) NOT NULL,
    `vejpunkt_kilde` varchar(36) NOT NULL,
    `vejpunkt_noejagtighed` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `vejpunkt_tekniskstandard` varchar(10) NOT NULL,
    `vejpunkt_x` double NOT NULL,
    `vejpunkt_y` double NOT NULL,
    `afstemningsomraadenummer` bigint NOT NULL,
    `afstemningsomraadenavn` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `brofast` tinyint NOT NULL,
    `supplerendebynavn_dagi_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `navngivenvej_id` varchar(36) DEFAULT NULL,
    `menighedsraadsafstemningsomraadenummer` int NOT NULL,
    `menighedsraadsafstemningsomraadenavn` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `vejpunkt_aendret` varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `ikrafttraedelse` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `nedlagt` varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `adgangsadresse_ikrafttraedelse` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `adgangsadresse_nedlagt` smallint DEFAULT NULL,
    `adgangsadresse_darstatus` tinyint NOT NULL,
    `darstatus` tinyint DEFAULT NULL,
    `storkredsnummer` tinyint NOT NULL,
    `storkredsnavn` varchar(11) NOT NULL,
    `valglandsdelsbogstav` char(1) NOT NULL,
    `valglandsdelsnavn` varchar(23) NOT NULL,
    `landsdelsnuts3` varchar(5) NOT NULL,
    `landsdelsnavn` varchar(23) NOT NULL,
    `betegnelse` varchar(51) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
