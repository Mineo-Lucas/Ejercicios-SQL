
Create table Eventos(
Id int not null,
NombreEvento varchar(100),
FechaInicio datetime,
FechaFin datetime,
Lugar varchar(100)
constraint PK_EventosId Primary key(Id)
);

Create table Asistentes(
Id int not null,
Nombre varchar(100),
Email varchar(100),
Telefono int
constraint PK_AsistentesId Primary key(Id)
);

Create table EventosAsistentes(
IdEventos int,
IdAsistentes int
constraint PK_EventosAsistentesId Primary key(IdEventos, IdAsistentes)
constraint FK_EventosId foreign key(IdEventos) references Eventos(Id),
constraint FK_AsistentesId foreign key(IdAsistentes) references Asistentes(Id)
);

