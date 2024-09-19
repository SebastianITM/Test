Create database db_licorera
GO
Use db_licorera
go
Create table Tipos
(
[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
[Nombre] NVARCHAR(50) NOT NULL,
);
go
Create table Bebidas
(
[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
[Nombre] NVARCHAR(50) NOT NULL,
[Fecha] SMALLDATETIME NOT NULL,
[Tipo] INT REFERENCES [Tipos] ([Id]), 
[Activo] BIT NOT NULL DEFAULT 0
);
go
INSERT INTO [Tipos]([Nombre]) VALUES ('Ron');
INSERT INTO [Tipos]([Nombre]) VALUES ('Licor Blanco');
go

INSERT INTO [Bebidas] ([Nombre],[Fecha],[Tipo],[Activo])
VALUES('Ron antioqueño', GETDATE(), 2, 1);
INSERT INTO [Bebidas] ([Nombre],[Fecha],[Tipo],[Activo])
VALUES('Ron viejo de caldas', GETDATE(), 2, 0);
go

SELECT *
FROM [Bebidas] B INNER JOIN [Tipos] T ON B.Tipo=T.Id;
GO

