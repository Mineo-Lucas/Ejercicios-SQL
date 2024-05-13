--ejercicio 1
select * from Peliculas where year(FechaEstreno) between 1980 and 1990

--ejercicio 2
select * from Reparto where YEAR(FechaNacimiento) between 1970 and 1979

--ejercicio 3
select * from Clasificaciones
select * from [Peliculas.Clasificaciones]
select * from Peliculas

select COUNT(IdClasificacion) from [Peliculas.Clasificaciones] where IdClasificacion =4

--ejercicio 4
select Count(IdPelicula) Peliculas from [Peliculas.Clasificaciones] pc 
inner join Clasificaciones c on pc.IdClasificacion= C.Id where c.Descripcion like 'R%'

--ejercicio 5
select MAX(MinutosDuracion) from Peliculas

--ejercicio 6
select * from [Peliculas.Categorias]
select * from Categorias
select * from Peliculas

select p.Titulo from Peliculas p inner join [Peliculas.Categorias] pc on p.Id=pc.IdPelicula 
inner join Categorias c on c.Id=pc.IdCategoria where pc.IdCategoria=27

--ejercicio 7
select * from [Peliculas.Reparto]
select * from Peliculas

select * from Peliculas where id=7
select COUNT(IdReparto) 'total de actores' from [Peliculas.Reparto] where IdPelicula=7

--ejercicio 8
select * from [Peliculas.Reparto]
select * from Peliculas
select * from Reparto

select * from Peliculas p inner join [Peliculas.Reparto] Pr on p.Id=Pr.IdPelicula
inner join Reparto r on r.Id= Pr.IdReparto where Pr.IdPelicula=7

--ejercicio 9
select COUNT(Id) 'cantidad peliculas' from Peliculas

--ejercicio 10
select * from Usuarios where Activo=0

--ejercicio 11
select * from Peliculas
insert into Peliculas values('1968-11-1','"The Good, the Bad and the Ugly"',162,
'"Tres hombres violentos pelean por una caja que alberga 200 000 dólares, la cual fue escondida durante la Guerra Civil. 
Dado que ninguno puede encontrar la tumba donde está el botín sin la ayuda de los otros dos, deben colaborar, pese a odiarse."',null)

--ejercicio 12
select * from Usuarios
select * from [Usuarios.Favoritos]
insert into [Usuarios.Favoritos] values(30,4,'2024-05-06')

--ejercicio 13
select * from Plataformas
select * from [Peliculas.Plataformas]
insert into [Peliculas.Plataformas](Id,IdPelicula,IdPlataforma,FechaAlta) values(44,30,1,'2024-05-06')
insert into [Peliculas.Plataformas](Id,IdPelicula,IdPlataforma,FechaAlta) values(45,30,2,'2024-05-06') 

--ejercicio 14(no hay que hacer nada en la db)

--ejercicio 15
select * from Plataformas
select * from [Peliculas.Plataformas]
select * from Peliculas
update [Peliculas.Plataformas] set FechaBaja='2024-01-16' where Id=5

--ejercicio 16()
select * from Peliculas
select * from Reparto where Nombre='robert'
select * from [Peliculas.Reparto]
update [Peliculas.Reparto] set IdReparto=107 where Id=11

--ejercicio 17()
select * from Plataformas
update Plataformas set Nombre='MaxiPrograma TV' where Id=10

--ejercicio 18
select * from Peliculas
select * from Clasificaciones
select * from [Peliculas.Clasificaciones]
update [Peliculas.Clasificaciones] set IdClasificacion=1 where Id=12

--ejercicio 19
select * from Usuarios
delete from Usuarios where Id=3

--ejercicio 20
select * from [Peliculas.Puntuacion]
delete from [Peliculas.Puntuacion] where YEAR(FechaPuntuacion) between 2022 and 2023

--ejercicio 21
select * from Peliculas
delete from Peliculas where YEAR(FechaEstreno) between 1980 and 1989
