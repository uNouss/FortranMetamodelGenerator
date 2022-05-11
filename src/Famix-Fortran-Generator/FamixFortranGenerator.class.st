Class {
	#name : #FamixFortranGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'subroutine',
		'programFile',
		'variable',
		'parameter',
		'externalProcedure',
		'tProgramUnit',
		'tWithProgramUnits',
		'comment',
		'blockData',
		'function',
		'program',
		'module'
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
	self flag: #TODO. "complete comment"
	^ 'Function'
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

	subroutine := builder newClassNamed: #Subroutine comment: self commentSubroutine.
	programFile := builder newClassNamed: #ProgramFile comment: self commentProgramFile.
	program := builder newClassNamed: #Program comment: self commentProgram.
	module := builder newClassNamed: #Module comment: self commentModule.
	function := builder newClassNamed: #Function comment: self commentFunction.
	blockData := builder newClassNamed: #BlockData comment: self commentBlockData.
	comment := builder newClassNamed: #Comment comment: self commentComment.
	externalProcedure := builder newClassNamed: #ExternalProcedure comment: self commentExternalProcedure.

	variable := builder newClassNamed: #Variable comment: self commentVariable.
	parameter := builder newClassNamed: #Parameter comment: self commentParameter.

]

{ #category : #definition }
FamixFortranGenerator >> defineHierarchy [
	super defineHierarchy.

	tProgramUnit --|> #TWithStatements.
	tProgramUnit --|> #TWithComments.
	tProgramUnit --|> #TNamedEntity.
	tProgramUnit --|> tWithProgramUnits.
	
	programFile --|> tWithProgramUnits.

	externalProcedure --|> tProgramUnit.
	externalProcedure --|> #TInvocable.
	externalProcedure --|> #THasSignature.
	externalProcedure --|> #TWithParameters.
	externalProcedure --|> #TWithLocalVariables.
	
	subroutine --|> externalProcedure.
	
	function --|> externalProcedure.
	function --|> #TTypedEntity.
	"function --|> #TFunction."
	
	blockData --|> tProgramUnit.
	
	program --|> tProgramUnit.
	module --|> tProgramUnit.

	parameter --|> #TParameter.
	
	variable --|> #TLocalVariable.
	
	comment --|> #TComment.
	comment --|> #TSourceEntity.
]

{ #category : #definition }
FamixFortranGenerator >> defineProperties [ 
	super defineProperties.

	(programFile property: #version type: #String)
		comment: 'Fortran version of the file'.
	
	(programFile property: #filename type: #String)
		comment: 'Fortran name of the file'.
	
	((tWithProgramUnits property: #programUnits)
		comment: 'ProgramUnits contained in the programFile')
		<>-*
	((tProgramUnit property: #container)
		comment: 'Entity containing this programUnit')
	
	
]

{ #category : #definition }
FamixFortranGenerator >> defineTraits [

	super defineTraits.
	
	tWithProgramUnits := builder 
								newTraitNamed: #TWithProgramUnits
								comment: 'I allow an entity to contain ProgramUnits'.
	tProgramUnit := builder
								newTraitNamed: #TProgramUnit
								comment: 'I represent a ProgramUnit in Fortran.
								I have a container which is a TWithProgramUnits.' 
]

{ #category : #definition }
FamixFortranGenerator >> newBuilder [
	^ super newBuilder
		withImportingContext;
		yourself
]
