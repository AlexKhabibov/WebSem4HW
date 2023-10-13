-- Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения.
-- Необходимо добавить 5-10 одногруппников в данную таблицу.
-- Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), которые живут в Москве и их возраст находится в диапазоне [18, 30) лет. 
-- Примечание:
-- Квадратные скобки при указании диапазона, означают "включительно", а круглые "не включительно", то есть диапазон (7, 9] означает "от 7, где 7 не попадает в данный диапазон, до 9 включительно". Такой синтаксис нельзя использовать в sql, вам нужно найти решение, как такое условие можно записать в sql по-другому.

-- create
CREATE TABLE CLASSMATES (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  address TEXT NOT NULL
);

-- insert
INSERT INTO CLASSMATES(name, age, address) VALUES ('Helga', '24', 'Moscow');
INSERT INTO CLASSMATES(name, age, address) VALUES ('Jane', '35', 'Sochi');
INSERT INTO CLASSMATES(name, age, address) VALUES ('Jake', '35', 'Kazan');
INSERT INTO CLASSMATES(name, age, address) VALUES ('Kevin', '45', 'Rostov');
INSERT INTO CLASSMATES(name, age, address) VALUES ('Nik', '18', 'Moscow');
INSERT INTO CLASSMATES(name, age, address) VALUES ('Liam', '19', 'Moscow');


-- fetch 
SELECT name FROM CLASSMATES WHERE (address = 'Moscow' AND age >= 18 AND age < 30)