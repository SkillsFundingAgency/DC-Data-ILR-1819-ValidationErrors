
SET NOCOUNT ON;
BEGIN

	DECLARE @ModifiedRules TABLE ([Rulename] NVARCHAR(50) NOT NULL PRIMARY KEY, [Severity] NVARCHAR(1),[Message] NVARCHAR(2000) NULL);

	INSERT INTO @ModifiedRules( [Rulename],[Severity] ,[Message])
	VALUES ('NUMHUS_01',NULL,'''Student instance identifier'' is missing: You must enter ''student instance identifier'' details for all HE learners from 1 August 2011. Check ''student instance identifier'' and ''learning aim start date'' are complete and correct.')
		  ,('QUALENT3_01',NULL,'''Qualification on entry'' is missing: You must enter ''qualification on entry'' details for all HE learners from 1 August 2010. Check ''qualifications on entry'' and ''learning aim start date'' are complete and correct.')
		  ,('PCFLDCS_02',NULL,'''Percentage taught in the first LDCS subject'' is missing. You must enter the percentage of the academic year that the learner will spend studying the subject entered in LDCS 1 (Learning Directory Classification System). Check ''percentage taught in the first LDCS subject'' is complete and correct.')
		  ,('TTACCOM_01',NULL,'''Term time accommodation'' is wrong: You must enter a value from 1 to 9 (depending on where the learner is living during term time). The ILR data specification provides details of what each code should be used for. Check ''term time accommodation'' is correct.')
		  ,('TTACCOM_04',NULL,'''Term time accommodation'' is missing: You must enter a value from 1 to 9 (depending on where the learner is living during term time). The ILR data specification provides details of what each code should be used for. Check ''term time accommodation'' is complete and correct.')
		  ,('NETFEE_01',NULL,'''Net tuition fee'' is missing: The ''net tuition fee'' is the fee for the student on this course this year after any financial support (such as waivers or bursaries) is taken into account. Check ''net tuition fee'' is complete and correct.')
		  ,('ELQ_01',NULL,'''Equivalent or lower qualification'' is missing: You must provide details of whether the learner is aiming for an equivalent or lower level qualification than one already achieved. Check ''equivalent or lower qualification'' and ''learning aim'' are complete and correct.')
		  ,('LearnDelFAMType_02',NULL,'A ''Learning delivery funding and monitoring'' entry must be added for ''fully funded indicator'' for this funding model. You''ve indicated that the learner is adult skills funded. This means that you must add ''FFI: full or co-funding indicator'' to a ''learning delivery funding and monitoring'' entry. Check ''learning delivery funding and monitoring'' entries and ''funding model'' are correct.')
		  ,('EmpStat_08',NULL,'''Employment status'' is missing: You must enter details of what the learner''s employment status was prior to the learning start date for all adult and non-funded learners. Check ''employment status (dates)'' entries and ''learning aim start date'' and ''funding model'' are complete and correct.')
		  ,('UKPRN_06',NULL,'''You do not have a current contract for adult skills funding: You must have a contract for adult skills funding to be able to claim this type of funding. Check ''UK provider reference number'' is correct and that you have a contract in place for adult skills funding.')
		  ,('LearnDelFAMType_64',NULL,'''Apprenticeship contract type'' entry is missing: You''ve indicated that this learner is funded through apprenticeship funding. This means you need to enter details of the type of apprenticeship contract they have. Check ''funding model'' and ''learning delivery aim'' are complete and correct and that a ''learning delivery funding and monitoring'' entry for'' apprecticeship contract type'' has been included.')
		  ,('LearnDelFAMType_44',NULL,'''Household situation'' is missing: You must provide details of the learner''s household situation for learners that are ''ESF'' (European Social Fund) or ''adult skills'' or ''other SFA'' funded. Check ''learning delivery funding and monitoring'' entry for ''household situation'' and ''funding model'' are complete and correct.')
		  ,('LearnDelFAMType_03',NULL,'''Community learning provision type'' is missing: You must provide details of the type of community learning activity being undertaken by the learner. Check that you have included a ''learning delivery funding and monitoring'' entry for type ''ASL'' for each learning delivery funded with ''community learning''.')
		  ,('PriorAttain_01',NULL,'''Prior attainment code'' is missing: You must enter details of the learner''s prior attainment at the time they enrolled. Check ''prior attainment'' is complete and correct.')
		  ,('AFinType_13',NULL,'''Price record'' is missing: You must enter the price details from the start of all apprenticeship funded programmes. Check ''price record'' is complete and correct and check that the date of the ''apprenticeship finanical record'' matches the ''learning start date'' .')
		  ,('AFinType_12',NULL,'''Price record'' is missing: You must enter the price details for all apprenticeship-funded programmes. Check ''price record'' is complete and correct.')
		  ,('LearnDelFAMType_66',NULL,'''Full or co-funding indicator'' is wrong: You must not claim full funding for learners aged 24 or over whose learning aims are level 2 or below who aren''t claiming benefits - unless they are in one of the exemption groups detailed in the funding rules. Check ''learning delivey funding and monitoring'' entry for ''full or co-funding indicator'' and ''funding model'' and ''date of birth'' and ''learning aim'' are correct.')
		  ,('PlanLearnHours_01',NULL,'''Planned learning hours'' is missing: You''ve indicated this learner either isn''t an apprentice or European Social Fund (ESF) funded or that all the learning aims are closed. This means you must provide details of the total planned timetabled hours for learning activities for the teaching year. Check ''planned learning hours'' and ''learning aim'' are complete and correct.')
		  ,('ULN_07',NULL,'''Unique learner number'' (ULN) is wrong for the combination of course length with funding model and file preparation date and learning start date: The temporary learner number (9999999999) should only be used before 1 January while you wait for the learner''s ULN registration.  Check the ''unique learner number'' and ''file preparation date'' and ''funding model'' and ''learning start/end dates'' are correct.')
		  ,('LearnActEndDate_04',NULL,'''Learning actual end date'' is wrong: The learning must have actually ended. This means that the ''learning actual end date'' must be before the date the ILR file was created. Check ''learning actual end date'' and ''file preparation date'' are correct.')
		  ,('MathGrade_03',NULL,'''Learner FAM type'' is wrong: If the GCSE maths qualification is ''D'' (or 3) or below you must include a ''learner FAM type'' of ''eligibility for EFA disadvantage funding''. Check ''learner math grade'' and ''learner FAM type'' entries are correct.')
		  ,('ULN_12',NULL,'''Unique learner number'' (ULN) is wrong: The default learner number (9999999999) should only be used until 1 January while you wait for the learner''s ULN registration.  Check ''unique learner number'' and ''learning delivery FAM type'' are correct.')
		  ,('ProgType_01',NULL,'''Programme type'' is missing: You must include ''programme type'' details for all learning aims that are part of a wider programme (aim type 1 or aim type 3). Check ''programme type'' and ''learning aim type'' are complete and correct.')
		  ,('ProgType_13',NULL,'''Learning actual end date'' is missing or the traineeship is too long: If the ''learning actual end date'' is missing there can''t be more than 8 months between the ''learning start date'' and date this file was created. Check ''learning aim type'' and ''programme type'' and ''learning actual end date'' and ''learning actual start date'' are complete and correct.')
		  ,('CompStatus_04',NULL,'''Learning delivery outcome status'' is missing: You''ve indicated that this learner has completed their learning aim but haven''t provided details of the outcome. Check ''learning delivery completion status'' and ''learning delivery outcome'' are complete and correct.')
		  ,('OrigLearnStartDate_04',NULL,'''Restart indicator'' is missing: You''ve indicated that this learner has restarted their learning by completing the ''original learning start date'' but you haven''t entered a ''learning delivery funding and monitoring type restart indicator''.  Check ''original learning start date'' and ''learning delivery funding and monitoring type'' are complete and correct.')
		  ,('LearnAimRef_30',NULL,'''Learning aim reference'' is wrong: You''ve indicated this learner is on an apprenticeship programme or traineeship (learning aim type 1). This means their ''learning aim reference'' must be ''ZPROG001''. Check ''learning aim reference'' and ''learning aim'' are correct.')
		  ,('FundModel_06',NULL,'''Learning aim'' is wrong: You''ve indicated that this learner is apprenticeship funded so they must be on an apprenticeship aim. Check ''funding model'' and ''learning aim'' are correct.')
		  ,('FworkCode_05',NULL,'''Framework code'' and ''pathway code'' and ''programme type'' combination is wrong: You''ve indicated that the learning aim is part of an apprenticeship framework programme but the framework code and pathway code and programme type isn''t a valid combination for this aim in the LARS database. Check ''learning aim'' and ''framework code'' and ''pathway code'' and ''programme type'' are correct.')
		  ,('LearnDelFAMDateTo_03',NULL,'''Date applies to'' is wrong: The date that the ''funding and monitoring'' applies to must be on or before the actual end date of the learning. Check ''date applies to'' and ''learning actual end date'' are correct.')
		  ,('CompStatus_03',NULL,'''Learning actual end date'' is missing: You''ve indicated that the learner has completed their learning aim but haven''t provided a ''learning actual end date''. Check ''learning actual end date'' and ''completion status'' are complete and correct.')
	      ,('R112',NULL,'''Date applies to'' is wrong: The apprenticeship contract ''date applies to'' (''learning delivery funding and monitoring'' entry for the ''apprenticeship contract type'' ''date applies to'') should be the same as when the learning finishes (''learning actual end date''). Check learning delivery funding and monitoring for type ''ACT'' ''date applies to'' and ''learning actual end date'' are correct.')		 
		  ,('R119','E','The apprenticeship financial record cannot be before the Learning start date when the total negotiated price has been returned')
		 
		  ,('LearnAimRef_88','E','The Learning aim reference is not valid in the LARS database for this Funding model and this Learning start date')
		  ,('LearnAimRef_89','E','The Learning aim reference is not valid in the LARS database for this Funding model for this teaching year')

	DECLARE @SummaryOfChanges_ModifiedRules TABLE ([Rulename]  NVARCHAR(50) NOT NULL, [Action] VARCHAR(100) NOT NULL);

	MERGE INTO [Staging].[ModifiedRules] AS Target
		USING (
				   SELECT [Rulename]
						,[Severity]
						,[Message]
					FROM @ModifiedRules
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
		OUTPUT ISNULL(Deleted.[Rulename],Inserted.[Rulename]),$action INTO @SummaryOfChanges_ModifiedRules([Rulename],[Action])
	    ;

		DECLARE @AddCount_MR INT, @UpdateCount_MR INT, @DeleteCount_MR INT;
		SET @AddCount_MR  = ISNULL((SELECT Count(*) FROM @SummaryOfChanges_ModifiedRules WHERE [Action] = 'Insert' GROUP BY Action),0);
		SET @UpdateCount_MR = ISNULL((SELECT Count(*) FROM @SummaryOfChanges_ModifiedRules WHERE [Action] = 'Update' GROUP BY Action),0);
		SET @DeleteCount_MR = ISNULL((SELECT Count(*) FROM @SummaryOfChanges_ModifiedRules WHERE [Action] = 'Delete' GROUP BY Action),0);

		RAISERROR('		      %s - Added %i - Update %i - Delete %i',10,1,'    Modified Rules', @AddCount_MR, @UpdateCount_MR, @DeleteCount_MR) WITH NOWAIT;
END		
