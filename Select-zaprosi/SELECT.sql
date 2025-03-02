--Задание 2
--Название и год выхода альбомов, вышедших в 2018 году.
select imya, god_vipuska from albom
where god_vipuska = 2018;
--Название и продолжительность самого длительного трека.
select imya, dlitelnost from track
order by dlitelnost desc limit 1;

select imya, dlitelnost from track
where dlitelnost = (select max (dlitelnost) from track);
--Название треков, продолжительность которых не менее 3,5 минут.
select imya, dlitelnost from track
where dlitelnost >= '00:03:30';
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
select count (t.trackid) count_track from track t
join albom a on t.albomid = a.albomid
where a.god_vipuska BETWEEN 2019 AND 2020
;
--Средняя продолжительность треков по каждому альбому.
select a.imya, avg (t.dlitelnost) SredProd from albom a
join track t on a.albomid = t.albomid
group by a.imya
order by a.imya;
--Все исполнители, которые не выпустили альбомы в 2020 году.
select i.prozhvishe from ispolnitel i
left join albom a on i.ispolnitelid = a.albomid and a.god_vipuska = '2020'
where a.albomid is null;
--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select distinct s.imya from sbornik s
join track t on s.sbornikid = t.trackid
join ispolnitel i on s.sbornikid = i.ispolnitelid
where i.prozhvishe = 'ДДТ' 

;


