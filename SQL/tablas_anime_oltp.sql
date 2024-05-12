-- BORRAR BASE SI EXISTE
DROP DATABASE IF EXISTS anime_oltp;
CREATE DATABASE anime_oltp;
USE anime_oltp;

-- Creación de la tabla `anime`
DROP TABLE IF EXISTS anime;
CREATE TABLE anime (
  ANIME_ID          INT NOT NULL,
  ANIME_NAME        VARCHAR(255),
  TYPES             VARCHAR(50),
  EPISODES          INT,
  URL_IMAGE         VARCHAR(255),
  DURATION          TIME,
  SCORED            FLOAT,
  SCORED_BY         FLOAT,
  RANKS             FLOAT,
  POPULARITY        FLOAT,
  SYNOPSIS          TEXT,
  STATUS            VARCHAR(30),
  STAR_DATE         DATE,
  FINISH_DATE       DATE,
  ID_CLASIFICATION  INT NOT NULL,
  ID_SOURCE         INT NOT NULL
);

-- Creación de la tabla `genre`
DROP TABLE IF EXISTS genre;
CREATE TABLE genre (
  ID_GENRE  INT NOT NULL,
  GENRE     VARCHAR(30)
);

-- Creación de la tabla `genre_anime`
DROP TABLE IF EXISTS genre_anime;
CREATE TABLE genre_anime (
  ID_GENRE  INT NOT NULL,
  ID_ANIME INT NOT NULL
);

-- Creación de la tabla `classification`
DROP TABLE IF EXISTS classification;
CREATE TABLE classification (
  ID_CLASIFICATION  INT NOT NULL,
  CLASIFICATION     VARCHAR(30)
);

-- Creación de la tabla `source`
DROP TABLE IF EXISTS source;
CREATE TABLE source (
  ID_SOURCE  INT NOT NULL,
  SOURCE     VARCHAR(30)
);

-- Creación de la tabla `anime_relation
DROP TABLE IF EXISTS anime_relation;
CREATE TABLE anime_relation (
  ID_ORIGEN  		INT NOT NULL,
  ID_RELATION		INT NOT NULL,
  TYPE_RELATION		VARCHAR(50)
);

