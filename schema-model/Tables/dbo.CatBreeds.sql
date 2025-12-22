CREATE TABLE [dbo].[CatBreeds]
(
[CatBreedID] [int] NOT NULL IDENTITY(1, 1),
[BreedName] [nvarchar] (100) NOT NULL,
[Origin] [nvarchar] (100) NULL,
[CoatType] [nvarchar] (50) NULL,
[TemperamentDescription] [nvarchar] (255) NULL,
[AverageLifespan] [int] NULL
)
GO
ALTER TABLE [dbo].[CatBreeds] ADD PRIMARY KEY CLUSTERED ([CatBreedID])
GO
