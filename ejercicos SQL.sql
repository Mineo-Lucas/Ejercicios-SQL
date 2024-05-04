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
