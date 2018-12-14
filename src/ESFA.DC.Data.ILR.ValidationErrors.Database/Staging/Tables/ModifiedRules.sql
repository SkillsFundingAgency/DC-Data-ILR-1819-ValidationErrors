CREATE TABLE [dbo].[ModifiedRules]
(
	[Rulename] NVARCHAR(50) NOT NULL PRIMARY KEY, 
	[Severity] NVARCHAR(1),
    [Message] NVARCHAR(2000) NULL
)
