CREATE TABLE [dbo].[DogBreeds]
(
[DogBreedID] [int] NOT NULL IDENTITY(1, 1),
[BreedName] [nvarchar] (100) NOT NULL,
[Origin] [nvarchar] (100) NULL,
[Size] [nvarchar] (50) NULL,
[TemperamentDescription] [nvarchar] (255) NULL,
[AverageLifespan] [int] NULL
)
GO
ALTER TABLE [dbo].[DogBreeds] ADD PRIMARY KEY CLUSTERED ([DogBreedID])
GO
