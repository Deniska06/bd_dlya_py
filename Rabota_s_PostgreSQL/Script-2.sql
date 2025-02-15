--создание таблиц жанр и исполнители и таблицы связи между ними
create table if not exists Zhanr (
	ZhanrID SERIAL primary key,
	Imya VARCHAR(80) not null
);

create table if not exists Ispolnitel (
	IspolnitelID SERIAL primary key,
	Prozhvishe VARCHAR(80) not null
);

create table if not exists ZhanrIspol (
	ZhanrID INTEGER references Zhanr(ZhanrID),
	IspolnitelID INTEGER references Ispolnitel(IspolnitelID),
	constraint zi primary key (ZhanrID, IspolnitelID)
);

--создание таблицы альбом и таблицы связи с таб исполнители
create table if not exists Albom (
	AlbomID serial primary key,
	Imya varchar(80) not null,
	God_vipuska date not null
);

create table if not exists IspAlbom (
	IspolnitelID INTEGER references Ispolnitel(IspolnitelID),
	AlbomID INTEGER references Albom(AlbomID),
	constraint ia primary key (IspolnitelID, AlbomID)
);

--создание таблицы трек и сборник и таблицы связи меду ними, связь таб трек с альбомом
create table if not exists Track (
	TrackID integer primary key,
	Imya varchar(80) not null,
	Dlitelnost time not null,
	AlbomID INTEGER references Albom(AlbomID)
);

create table if not exists Sbornik(
	SbornikID integer primary key,
	Imya varchar(80) not null,
	God_vipuska date not null
);

create table if not exists SborTrack(
	SbornikID integer references Sbornik(SbornikID),
	TrackID integer references Track(TrackID),
	constraint st primary key (SbornikID, TrackID)
);
