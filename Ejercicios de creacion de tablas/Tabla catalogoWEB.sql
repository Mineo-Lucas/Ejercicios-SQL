create table Categoria(
Id int,
Descripcion varchar(250)
constraint PK_IdCategorias primary key(Id)
);

create table Marca(
Id int,
Descripcion varchar(250)
constraint PK_IdMarcas primary key(Id)
);

create table Usuario(
Id int,
Email varchar(100),
Pass varchar(50),
Nombre varchar(50),
Apellido varchar (50),
UrlImagenPerfil varchar(250),
admin bit
constraint PK_IdUsers primary key(Id)
);

create table Articulo(
Id int,
Codigo varchar(50),
Nombre varchar(50),
Descripcion varchar(250),
IdMarca int,
IdCategoria int,
ImagenUrl varchar(250),
precio money
constraint PK_IdArticulos primary key(Id),
constraint FK_IdMarca foreign key(IdMarca) references Marca(Id),
constraint FK_IdCategoria foreign key(IdCategoria) references Categoria(Id)
);

create table Favorito(
Id int,
IdUser int,
IdArticulo int
constraint FK_IdUser foreign key(IdUser) references Usuario(Id),
constraint FK_IdArticulo foreign key(IdArticulo) references Articulo(Id)
);






