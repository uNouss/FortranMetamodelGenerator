Class {
	#name : #FASTFortranGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'fortranAssignementExpression',
		'expression',
		'tWithAssigneable',
		'tAssigneable',
		'tFortranExpression',
		'tWithFortranExpression'
	],
	#category : #'FAST-Fortran-Generator'
}

{ #category : #generation }
FASTFortranGenerator class >> generate [

	<script>
	^ super generate
]

{ #category : #accessing }
FASTFortranGenerator class >> packageName [

	^ 'FAST-Fortran-Model'
]

{ #category : #accessing }
FASTFortranGenerator class >> prefix [
	^ #FASTFortran
]

{ #category : #accessing }
FASTFortranGenerator class >> submetamodels [
	^ { FASTMetamodelGenerator }
]

{ #category : #definition }
FASTFortranGenerator >> defineClasses [

	| entity |
	super defineClasses.
	fortranAssignementExpression := builder newClassNamed: #AssignmentExpression comment: ''.

	"	self defineClassesBinariesOps.
	self defineClassesBlocks.
	self defineClassesExpressions.
	self defineClassesStatements."


	"From FAST"
	entity  := self remoteEntity: #Entity withPrefix: #FAST.
	expression := self remoteEntity: #Expression withPrefix: #FAST
]

{ #category : #'private - definition' }
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

{ #category : #'private - definition' }
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

{ #category : #'private - definition' }
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

{ #category : #'private - definition' }
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

{ #category : #definition }
FASTFortranGenerator >> defineHierarchy [

	super defineHierarchy.
	fortranAssignementExpression --|> expression.
	fortranAssignementExpression --|> tWithAssigneable.
]

{ #category : #definition }
FASTFortranGenerator >> defineProperties [
	super defineProperties.

]

{ #category : #definition }
FASTFortranGenerator >> defineRelations [

	super defineRelations.

	((fortranAssignementExpression property: #expression) comment:
		 'Expression that is being assigned upon declaration to the var')
	<>-
		((expression property: #fortranAssignementExpressionOwner) comment:
			 'The fortranAssignementExpression owner (if possible)').

	((tWithAssigneable property: #variable) comment: 'My variable')
	<>-
		((tAssigneable property: #fortranVariableAssignementOwner) comment:
			 'The owner of the modifier').
	
((tWithFortranExpression property: #variable) comment: 'My variable')
	<>- ((tFortranExpression property: #fortranVariableAssignementOwner) comment:
			 'The owner of the modifier').
]

{ #category : #definition }
FASTFortranGenerator >> defineTraits [

	super defineTraits.

	tAssigneable := builder
		                newTraitNamed: #TAssigneable
		                comment: 'self commentForJavaTAssigneable'.
	tWithAssigneable := builder
		                    newTraitNamed: #TWithAssigneable
		                    comment: 'I have an assigneable'.

	tFortranExpression := builder
		                newTraitNamed: #TFortranExpression
		                comment: 'self commentForFortranTFortranExpression'.
	tWithFortranExpression := builder
		                    newTraitNamed: #TWithFortranExpression
		                    comment: 'I have an FortranExpression'
]
