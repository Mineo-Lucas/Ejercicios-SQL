
create table Estilos(
Id int not null,
Descripcion varchar(250)
constraint PK_EstilosId primary key(Id)
);

create table TiposEdicion(
Id int not null,
Descripcion varchar(250)
constraint PK_TiposEdicionId primary key(Id)
);

create table Discos(
Id int not null,
Titulo varchar(100),
FechaLanzamiento datetime,
CantidadCanciones int,
UrlImagenTapa varchar(250),
IdEstilo int,
IdTipoEdicion int,
constraint FK_EstilosId foreign key(IdEstilo) references Estilos(Id),
constraint FK_TiposEdicionId foreign key(IdTipoEdicion) references TiposEdicion(Id)
);


