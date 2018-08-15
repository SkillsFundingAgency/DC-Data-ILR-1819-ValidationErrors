CREATE TABLE [Staging].[Rules]
(
	[Rulename] NVARCHAR(50) NOT NULL, 
    [Severity] NVARCHAR NULL, 
    [Message] NVARCHAR(2000) NULL
	CONSTRAINT [PK_Staging_LARS_Rules] PRIMARY KEY CLUSTERED ([Rulename]) WITH (FILLFACTOR = 90)
)

GO
GRANT ALTER ON OBJECT::Staging.Rules TO [ILR1819ValidationErrors_RW_User];
