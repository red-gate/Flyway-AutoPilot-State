CREATE TABLE [dbo].[Pets]
(
[PetID] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (100) NOT NULL,
[CatBreedID] [int] NULL,
[DogBreedID] [int] NULL,
[Age] [int] NULL,
[Gender] [nvarchar] (10) NULL,
[Color] [nvarchar] (50) NULL,
[AdoptionDate] [date] NULL,
[OwnerName] [nvarchar] (100) NULL
)
GO
ALTER TABLE [dbo].[Pets] ADD PRIMARY KEY CLUSTERED ([PetID])
GO
ALTER TABLE [dbo].[Pets] ADD FOREIGN KEY ([CatBreedID]) REFERENCES [dbo].[CatBreeds] ([CatBreedID])
GO
ALTER TABLE [dbo].[Pets] ADD FOREIGN KEY ([DogBreedID]) REFERENCES [dbo].[DogBreeds] ([DogBreedID])
GO
