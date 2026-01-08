-- Вставка записи с ФИО студента
INSERT INTO utmn.student (fio)
VALUES ('Панаётов Андрей Иванович')
ON CONFLICT DO NOTHING;