€
 TFRMMAIN 0тe  TPF0TfrmMainfrmMainLeftэTopыWidthЉHeightщCaptionProduct StructuresColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnCloseQueryFormCloseQueryPixelsPerInch`
TextHeight 	TSplitter	Splitter1Left≈Top Heightё  TBoldTreeViewBoldTreeView1Left»Top Widthм HeightёAlignalClient
BoldHandlehdlTreeRootBoldProperties.PartsControllerExpressionself.OclTypeInterpretAsList	  BoldProperties.NodeDescriptionsNameAssemblyContextTypeNameAssemblyHideNodeWithNoChildrenListController.PartsControllerExpression'PartOf'InterpretAsList ControllerExpression'Parts'InterpretAsList  IconController.Expression1TextController.Expressionname NameSimple_ProductHideNodeWithNoChildrenListController.PartsControllerExpression'PartOf'InterpretAsList  IconController.Expression0TextController.Expressionname NamePartOfHideNodeWithNoChildren	ListController.PartsElementExpressionpartOfControllerExpressionself.OclTypeInterpretAsList	  IconController.Expression2+partOf->size.min(3)TextController.Expression\'Part of '+partOf->size.asString+if partOf->size=1 then ' assembly' else ' assemblies' endif NamePartsHideNodeWithNoChildrenListController.PartsElementExpressionpartsControllerExpressionself.OclTypeInterpretAsList	  IconController.Expression6+parts->size.min(3)TextController.ExpressionFparts->size.asString+if parts->size=1 then ' part' else ' parts' endif  Images
ImageList1IndentSelectedIndexDelta SelectInserted	TabOrder   TPanelPanel1Left Top Width≈HeightёAlignalLeftTabOrder TBevelBevel1LeftTopWidthљHeightЕ  TLabelProductsLeftTopWidth*HeightCaptionProducts  TLabelLabel1LeftTop® WidthLHeightCaptionSimple Products  TLabelLabel2LeftTopWidthHeightCaption;Assemblies (double click to test the Runtime Column Editor)  TLabelLabel3Left<TopWidthHeightCaptionPart of  TLabelLabel4Left<TopWidthvHeightCaptionParts (BackSpace to del)  TLabelLblNavigatorLeftTopРWidthEHeightCaptionDifferent Texts  	TBoldGridgrdProductsLeftTopWidth1HeightЙ AddNewAtEndBoldAutoColumnsBoldShowConstraints
BoldHandlehdlAllProductsBoldProperties.InternalDragBoldProperties.NilElementModeneNoneColumnsColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style  BoldProperties.ExpressionnameFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style Title.CaptionName BoldProperties.ExpressionpriceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style Title.CaptionPrice BoldProperties.Expression	totalCostFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style Title.Caption
Total Cost BoldProperties.Renderer!dmMain.BoldProfitAsStringRendererFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style Title.CaptionProfit BoldProperties.ExpressionDif oclIsTypeOf( Simple_Product ) then 'Simple' else 'Assembly' endifFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style Title.CaptionType  DefaultRowHeightEnableColAdjustTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.HeightхTitleFont.NameMS Sans SerifTitleFont.Style OnEntergrdProductsEnter	ColWidthsQ 0%@   	TBoldGridgrdSimpleProductsLeftTopЄ Width1HeightYAddNewAtEndBoldAutoColumnsBoldShowConstraints
BoldHandlehdlAllSimpleProductsBoldProperties.InternalDragBoldProperties.NilElementModeneNoneColumnsColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style  BoldProperties.ExpressionnameFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style Title.CaptionName BoldProperties.ExpressionpriceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style Title.CaptionPrice BoldProperties.ExpressionproductionCostFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style Title.CaptionProduction Cost  DefaultRowHeightEnableColAdjustTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.HeightхTitleFont.NameMS Sans SerifTitleFont.Style OnEntergrdSimpleProductsEnter	ColWidthsu(R   	TBoldGridgrdAssembliesLeftTop(Width1HeightYAddNewAtEndBoldAutoColumnsBoldShowConstraints
BoldHandlehdlAllAssembliesBoldProperties.InternalDragBoldProperties.NilElementModeneNoneColumnsColor	clBtnFaceCWAdjustcaAllowGrowcaAllowShrinkcaIncludeTitle Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style  BoldProperties.ExpressionnameFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style Title.CaptionName BoldProperties.ExpressionpriceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style Title.CaptionPrice BoldProperties.ExpressionassemblyCostFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style Title.CaptionAssembly Cost BoldProperties.Expressionparts->sizeFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightх	Font.NameMS Sans Serif
Font.Style Title.Caption# Parts  DefaultRowHeightEnableColAdjustTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.HeightхTitleFont.NameMS Sans SerifTitleFont.Style 
OnDblClickgrdAssembliesDblClickOnEntergrdAssembliesEnter	ColWidthsa(U( 
RowHeights   TBoldListBoxlbAssemblyPartsLeft<Top(Width}HeightYHint4Backspace removes the part from the current assembly	AlignmenttaLeftJustify
BoldHandlehdlAssemblyPartsBoldProperties.InternalDragBoldProperties.NilElementModeneNoneBoldRowProperties.ExpressionnameDragModedmAutomatic
ItemHeightParentShowHintShowHint	TabOrder
OnKeyPresslbAssemblyPartsKeyPress  TBoldListBoxlsProductPartOfLeft<TopWidth}HeightЙ 	AlignmenttaLeftJustify
BoldHandlehdlProductPartOfBoldProperties.InternalDragBoldProperties.NilElementModeneNoneBoldRowProperties.ExpressionnameDragModedmAutomatic
ItemHeightTabOrder  TButtonbtnUpdateDatabaseLeftД Top†WidthyHeightActionBoldUpdateDBAction1TabOrder  TBoldNavigator	NvgSharedLeftTop†WidthxHeightTabOrderImageIndices.nbFirst€ImageIndices.nbPrior€ImageIndices.nbNext€ImageIndices.nbLast€ImageIndices.nbInsert€ImageIndices.nbDelete€ImageIndices.nbMoveUp€ImageIndices.nbMoveDown€DeleteQuestionDelete object?UnlinkQuestionUnlink "%1:s" from "%2:s"?RemoveQuestionRemove "%1:s" from the list?  TButtonbtnChangeRootLeftTop†WidthUHeightCaptionChange RootTabOrderOnClickbtnChangeRootClick  TButton
btnShowAllLeft`Top†WidthKHeightCaptionShow allTabOrderOnClickbtnShowAllClick  TButtonButton1LeftД TopЉWidthyHeightActionBoldIBDatabaseAction1TabOrder	  TButtonButton2LeftTopЉWidthUHeightActionBoldActivateSystemAction1TabOrder
   
TImageList
ImageList1LeftlTopBitmap
¶B  IL
     €€€€€€€€€€€€€BM6       6   (   @   @           @                  €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €   ∆∆∆             ∆∆∆ Д   €€€ Д   ∆∆∆   ∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆€ €€Д ДД€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€                                          ∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆€€ €ДД Д€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€         ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ €€€ ДДД €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€                                  €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€                                                                                                                                 €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€  €€ €€€     ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆              €€  €€                          €   €                  €   €                    €€  €€                  €   €      €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€              €€  €€                          €   €                  €   €                    €€  €€                  €   €      €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€              €€  €€                          €   €                  €   €                    €€  €€                  €   €      €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€Д   € €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€                                                                                                                                  Д   Д                                  ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆∆ ∆∆€ €€Д ДД€ €€€ €€€ €€€ €€€ €€€ €€Д   € €€€ €€€                                                                                                                                  Д   Д   €€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €Д   Д   Д   Д   Д   Д   €€ €€€ €€€ €Д   Д   Д   Д   €€ €€€ €€€ €€€ €€€ €€€ €€€             ∆∆∆                         ∆∆∆                         ∆∆∆                     ∆∆∆                 ∆∆∆              €€ €Д   Д   €€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €Д   Д   Д   Д   Д   €€ €€€ €€€ €Д   Д   Д   €€ €€€ €€€ €€€ €€€ €Д   Д   Д                  ∆∆∆                 ∆∆∆                                 ∆∆∆                 ∆∆∆             ∆∆∆                  Д   Д   €€ €€€ €€€ €€€ €Д   Д   Д   Д   €€ €€€ €Д   Д   Д   €€ €Д   Д   Д   €€ €€€ €€€ €Д   Д   Д   Д   €€ €€€ €Д   Д   Д   Д                      ∆∆∆         ∆∆∆                                         ∆∆∆             ∆∆∆         ∆∆∆                     €ДД Д€€ €€€ €€€ €€€ €€€ €€€ €Д   €€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €Д   Д   Д   €€ €€€ €€€ €€€ €€€ €Д   Д   Д   Д                          ∆∆∆                                                     ∆∆∆         ∆∆∆     ∆∆∆                         €€€ €€€ €€€ €€€ Д   €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ Д   €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ Д   €€€ €€€ €€€ €€€                                                                                                                                 €€€ €€€ €€€ Д   €€€ €€€ €€€ €€€ €€€ €€€ €€€ Д   €€€ €€€ €€€ €€€ Д   €€€ €€€ €€€ Д   €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€                                                                                                                                 Д   €€€ €€€ €€€ €€€ Д   €€€ €€€ €€€ Д   €€€ €€€ €€€ €€€ €€€ €€€ Д   €€€ €€€ €€€ Д   €€€ €€€ €€€ €€€ Д   €€€ €€€ Д   €€€ €€€ €€€                               €   €                                                           €   €                             Д   €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ Д   €€€ €€€ €€€ €€€ €€€ €€€ €€€ Д   €€€ €€€ €€€ €€€ €€€ Д   €€€ €€€ €€€ €€€ Д   €€€ €€€                               €   €                                                           €   €                             €€€ €€€ €€Д   Д   Д   Д   Д   € €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€Д   Д   Д   Д   Д     €€€  €€ Д   ∆∆∆ ∆∆∆   Д ∆∆∆ ∆∆∆                               €   €                                                           €   €                             €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€Д   € €€€ €€€ €€€ €€€ €€€ €€Д   € €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€                                                                                                                                 €€€ €€€ €€€ €€Д   € €€€ €€€ €€€ €€€ €€€ €€Д   € €€€ €€€ €€€ €€€ €€€ €€Д   € €€€ €€€ €€€ €€Д   € €€€ €€€ €€€ €€€ €€€ €€€ €€€ €€€                                                                                                                                                                                                                                                                                               €   €                                                           €   €                                                                                                                          €   €                                                            €   €                                                           €   €                                                                                                                          €   €                                                            €   €                                                           €   €                                                                                                                          €   €                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ∆∆∆                                                 ∆∆∆     ∆∆∆         ∆∆∆                                                                                                             ∆∆∆                                                             ∆∆∆         ∆∆∆                                         ∆∆∆         ∆∆∆             ∆∆∆                                                                                                         ∆∆∆                                                         ∆∆∆                 ∆∆∆                                 ∆∆∆             ∆∆∆                 ∆∆∆                                                                                                     ∆∆∆                                                     ∆∆∆                         ∆∆∆                         ∆∆∆                 ∆∆∆                     ∆∆∆                                                                                                 ∆∆∆                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              €   €                           €€  €€                  €   €                   €€  €€                 €   €                                     €   €                                                           €   €                                          €   €                           €€  €€                  €   €                   €€  €€                 €   €                                     €   €                                                           €   €                                          €   €                           €€  €€                  €   €                   €€  €€                 €   €                                     €   €                                                           €   €                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           €   €                                                           €   €                                                                                                                         €   €   €   €   €   €                                             €   €                                                           €   €                                                                                                                         €   €   €   €   €   €                                             €   €                                                           €   €                                                   €   €   €   €   €   €                                          €      €   €   €   €   €   €                                                                                                                                                                     €   €   €   €   €   €                                          €      €   €   €   €   €   €                                                                                                                                                                     €   €   €   €   €   €                                   €      €      €   €   €   €   €   €                                                                                                               ∆∆∆                                                   €   €   €   €   €   €                                   €      €      €   €   €   €   €   €                                                                                                               ∆∆∆                                                   €   €   €   €   €   €                                   €      €      €   €   €   €   €   €                                                                                                               ∆∆∆                                                   €   €   €   €   €   €                                   €      €      €   €   €   €   €   €                                                                                                               ∆∆∆                                                   €   €   €   €   €   €                                   €      €                                                                                                                                                                                                €   €   €   €   €   €                                   €      €   €   €   €   €   €                                                                                                                                                                                                                                    €                                                                                                                                              €   €                                                                                                            €   €   €   €   €   €                                                                                                                          €   €                                                                                                                                                                                                                                                           €   €                                                                                                                                                                                                                                                                                              BM>       >   (   @   @                                €€€ ResultfNamebр#MachineSelffмш!г$1!mote†	жrCreateRelection.egoryColoRoseCattfрc(%Cш#Resul!Selffмжrга.Create†llection√√0&.√√0¬√√√0lect√√0mete√√0Rose€€€€>}зѕЮsaЂЪЕуЯќgectiщ?жOeterьтoseP€€€€Б&ь?ь?QL≤ь?ь?seAcь?ь?Е*ь?ь?/Вqь?ь?tionь?ь?€€ь?ь?ь?€€ь?ь?ь?€€ь?ь?ь?€€ь?ь?ь?€€ь?€€€€€€€€ю?шO€€юьЯтg€€ющѕжs€€юузќy€€ю€€€€€€€€√√0ь?ь?√√0ь?ь?√√0ь?ь?√√0ь?ь?√√0ь?ь?€€€€ь?ь?€€ьь?ь?€€ьь?ь?ррь?ь?ррь?ь?рј€€€€рј€€юрј€€юрј€€юрј€€юрј€€€€рј€€ь?рј€€ь?€€ј?€€ь?€€ј?€€ь?€€€€€€ь?                        TBoldListHandlehdlAllProducts
RootHandledmMain.BoldSystem
ExpressionProduct.allInstancesLeftTopА   TBoldListHandlehdlAllSimpleProducts
RootHandledmMain.BoldSystem
ExpressionSimple_Product.allInstancesLeftTopр   TBoldListHandlehdlProductPartOf
RootHandlehdlAllProducts
ExpressionpartOfLeftШTopА   TBoldListHandlehdlAssemblyParts
RootHandlehdlAllAssemblies
ExpressionpartsLeftШTop`  TBoldListHandlehdlAllAssemblies
RootHandledmMain.BoldSystem
ExpressionAssembly.allInstancesLeftTop`  TBoldReferenceHandlehdlTreeRootStaticSystemHandledmMain.BoldSystemLefttTop8  TActionListActionList1LeftИTopƒ  TBoldActivateSystemActionBoldActivateSystemAction1CategoryBold ActionsCaptionOpen systemBoldSystemHandledmMain.BoldSystemOnSystemOpened%BoldActivateSystemAction1SystemOpenedOpenCaptionOpen systemCloseCaptionClose systemSaveQuestion/There are dirty objects. Save them before exit?SaveOnClosesaAsk  TBoldUpdateDBActionBoldUpdateDBAction1CategoryBold ActionsCaption	Update DBBoldSystemHandledmMain.BoldSystem  TBoldIBDatabaseActionBoldIBDatabaseAction1CategoryBold ActionsCaption	Create DBBoldSystemHandledmMain.BoldSystemUsernameSYSDBAPassword	masterkey    