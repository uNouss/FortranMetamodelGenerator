Class {
	#name : #FamixFortranGenerator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'subroutine',
		'programFile',
		'variable',
		'parameter',
		'externalProcedure',
		'tProgramUnit',
		'tWithProgramUnits',
		'blockData',
		'function',
		'program',
		'module',
		'invocation',
		'srcSpan',
		'indexedFileAnchor',
		'unresolvedBehavioral'
	],
	#category : #'Famix-Fortran-Generator'
}

{ #category : #generating }
FamixFortranGenerator class >> generate [ 
	<script>
	^ super generate
]

{ #category : #accessing }
FamixFortranGenerator class >> packageName [

	^ #'Famix-Fortran-Entities'
]

{ #category : #accessing }
FamixFortranGenerator class >> prefix [

	^ #'FamixFortran'
]

{ #category : #accessing }
FamixFortranGenerator class >> submetamodels [
	^ {FamixGenerator}
]

{ #category : #comments }
FamixFortranGenerator >> accessComment [

	self flag: #TODO. "complete comment"
	^ 'Access'
]

{ #category : #comments }
FamixFortranGenerator >> commentBlockData [
	self flag: #TODO. "complete comment"
	^ 'BlockData'
]

{ #category : #comments }
FamixFortranGenerator >> commentComment [
	self flag: #TODO. "complete comment"
	^ 'Comment'
]

{ #category : #comments }
FamixFortranGenerator >> commentExternalProcedure [
	self flag: #TODO. "complete comment"
	^ 'ExternalProcedure'
]

{ #category : #comments }
FamixFortranGenerator >> commentFunction [

	^ 'The **FUNCTION** identifies a program unit as a function subprogram.

`[type] FUNCTION funName ([ar[, ar]])`

 The data type of the function type designates the data type of the value returned by the external function. If it is omitted, then the data type returned is determined by the first letter of the symbolic name fname. If the external function returns a `CHARACTER` value, then the length must be specified or given as `CHARACTER*(*)`. In this second case, the length will be as specified in the invoking program unit.

The name *fname* may be used within the external function as a variable but it must be assigned a value before the end of the program unit. The last value assigned to the name fname is the value returned to the invoking program unit.

A function is invoked by using its name fname followed by parentheses and an optional list of arguments called actual arguments which correspond to the dummy arguments in the FUNCTION statement. There may be zero or more dummy arguments of any data type which are declared (if necessary) in the body of the external function. However, the parentheses must be present even if there are no arguments. 
'
]

{ #category : #comments }
FamixFortranGenerator >> commentModule [
	self flag: #TODO. "complete comment"
	^ 'Module'
]

{ #category : #comments }
FamixFortranGenerator >> commentParameter [
	self flag: #TODO. "complete comment"
	^ 'Parameter'
]

{ #category : #comments }
FamixFortranGenerator >> commentProgram [
	self flag: #TODO. "complete comment"
	^ 'PROGRAM'
]

{ #category : #comments }
FamixFortranGenerator >> commentProgramFile [
	self flag: #TODO. "complete comment"
	^ 'ProgramFile'
]

{ #category : #comments }
FamixFortranGenerator >> commentSubroutine [
	self flag: #TODO. "complete comment"
	^ 'Subroutine'
]

{ #category : #comments }
FamixFortranGenerator >> commentVariable [
	self flag: #TODO. "complete comment"
	^ 'Variable'
]

{ #category : #definition }
FamixFortranGenerator >> defineClasses [

	super defineClasses.

	"access := builder newClassNamed: #Access comment: self accessComment."	

	blockData := builder
		             newClassNamed: #BlockData
		             comment: self commentBlockData.
	blockData withTesting.

	comment withTesting.

	externalProcedure := builder
		                     newClassNamed: #ExternalProcedure
		                     comment: self commentExternalProcedure.
	externalProcedure withTesting.

	function := builder
		            newClassNamed: #Function
		            comment: self commentFunction.
	function withTesting.

	invocation := builder
		              newClassNamed: #Invocation
		              comment: self invocationComment.

	indexedFileAnchor := builder
		                     newClassNamed: #IndexedFileAnchor
		                     comment: self indexedFileAnchorComment.

	module := builder newClassNamed: #Module comment: self commentModule.
	module withTesting.

	program := builder
		           newClassNamed: #Program
		           comment: self commentProgram.
	program withTesting.

	programFile := builder
		               newClassNamed: #ProgramFile
		               comment: self commentProgramFile.

	subroutine := builder
		              newClassNamed: #Subroutine
		              comment: self commentSubroutine.
	subroutine withTesting.

	unresolvedBehavioral := builder
		                        newClassNamed: #UnresolvedBehavioral
		                        comment: 'UnresolvedBehavioral'.
	unresolvedBehavioral withTesting.

	variable := builder
		            newClassNamed: #Variable
		            comment: self commentVariable.
	variable withTesting.

	parameter := builder
		             newClassNamed: #Parameter
		             comment: self commentParameter.
	parameter withTesting.

]

{ #category : #definition }
FamixFortranGenerator >> defineHierarchy [

	super defineHierarchy.

	"access --|> #TAssociation.
	access --|> #TAccess"

	blockData --|> tProgramUnit.

	externalProcedure --|> tProgramUnit.
	externalProcedure --|> #TInvocable.
	externalProcedure --|> #THasSignature.
	externalProcedure --|> #TWithParameters.
	externalProcedure --|> #TWithLocalVariables.

	function --|> externalProcedure.
	function --|> #TTypedEntity.
	"function --|> #TFunction."

	indexedFileAnchor --|> sourceAnchor.
	indexedFileAnchor --|> #TFileNavigation.

	invocation --|> #TInvocation.
	invocation --|> #THasSignature.

	module --|> tProgramUnit.

	parameter --|> #TParameter.

	program --|> tProgramUnit.

	programFile --|> #TNamedEntity.
	programFile --|> #TSourceEntity.
	programFile --|> #TEntityMetaLevelDependency.
	programFile --|> tWithProgramUnits.

	subroutine --|> externalProcedure.

	tProgramUnit --|> #TWithStatements.
	tProgramUnit --|> #TSourceEntity.
	tProgramUnit --|> #TWithComments.
	tProgramUnit --|> #TEntityMetaLevelDependency.
	tProgramUnit --|> #TNamedEntity.
	tProgramUnit --|> tWithProgramUnits.

	unresolvedBehavioral --|> externalProcedure.
	
	variable --|> #TLocalVariable.

]

{ #category : #definition }
FamixFortranGenerator >> defineProperties [

	super defineProperties.

	(programFile property: #version type: #String) comment:
		'Fortran version of the file'.

	(programFile property: #filename type: #String) comment:
		'Fortran name of the file'.

	((tWithProgramUnits property: #programUnits) comment:
		 'ProgramUnits contained in the programFile')
	<>-* ((tProgramUnit property: #container) comment:
			 'Entity containing this programUnit').

	(function property: #isIntrinsic type: #Boolean defaultValue: false) 
		comment: 'Function is intrinsic ?'.

	(function property: #isEsope type: #Boolean defaultValue: false) 
		comment: 'It is esope Function ?'.

	(comment property: #isEsope type: #Boolean defaultValue: false) 
		comment: 'It is esope comment ?'.
		
	(variable property: #isEsope type: #Boolean defaultValue: false) 
		comment: 'It is esope variable ?'.
		

]

{ #category : #definition }
FamixFortranGenerator >> defineTraits [

	super defineTraits.

	tWithProgramUnits := builder
		                     newTraitNamed: #TWithProgramUnits
		                     comment:
		                     'I allow an entity to contain ProgramUnits'.
	tProgramUnit := builder
		                newTraitNamed: #TProgramUnit
		                comment: 'I represent a ProgramUnit in Fortran.
								I have a container which is a TWithProgramUnits.'.
]

{ #category : #comments }
FamixFortranGenerator >> indexedFileAnchorComment [

	self flag: #TODO. "complete comment"
	^ 'SrcSpan'
]

{ #category : #comments }
FamixFortranGenerator >> invocationComment [

	self flag: #TODO. "complete comment"
	^ 'Invocation'
]

{ #category : #definition }
FamixFortranGenerator >> newBuilder [
	^ super newBuilder
		withImportingContext;
		yourself
]

{ #category : #comments }
FamixFortranGenerator >> sourceAnchorComment [

	self flag: #TODO. "complete comment"
	^ 'sourceAnchor'
]
