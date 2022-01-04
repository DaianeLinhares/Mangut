IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Avaliacaoes] (
    [IdAvaliacao] int NOT NULL IDENTITY,
    [Nota] int NOT NULL,
    [Mensagem] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Avaliacaoes] PRIMARY KEY ([IdAvaliacao])
);
GO

CREATE TABLE [Categoria] (
    [IdCategoria] int NOT NULL IDENTITY,
    [Tipo] nvarchar(max) NOT NULL,
    [CategoriaIdCategoria] int NULL,
    CONSTRAINT [PK_Categoria] PRIMARY KEY ([IdCategoria]),
    CONSTRAINT [FK_Categoria_Categoria_CategoriaIdCategoria] FOREIGN KEY ([CategoriaIdCategoria]) REFERENCES [Categoria] ([IdCategoria])
);
GO

CREATE TABLE [Clientes] (
    [IdCliente] int NOT NULL IDENTITY,
    [Nome] nvarchar(max) NOT NULL,
    [CPF] nvarchar(11) NOT NULL,
    [Telefone] nvarchar(max) NOT NULL,
    [Email] nvarchar(max) NOT NULL,
    [Senha] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Clientes] PRIMARY KEY ([IdCliente])
);
GO

CREATE TABLE [Produtos] (
    [IdProduto] int NOT NULL IDENTITY,
    [IdCategoria] int NOT NULL,
    [Nome] nvarchar(max) NOT NULL,
    [Preco] nvarchar(max) NOT NULL,
    [Quantidade] int NOT NULL,
    CONSTRAINT [PK_Produtos] PRIMARY KEY ([IdProduto]),
    CONSTRAINT [FK_Produtos_Categoria_IdCategoria] FOREIGN KEY ([IdCategoria]) REFERENCES [Categoria] ([IdCategoria]) ON DELETE CASCADE
);
GO

CREATE TABLE [Compras] (
    [IdCompra] int NOT NULL IDENTITY,
    [DataCompra] datetime2 NOT NULL,
    [IdCliente] int NOT NULL,
    [IdProduto] int NOT NULL,
    CONSTRAINT [PK_Compras] PRIMARY KEY ([IdCompra]),
    CONSTRAINT [FK_Compras_Clientes_IdCliente] FOREIGN KEY ([IdCliente]) REFERENCES [Clientes] ([IdCliente]) ON DELETE CASCADE,
    CONSTRAINT [FK_Compras_Produtos_IdProduto] FOREIGN KEY ([IdProduto]) REFERENCES [Produtos] ([IdProduto]) ON DELETE CASCADE
);
GO

CREATE TABLE [Vendedores] (
    [IdVendedor] int NOT NULL IDENTITY,
    [CPF] nvarchar(11) NOT NULL,
    [Endereco] nvarchar(max) NOT NULL,
    [Telefone] nvarchar(max) NOT NULL,
    [Email] nvarchar(max) NOT NULL,
    [Senha] nvarchar(max) NOT NULL,
    [IdProduto] int NOT NULL,
    [IdAvaliacao] int NOT NULL,
    CONSTRAINT [PK_Vendedores] PRIMARY KEY ([IdVendedor]),
    CONSTRAINT [FK_Vendedores_Avaliacaoes_IdAvaliacao] FOREIGN KEY ([IdAvaliacao]) REFERENCES [Avaliacaoes] ([IdAvaliacao]) ON DELETE CASCADE,
    CONSTRAINT [FK_Vendedores_Produtos_IdProduto] FOREIGN KEY ([IdProduto]) REFERENCES [Produtos] ([IdProduto]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_Categoria_CategoriaIdCategoria] ON [Categoria] ([CategoriaIdCategoria]);
GO

CREATE INDEX [IX_Compras_IdCliente] ON [Compras] ([IdCliente]);
GO

CREATE INDEX [IX_Compras_IdProduto] ON [Compras] ([IdProduto]);
GO

CREATE INDEX [IX_Produtos_IdCategoria] ON [Produtos] ([IdCategoria]);
GO

CREATE INDEX [IX_Vendedores_IdAvaliacao] ON [Vendedores] ([IdAvaliacao]);
GO

CREATE INDEX [IX_Vendedores_IdProduto] ON [Vendedores] ([IdProduto]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220104200107_Mangut', N'6.0.1');
GO

COMMIT;
GO

