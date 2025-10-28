CREATE SCHEMA IF NOT EXISTS utmn;

CREATE TABLE IF NOT EXISTS utmn.student
(
    id  bigserial       NOT NULL,
    fio varchar(128)    NOT NULL
);

COMMENT ON TABLE utmn.student IS 'Таблица для хранения информации о студентах';
COMMENT ON COLUMN utmn.student.fio IS 'ФИО';
