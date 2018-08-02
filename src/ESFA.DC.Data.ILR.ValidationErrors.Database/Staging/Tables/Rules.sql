CREATE TABLE [Staging].[Rules]
(
	[Rulename] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Severity] NVARCHAR NULL, 
    [Message] NVARCHAR(2000) NULL
)
