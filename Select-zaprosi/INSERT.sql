--Добавление жанров
INSERT INTO zhanr 
VALUES(1, 'Русский поп');

INSERT INTO zhanr
VALUES(2, 'Русский рок');

INSERT INTO zhanr 
VALUES(3, 'Шансон');

INSERT INTO zhanr 
VALUES(4, 'Хип-хоп и рэп');

INSERT INTO zhanr
VALUES(5, 'Бардовская музыка');

--Добавление исполнителей
INSERT INTO ispolnitel 
VALUES(1, 'NILETTO');

INSERT INTO ispolnitel 
VALUES(2, 'Дима Билан');

INSERT INTO ispolnitel 
VALUES(3, 'Король и Шут');

INSERT INTO ispolnitel 
VALUES(4, 'ДДТ');

INSERT INTO ispolnitel
VALUES(5, 'Михаил Шуфутинский');

INSERT INTO ispolnitel 
VALUES(6, 'Михаил Круг');

INSERT INTO ispolnitel 
VALUES(7, 'Джиган');

INSERT INTO ispolnitel 
VALUES(8, 'Тимати');

INSERT INTO ispolnitel
VALUES(9, 'Александр Градский');

INSERT INTO ispolnitel 
VALUES(10, 'Сергей Ставроград');

--Добавлние албома
INSERT INTO albom 
VALUES(1, 'ПРОСТЫМ', 2020);

INSERT INTO albom 
VALUES(2, 'Мечтатель', 2011);

INSERT INTO albom 
VALUES(3, 'Live 2000', 2015);

INSERT INTO albom 
VALUES(4, 'Актриса Весна', 2020);

INSERT INTO albom 
VALUES(5, 'Ресторанный хит', 2016);

INSERT INTO albom 
VALUES(6, 'Лирика', 2017);

INSERT INTO albom 
VALUES(7, 'Холодное сердце', 2024);

INSERT INTO albom 
VALUES(8, 'Олимп', 2016);

INSERT INTO albom 
VALUES(9, 'Великие исполнители России XX века', 2018);

INSERT INTO albom 
VALUES(10, 'Святой русский рок', 2019);

--Добавление треков
INSERT INTO track 
VALUES(1, 'Я стану простым', '00:04:04', 1);

INSERT INTO track 
VALUES(2, 'Повезёт', '00:03:44', 1);

INSERT INTO track 
VALUES(3, 'Сирень', '00:02:35', 1);

INSERT INTO track 
VALUES(4, 'Мечтатели', '00:03:48', 2); 

INSERT INTO track 
VALUES(5, 'Задыхаюсь', '00:03:33', 2);

INSERT INTO track 
VALUES(6, 'По парам', '00:03:37', 2);

INSERT INTO track 
VALUES(7, 'Ели мясо мужики', '00:02:19', 3);

INSERT INTO track 
VALUES(8, 'Внезапная голова', '00:02:25', 3);

INSERT INTO track 
VALUES(9, 'Валет и дама', '00:03:00', 3);

INSERT INTO track 
VALUES(10, 'Дождь', '00:05:04', 4);

INSERT INTO track 
VALUES(11, 'В последнюю осень', '00:04:45', 4);

INSERT INTO track 
VALUES(12, 'Фома', '00:06:52', 4);

INSERT INTO track 
VALUES(13, 'Наколочка', '00:03:57', 5);

INSERT INTO track 
VALUES(14, 'Марджанджа', '00:03:18', 5);

INSERT INTO track 
VALUES(15, 'За милых дам', '00:02:59', 5);

INSERT INTO track 
VALUES(16, 'Осенний дождь', '00:05:40', 6);

INSERT INTO track 
VALUES(17, 'У каких ворот', '00:03:30', 6);

INSERT INTO track 
VALUES(18, 'Ништяк, браток', '00:03:17', 6);

INSERT INTO track 
VALUES(19, 'Нас больше нет', '00:03:22', 7);

INSERT INTO track 
VALUES(20, 'Отпусти', '00:03:17', 7);

INSERT INTO track 
VALUES(21, 'Любимая', '00:02:46', 7);

INSERT INTO track 
VALUES(22, 'Домой', '00:03:05', 8);

INSERT INTO track 
VALUES(23, 'Где ты, где я', '00:04:42', 8);

INSERT INTO track 
VALUES(24, 'Ключи от рая', '00:03:19', 8);

INSERT INTO track 
VALUES(25, 'Как молоды мы были', '00:05:30', 9);

INSERT INTO track 
VALUES(26, 'Песня о друге', '00:04:27', 9);

INSERT INTO track 
VALUES(27, 'Жил был я', '00:04:07', 9);

INSERT INTO track 
VALUES(28, 'Поэт. Певец. Муж. Отец.', '00:03:55', 10);

INSERT INTO track 
VALUES(29, 'По прямой', '00:02:58', 10);

INSERT INTO track 
VALUES(30, 'Культурный путч', '00:04:20', 10);


INSERT INTO track 
VALUES(50, 'my own', '00:03:20', 10);

INSERT INTO track 
VALUES(51, 'own my', '00:03:20', 10);

INSERT INTO track 
VALUES(52, 'my', '00:03:20', 10);

INSERT INTO track 
VALUES(53, 'oh my god', '00:03:20', 10);

INSERT INTO track 
VALUES(54, 'myself', '00:03:20', 10);

INSERT INTO track 
VALUES(55, 'by myself', '00:03:20', 10);

INSERT INTO track 
VALUES(56, 'bemy self', '00:03:20', 10);

INSERT INTO track 
VALUES(57, 'myself by', '00:03:20', 10);

INSERT INTO track 
VALUES(58, 'by myself by', '00:03:20', 10);

INSERT INTO track 
VALUES(59, 'beemy', '00:03:20', 10);

INSERT INTO track 
VALUES(60, 'premyne', '00:03:20', 10);

INSERT INTO track 
VALUES(61, 'Мой мир', '00:03:20', 10);

INSERT INTO track 
VALUES(62, 'Мир мой', '00:03:20', 10);

INSERT INTO track 
VALUES(63, 'Мирмой', '00:03:20', 10);

--Добавление Сборника
INSERT INTO sbornik 
VALUES(1, 'Осень ', 2011);

INSERT INTO sbornik 
VALUES(2, 'Зима ', 2024);

INSERT INTO sbornik 
VALUES(3, 'Весна ', 2015);

INSERT INTO sbornik 
VALUES(4, 'Ленто ', 2016);

INSERT INTO sbornik 
VALUES(5, 'Осень1 ', 2017);

INSERT INTO sbornik 
VALUES(6, 'Зима1 ', 2018);

INSERT INTO sbornik 
VALUES(7, 'Весна1 ', 2019);

INSERT INTO sbornik 
VALUES(8, 'Ленто1 ', 2020);

--Добавление промежуточной табл жанр-испол
INSERT INTO zhanrispol 
VALUES(1, 1);

INSERT INTO zhanrispol 
VALUES(1, 2);

INSERT INTO zhanrispol 
VALUES(2, 3);

INSERT INTO zhanrispol 
VALUES(2, 4);

INSERT INTO zhanrispol 
VALUES(3, 5);

INSERT INTO zhanrispol 
VALUES(3, 6);

INSERT INTO zhanrispol 
VALUES(4, 7);

INSERT INTO zhanrispol 
VALUES(4, 8);

INSERT INTO zhanrispol 
VALUES(5, 9);

INSERT INTO zhanrispol 
VALUES(5, 10);

--Добавление промежуточной табл исполн альбом
INSERT INTO ispalbom 
VALUES(1, 1);

INSERT INTO ispalbom 
VALUES(2, 2);

INSERT INTO ispalbom 
VALUES(3, 3);

INSERT INTO ispalbom 
VALUES(4, 4);

INSERT INTO ispalbom 
VALUES(5, 5);

INSERT INTO ispalbom 
VALUES(6, 6);

INSERT INTO ispalbom 
VALUES(7, 7);

INSERT INTO ispalbom 
VALUES(8, 8);

INSERT INTO ispalbom 
VALUES(9, 9);

INSERT INTO ispalbom 
VALUES(10, 10);

--Добавление промежуточной табл сборник трек
INSERT INTO sbortrack 
VALUES(8, 1);
INSERT INTO sbortrack 
VALUES(8, 2);
INSERT INTO sbortrack 
VALUES(8, 3);
INSERT INTO sbortrack 
VALUES(1, 4);
INSERT INTO sbortrack 
VALUES(1, 5);
INSERT INTO sbortrack 
VALUES(1, 6);
INSERT INTO sbortrack 
VALUES(3, 7);
INSERT INTO sbortrack 
VALUES(3, 8);
INSERT INTO sbortrack 
VALUES(3, 9);
INSERT INTO sbortrack 
VALUES(8, 10);
INSERT INTO sbortrack 
VALUES(8, 11);
INSERT INTO sbortrack 
VALUES(8, 12);
INSERT INTO sbortrack 
VALUES(4, 13);
INSERT INTO sbortrack 
VALUES(4, 14);
INSERT INTO sbortrack 
VALUES(4, 15);
INSERT INTO sbortrack 
VALUES(5, 16);
INSERT INTO sbortrack 
VALUES(5, 17);
INSERT INTO sbortrack 
VALUES(5, 18);
INSERT INTO sbortrack 
VALUES(2, 19);
INSERT INTO sbortrack 
VALUES(2, 20);
INSERT INTO sbortrack 
VALUES(2, 21);
INSERT INTO sbortrack 
VALUES(4, 22);
INSERT INTO sbortrack 
VALUES(4, 23);
INSERT INTO sbortrack 
VALUES(4, 24);
INSERT INTO sbortrack 
VALUES(6, 25);
INSERT INTO sbortrack 
VALUES(6, 26);
INSERT INTO sbortrack 
VALUES(6, 27);
INSERT INTO sbortrack 
VALUES(7, 28);
INSERT INTO sbortrack 
VALUES(7, 29);
INSERT INTO sbortrack 
VALUES(7, 30);
