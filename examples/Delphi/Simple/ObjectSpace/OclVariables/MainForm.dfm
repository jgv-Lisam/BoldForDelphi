�
 TFORM1 0i"  TPF0TForm1Form1LeftTopWidth�HeightqCaptionOcl Variable ExampleColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderPositionpoScreenCenterOnCloseQueryFormCloseQueryOnCreate
FormCreatePixelsPerInch`
TextHeight 	TBoldGrid	BoldGrid1LeftTopWidthHeight� AddNewAtEndBoldAutoColumnsBoldShowConstraints
BoldHandle
blhProductBoldProperties.InternalDragBoldProperties.NilElementModeneNoneColumnsColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style  BoldProperties.ExpressionprodNameFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style Title.CaptionProduct Name BoldProperties.Expression	net_PriceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style Title.Caption	Net Price BoldProperties.Expression*net_Price + (net_Price * global_VAT / 100)BoldProperties.VariablesBoldOclVariablesFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style Title.CaptionRetail Price  DefaultRowHeightEnableColAdjustTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 	ColWidths� >@   TButtonbtnSaveLeft� Top� WidthKHeightCaptionSaveTabOrderOnClickbtnSaveClick  	TGroupBoxgboGlobalSettingsLeftTop� WidthHeight@CaptionGlobal SettingsTabOrder TLabellblVATLeftTop WidthHeightCaptionVAT:  TLabel
lblPercentLeftpTop WidthHeightCaption%  TLabelLabel1Left� TopWidthmHeight'Caption?Change this value and see the value 'Retail Price' recalculate.Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.Style ParentColor
ParentFontWordWrap	  	TBoldEditbtxtVATLeft7TopWidth2Height
BoldHandlebehVATReadOnlyFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 	AlignmenttaLeftJustifyButtonStylebbsNone	MaxLength TabOrder    TBoldNavigatorbnavProductLeftTop� Width2Height
BoldHandle
blhProductTabOrderVisibleButtonsnbInsertnbDelete ImageIndices.nbFirst�ImageIndices.nbPrior�ImageIndices.nbNext�ImageIndices.nbLast�ImageIndices.nbInsert�ImageIndices.nbDelete�ImageIndices.nbMoveUp�ImageIndices.nbMoveDown�DeleteQuestionDelete object?UnlinkQuestionUnlink "%1:s" from "%2:s"?RemoveQuestionRemove "%1:s" from the list?  TButtonButton1LeftTop8WidtheHeightActionBoldActivateSystemAction1TabOrder  TButtonButton2LeftxTop8WidtheHeightActionBoldIBDatabaseAction1TabOrder  TBoldListHandle
blhProduct
RootHandleBoldSystemHandle1
ExpressionProduct.allInstancesLeft� TopH  TBoldSystemHandleBoldSystemHandle1	IsDefaultSystemTypeInfoHandleBoldSystemTypeInfoHandle1ActivePersistenceHandleBoldPersistenceHandleDB1Left�Top4  TBoldSystemTypeInfoHandleBoldSystemTypeInfoHandle1	BoldModel
BoldModel1Left�Topd  
TBoldModel
BoldModel1UMLModelModeummNoneBoldify.EnforceDefaultUMLCase$Boldify.DefaultNavigableMultiplicity0..1'Boldify.DefaultNonNavigableMultiplicity0..*Left�TopModel
VERSION 19(Model	"OclVariableClasses"	"BusinessClassesRoot"	""	""�	"_Boldify.boldified=True,_Boldify.RootClass=BusinessClassesRoot,_BoldInternal.flattened=True,_BoldInternal.ModelErrors=,Bold.DelphiName=<Name>,Bold.UnitName=<Name>,Bold.RootClass=BusinessClassesRoot"		(Classes		(Class			"BusinessClassesRoot"			"<NONE>"			TRUE			FALSE			""			"":			"persistence=Persistent,Bold.TableName=<Prefix>_OBJECT"			(Attributes			)			(Methods			)		)		(Class			"GlobalSettings"			"BusinessClassesRoot"			TRUE			FALSE			""			""			"persistence=Persistent"			(Attributes				(Attribute
					"vat"					"Float"
					FALSE					""					""					2					""					"persistence=Persistent"				)			)			(Methods			)		)		(Class			"Product"			"BusinessClassesRoot"			TRUE			FALSE			""			""			"persistence=Persistent"			(Attributes				(Attribute					"prodName"					"String"
					FALSE					""					""					2					"",					"persistence=Persistent,Bold.Length=50"				)				(Attribute					"net_Price"					"Currency"
					FALSE					""					""					2					""					"persistence=Persistent"				)			)			(Methods			)		)	)	(Associations	))   TBoldExpressionHandlebehVAT
RootHandleBoldSystemHandle1
Expression&GlobalSettings.allInstances->first.vatLeft�Top�   TBoldOclVariablesBoldOclVariables	Variables
BoldHandlebehVATVariableName
global_VATUseListElement  Left�Top�   TActionListActionList1Left�Top( TBoldActivateSystemActionBoldActivateSystemAction1CategoryBold ActionsCaptionOpen systemBoldSystemHandleBoldSystemHandle1OnSystemOpened#BoldSystemActivator1SystemActivatedOpenCaptionOpen systemCloseCaptionClose systemSaveQuestion/There are dirty objects. Save them before exit?SaveOnClosesaAsk  TBoldIBDatabaseActionBoldIBDatabaseAction1CategoryBold ActionsCaption	Create DBBoldSystemHandleBoldSystemHandle1UsernameSYSDBAPassword	masterkey   TBoldPersistenceHandleDBBoldPersistenceHandleDB1	BoldModel
BoldModel1ClockLogGranularity0:0:0.0DatabaseAdapterBoldDatabaseAdapterIB1Left@Top�   TBoldDatabaseAdapterIBBoldDatabaseAdapterIB1#SQLDatabaseConfig.ColumnTypeForDate	TIMESTAMP#SQLDatabaseConfig.ColumnTypeForTime	TIMESTAMP'SQLDatabaseConfig.ColumnTypeForDateTime	TIMESTAMP#SQLDatabaseConfig.ColumnTypeForBlobBLOB$SQLDatabaseConfig.ColumnTypeForFloatDOUBLE PRECISION'SQLDatabaseConfig.ColumnTypeForCurrencyDOUBLE PRECISION%SQLDatabaseConfig.ColumnTypeForStringVARCHAR(%d)&SQLDatabaseConfig.ColumnTypeForIntegerINTEGER'SQLDatabaseConfig.ColumnTypeForSmallIntSMALLINT$SQLDatabaseConfig.DropColumnTemplate)ALTER TABLE <TableName> DROP <ColumnName>#SQLDatabaseConfig.DropTableTemplateDROP TABLE <TableName>#SQLDatabaseConfig.DropIndexTemplateDROP INDEX <IndexName>'SQLDatabaseConfig.MaxDbIdentifierLength$SQLDatabaseConfig.MaxIndexNameLengthSQLDatabaseConfig.SQLforNotNullNOT NULL-SQLDatabaseConfig.QuoteNonStringDefaultValues2SQLDatabaseConfig.SupportsConstraintsInCreateTable	-SQLDatabaseConfig.SupportsStringDefaultValues	"SQLDatabaseConfig.DBGenerationModedbgQuery'SQLDatabaseConfig.ReservedWords.StringsACTIVE, ADD, ALL, AFTER, ALTERAND, ANY, AS, ASC, ASCENDING,!AT, AUTO, AUTOINC, AVG, BASE_NAME&BEFORE, BEGIN, BETWEEN, BLOB, BOOLEAN,"BOTH, BY, BYTES, CACHE, CAST, CHAR.CHARACTER, CHECK, CHECK_POINT_LENGTH, COLLATE,#COLUMN, COMMIT, COMMITTED, COMPUTED<CONDITIONAL, CONSTRAINT, CONTAINING, COUNT, CREATE, CSTRING,$CURRENT, CURSOR, DATABASE, DATE, DAY&DEBUG, DEC, DECIMAL, DECLARE, DEFAULT,&DELETE, DESC, DESCENDING, DISTINCT, DO DOMAIN, DOUBLE, DROP, ELSE, END,'ENTRY_POINT, ESCAPE, EXCEPTION, EXECUTE.EXISTS, EXIT, EXTERNAL, EXTRACT, FILE, FILTER,)FLOAT, FOR, FOREIGN, FROM, FULL, FUNCTION"GDSCODE, GENERATOR, GEN_ID, GRANT,%GROUP, GROUP_COMMIT_WAIT_TIME, HAVING*HOUR, IF, IN, INT, INACTIVE, INDEX, INNER,!INPUT_TYPE, INSERT, INTEGER, INTO'IS, ISOLATION, JOIN, KEY, LONG, LENGTH,$LOGFILE, LOWER, LEADING, LEFT, LEVEL4LIKE, LOG_BUFFER_SIZE, MANUAL, MAX, MAXIMUM_SEGMENT,(MERGE, MESSAGE, MIN, MINUTE, MODULE_NAME'MONEY, MONTH, NAMES, NATIONAL, NATURAL,%NCHAR, NO, NOT, NULL, NUM_LOG_BUFFERSNUMERIC, OF, ON, ONLY, OPTION,'OR, ORDER, OUTER, OUTPUT_TYPE, OVERFLOW,PAGE_SIZE, PAGE, PAGES, PARAMETER, PASSWORD,%PLAN, POSITION, POST_EVENT, PRECISIONFPROCEDURE, PROTECTED, PRIMARY, PRIVILEGES, RAW_PARTITIONS, RDB$DB_KEY,&READ, REAL, RECORD_VERSION, REFERENCES=RESERV, RESERVING, RETAIN, RETURNING_VALUES, RETURNS, REVOKE,&RIGHT, ROLE, ROLLBACK, SECOND, SEGMENT.SELECT, SET, SHARED, SHADOW, SCHEMA, SINGULAR,$SIZE, SMALLINT, SNAPSHOT, SOME, SORT1SQLCODE, STABILITY, STARTING, STARTS, STATISTICS,(SUB_TYPE, SUBSTRING, SUM, SUSPEND, TABLE6THEN, TIME, TIMESTAMP, TIMEZONE_HOUR, TIMEZONE_MINUTE,(TO, TRAILING, TRANSACTION, TRIGGER, TRIM*UNCOMMITTED, UNION, UNIQUE, UPDATE, UPPER,&USER, VALUE, VALUES, VARCHAR, VARIABLE!VARYING, VIEW, WAIT, WHEN, WHERE,WHILE, WITH, WORK, WRITE, YEAR )SQLDatabaseConfig.StoreEmptyStringsAsNULL#SQLDatabaseConfig.SystemTablePrefixBOLDDataBaseIBDatabase1DatabaseEnginedbeInterbaseSQLDialect3Left@Top�   TIBDatabaseIBDatabase1Params.Stringsuser_name=sysdbapassword=masterkey LoginPrompt	IdleTimer 
SQLDialect
TraceFlags Left@Top   