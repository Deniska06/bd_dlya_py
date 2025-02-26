--Задание 2
--Название и год выхода альбомов, вышедших в 2018 году.
select imya, god_vipuska from albom
where god_vipuska = 2018;
--Название и продолжительность самого длительного трека.
select imya, dlitelnost from track
order by dlitelnost desc limit 1;
--Название треков, продолжительность которых не менее 3,5 минут.
select imya, dlitelnost from track
where dlitelnost < '00:03:50';
--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select imya, god_vipuska from sbornik
where god_vipuska between 2018 and 2020;
--Исполнители, чьё имя состоит из одного слова.
select distinct prozhvishe from ispolnitel
where prozhvishe NOT LIKE '% %'; 
--Название треков, которые содержат слово «мой» или «my».
select imya from track
where imya like '%мой%' or imya like '%my%';

--Задание 3
--Количество исполнителей в каждом жанре.
select z.imya,  count (i.ispolnitelid) count from zhanr z 
join zhanrispol zi on z.zhanrid = zi.zhanrid
join ispolnitel i on zi.ispolnitelid = i.ispolnitelid
group by z.zhanrid
--order by z.imya
;
--Количество треков, вошедших в альбомы 2019–2020 годов.
select count (t.trackid) treckof from albom a
join albom a on a.god_vipuska ( )


where a.between 2019 and 2020

;
--Средняя продолжительность треков по каждому альбому.

--Все исполнители, которые не выпустили альбомы в 2020 году.

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).



