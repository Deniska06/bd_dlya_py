--создание таблиц жанр и исполнители и таблицы связи между ними
CREATE TABLE IF NOT EXISTS Zhanr (
	ZhanrID SERIAL PRIMARY KEY,
	Imya VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Ispolnitel (
	IspolnitelID SERIAL PRIMARY KEY,
	Prozhvishe VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS ZhanrIspol (
	ZhanrID INTEGER REFERENCES Zhanr(ZhanrID),
	IspolnitelID INTEGER REFERENCES Ispolnitel(IspolnitelID),
	CONSTRAINT zi PRIMARY KEY (ZhanrID, IspolnitelID)
);

--создание таблицы альбом и таблицы связи с таб исполнители
create table if not exists Albom (
	AlbomID serial primary key,
	Imya varchar(60) not null,
	God_vipuska integer not null
);

create table if not exists IspAlbom (
	IspolnitelID INTEGER REFERENCES Ispolnitel(IspolnitelID),
	AlbomID INTEGER REFERENCES Albom(AlbomID),
	CONSTRAINT ia PRIMARY KEY (IspolnitelID, AlbomID)
);

--создание таблицы трек и сборник и таблицы связи меду ними, связь таб трек с альбомом
create table if not exists Track (
	TrackID integer primary key,
	Imya varchar(60) not null,
	Dlitelnost time not null,
	AlbomID integer REFERENCES Albom(AlbomID)
);

create table if not exists Sbornik(
	SbornikID integer primary key,
	Imya varchar(60) not null,
	God_vipuska integer not null
);

create table if not exists SborTrack(
	SbornikID integer references Sbornik(SbornikID),
	TrackID integer references Track(TrackID),
	constraint st primary key (SbornikID, TrackID)
);