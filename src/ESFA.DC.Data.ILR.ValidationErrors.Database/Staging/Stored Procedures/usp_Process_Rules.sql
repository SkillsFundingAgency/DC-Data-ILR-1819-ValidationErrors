﻿CREATE PROCEDURE [Staging].[usp_Process_Rules]
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		
		MERGE INTO [dbo].[Rules] AS Target
		USING (
				SELECT   [Rulename]
						,[Severity]
						,[Message]
				  FROM [Staging].[Rules]
			  )
			  AS Source 
		    ON Target.[Rulename] = Source.[Rulename]
			WHEN MATCHED 
				AND EXISTS 
					(	SELECT 
							 Target.[Severity]
							,Target.[Message]
					EXCEPT 
						SELECT 
							 Source.[Severity]
							,Source.[Message]
					)
		  THEN
			UPDATE SET   [Severity] = Source.[Severity]
						,[Message] = Source.[Message]
		WHEN NOT MATCHED BY TARGET THEN
		INSERT (     [Rulename]
					,[Severity]
					,[Message]
					)
			VALUES ( Source.[Rulename]
					,Source.[Severity]
					,Source.[Message]
				  )
		WHEN NOT MATCHED BY SOURCE THEN DELETE
		;

		RETURN 0;

	END TRY
-- 
-------------------------------------------------------------------------------------- 
-- Handle any problems
-------------------------------------------------------------------------------------- 
-- 
	BEGIN CATCH

		DECLARE   @ErrorMessage		NVARCHAR(4000)
				, @ErrorSeverity	INT 
				, @ErrorState		INT
				, @ErrorNumber		INT
						
		SELECT	  @ErrorNumber		= ERROR_NUMBER()
				, @ErrorMessage		= 'Error in :' + ISNULL(OBJECT_NAME(@@PROCID),'') + ' - Error was :' + ERROR_MESSAGE()
				, @ErrorSeverity	= ERROR_SEVERITY()
				, @ErrorState		= ERROR_STATE();
	
		RAISERROR (
					  @ErrorMessage		-- Message text.
					, @ErrorSeverity	-- Severity.
					, @ErrorState		-- State.
				  );
			  
		RETURN @ErrorNumber;

	END CATCH
-- 
-------------------------------------------------------------------------------------- 
-- All done
-------------------------------------------------------------------------------------- 
-- 
END