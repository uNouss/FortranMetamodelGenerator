Class {
	#name : #FASTFortranGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'addition',
		'subtraction',
		'multiplication',
		'division',
		'exponentiation',
		'concatenation',
		'gt',
		'gte',
		'lt',
		'lte',
		'eq',
		'ne',
		'or',
		'xOr',
		'and',
		'equivalent',
		'notEquivalent',
		'binCustom',
		'statement',
		'stDeclaration',
		'stStructure',
		'stIntent',
		'stOptional',
		'stPublic',
		'stPrivate',
		'stProtected',
		'stSave',
		'stDimension',
		'stAllocatable',
		'stAsynchronous',
		'stPointer',
		'stTarget',
		'stValue',
		'stVolatile',
		'stData',
		'stAutomatic',
		'stStatic',
		'stNamelist',
		'stParameter',
		'stExternal',
		'stIntrinsic',
		'stCommon',
		'stEquivalence',
		'stFormat',
		'stImplicit',
		'stEntry',
		'stInclude',
		'stDo',
		'stDoWhile',
		'stEnddo',
		'stCycle',
		'stExit',
		'stIfLogical',
		'stIfArithmetic',
		'stSelectCase',
		'stCase',
		'stEndcase',
		'stFunction',
		'stExpressionAssign',
		'stPointerAssign',
		'stLabelAssign',
		'stGotoUnconditional',
		'stGotoAssigned',
		'stGotoComputed',
		'stCall',
		'stReturn',
		'stContinue',
		'stStop',
		'stPause',
		'stRead',
		'stRead2',
		'stWrite',
		'stPrint',
		'build',
		'stTypePrint',
		'stOpen',
		'stClose',
		'stFlush',
		'stInquire',
		'stRewind',
		'stRewind2',
		'stBackspace',
		'stBackspace2',
		'stEndfile',
		'stEndfile2',
		'stAllocate',
		'stNullify',
		'stDeallocate',
		'stWhere',
		'stWhereConstruct',
		'stElsewhere',
		'stEndWhere',
		'stUse',
		'stModuleProcedure',
		'stProcedure',
		'stType',
		'stEndType',
		'stSequence',
		'stForall',
		'stForallStatement',
		'stEndForall',
		'stImport',
		'stEnum',
		'stEnumerator',
		'stEndEnum',
		'block',
		'blStatement',
		'blForall',
		'blIf',
		'blCase',
		'blDo',
		'blDoWhile',
		'blAssociate',
		'blInterface',
		'expression',
		'expValue',
		'expBinary',
		'expUnary',
		'expSubscript',
		'expDataRef',
		'expFunctionCall',
		'expImpliedDo',
		'expInitialisation',
		'expReturnSpec'
	],
	#category : #'Famix-Fortran-Generator'
}

{ #category : #definition }
FASTFortranGenerator >> defineClassesBinariesOps [
	addition := builder newClassNamed: #Addition.
	subtraction := builder newClassNamed: #Subtraction.
	multiplication := builder newClassNamed: #Multiplication.
	division := builder newClassNamed: #Division.
	exponentiation := builder newClassNamed: #Exponentiation.
	concatenation := builder newClassNamed: #Concatenation.
	gt := builder newClassNamed: #GT.
	gte := builder newClassNamed: #GTE.
	lt := builder newClassNamed: #LT.
	lte := builder newClassNamed: #LTE.
	eq := builder newClassNamed: #EQ.
	ne := builder newClassNamed: #NE.
	or := builder newClassNamed: #Or.
	xOr := builder newClassNamed: #XOr.
	and := builder newClassNamed: #And.
	equivalent := builder newClassNamed: #Equivalent.
	notEquivalent := builder newClassNamed: #NotEquivalent.
	binCustom := builder newClassNamed: #BinCustom.

]

{ #category : #definition }
FASTFortranGenerator >> defineClassesBlocks [
	block := builder newClassNamed: #Block.
	blStatement := builder newClassNamed: #BlStatement.
	blForall := builder newClassNamed: #BlForall.
	blIf := builder newClassNamed: #BlIf.
	blCase := builder newClassNamed: #BlCase.
	blDo := builder newClassNamed: #BlDo.
	blDoWhile := builder newClassNamed: #BlDoWhile.
	blAssociate := builder newClassNamed: #BlAssociate.
	blInterface := builder newClassNamed: #BlInterface
]

{ #category : #definition }
FASTFortranGenerator >> defineClassesExpressions [
	expression := builder newClassNamed: #Expression.
	expValue := builder newClassNamed: #ExpValue.
	expBinary := builder newClassNamed: #ExpBinary.
	expUnary := builder newClassNamed: #ExpUnary.
	expSubscript := builder newClassNamed: #ExpSubscript.
	expDataRef := builder newClassNamed: #ExpDataRef.
	expFunctionCall := builder newClassNamed: #ExpFunctionCall.
	expImpliedDo := builder newClassNamed: #ExpImpliedDo.
	expInitialisation := builder newClassNamed: #ExpInitialisation.
	expReturnSpec := builder newClassNamed: #ExpReturnSpec.

]

{ #category : #definition }
FASTFortranGenerator >> defineClassesStatements [
	statement := builder newClassNamed: #Statement.
	stDeclaration := builder newClassNamed: #StDeclaration.
	stStructure := builder newClassNamed: #StStructure.
	stIntent := builder newClassNamed: #StIntent.
	stOptional := builder newClassNamed: #StOptional.
	stPublic := builder newClassNamed: #StPublic.
	stPrivate := builder newClassNamed: #StPrivate.
	stProtected := builder newClassNamed: #StProtected.
	stSave := builder newClassNamed: #StSave.
	stDimension := builder newClassNamed: #StDimension.
	stAllocatable := builder newClassNamed: #StAllocatable.
	stAsynchronous := builder newClassNamed: #StAsynchronous.
	stPointer := builder newClassNamed: #StPointer.
	stTarget := builder newClassNamed: #StTarget.
	stValue := builder newClassNamed: #StValue.
	stVolatile := builder newClassNamed: #StVolatile.
	stData := builder newClassNamed: #StData.
	stAutomatic := builder newClassNamed: #StAutomatic.
	stStatic := builder newClassNamed: #StStatic.
	stNamelist := builder newClassNamed: #StNamelist.
	stParameter := builder newClassNamed: #StParameter.
	stExternal := builder newClassNamed: #StExternal.
	stIntrinsic := builder newClassNamed: #StIntrinsic.
	stCommon := builder newClassNamed: #StCommon.
	stEquivalence := builder newClassNamed: #StEquivalence.
	stFormat := builder newClassNamed: #StFormat.
	stImplicit := builder newClassNamed: #StImplicit.
	stEntry := builder newClassNamed: #StEntry.
	stInclude := builder newClassNamed: #StInclude.
	stDo := builder newClassNamed: #StDo.
	stDoWhile := builder newClassNamed: #StDoWhile.
	stEnddo := builder newClassNamed: #StEnddo.
	stCycle := builder newClassNamed: #StCycle.
	stExit := builder newClassNamed: #StExit.
	stIfLogical := builder newClassNamed: #StIfLogical.
	stIfArithmetic := builder newClassNamed: #StIfArithmetic.
	stSelectCase := builder newClassNamed: #StSelectCase.
	stCase := builder newClassNamed: #StCase.
	stEndcase := builder newClassNamed: #StEndcase.
	stFunction := builder newClassNamed: #StFunction.
	stExpressionAssign := builder newClassNamed: #StExpressionAssign.
	stPointerAssign := builder newClassNamed: #StPointerAssign.
	stLabelAssign := builder newClassNamed: #StLabelAssign.
	stGotoUnconditional := builder newClassNamed: #StGotoUnconditional.
	stGotoAssigned := builder newClassNamed: #StGotoAssigned.
	stGotoComputed := builder newClassNamed: #StGotoComputed.
	stCall := builder newClassNamed: #StCall.
	stReturn := builder newClassNamed: #StReturn.
	stContinue := builder newClassNamed: #StContinue.
	stStop := builder newClassNamed: #StStop.
	stPause := builder newClassNamed: #StPause.
	stRead := builder newClassNamed: #StRead.
	stRead2 := builder newClassNamed: #StRead2.
	stWrite := builder newClassNamed: #StWrite.
	stPrint := builder newClassNamed: #StPrint.
	stTypePrint := build newClassNamed: #StTypePrint.
	stOpen := build newClassNamed: #StOpen.
	stClose := build newClassNamed: #StClose.
	stFlush := build newClassNamed: #StFlush.
	stInquire := build newClassNamed: #StInquire.
	stRewind := build newClassNamed: #StRewind.
	stRewind2 := build newClassNamed: #StRewind2.
	stBackspace := build newClassNamed: #StBackspace.
	stBackspace2 := build newClassNamed: #StBackspace2.
	stEndfile := build newClassNamed: #StEndfile.
	stEndfile2 := build newClassNamed: #StEndfile2.
	stAllocate := build newClassNamed: #StAllocate.
	stNullify := build newClassNamed: #StNullify.
	stDeallocate := build newClassNamed: #StDeallocate.
	stWhere := build newClassNamed: #StWhere.
	stWhereConstruct := build newClassNamed: #StWhereConstruct.
	stElsewhere := build newClassNamed: #StElsewhere.
	stEndWhere := build newClassNamed: #StEndWhere.
	stUse := build newClassNamed: #StUse.
	stModuleProcedure := build newClassNamed: #StModuleProcedure.
	stProcedure := build newClassNamed: #StProcedure.
	stType := build newClassNamed: #StType.
	stEndType := build newClassNamed: #StEndType.
	stSequence := build newClassNamed: #StSequence.
	stForall := build newClassNamed: #StForall.
	stForallStatement := build newClassNamed: #StForallStatement.
	stEndForall := build newClassNamed: #StEndForall.
	stImport := build newClassNamed: #StImport.
	stEnum := build newClassNamed: #StEnum.
	stEnumerator := build newClassNamed: #StEnumerator.
	stEndEnum := build newClassNamed: #StEndEnum.
	
]
