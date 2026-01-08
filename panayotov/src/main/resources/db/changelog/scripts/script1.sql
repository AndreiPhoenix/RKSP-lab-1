-- Создание схемы utmn если не существует
CREATE SCHEMA IF NOT EXISTS utmn;

-- Создание таблицы student если не существует
CREATE TABLE IF NOT EXISTS utmn.student
(
    id  bigserial      NOT NULL,
    fio varchar(128)   NOT NULL,
    CONSTRAINT student_pk PRIMARY KEY (id)
);

-- Комментарии к таблице и колонкам
COMMENT ON TABLE utmn.student IS 'Таблица для хранения информации о студентах';
COMMENT ON COLUMN utmn.student.fio IS 'ФИО студента';

-- Создание индекса для оптимизации поиска
CREATE INDEX IF NOT EXISTS idx_student_fio ON utmn.student (fio);