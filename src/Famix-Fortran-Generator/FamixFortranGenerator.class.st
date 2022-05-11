Class {
	#name : #FamixFortranGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'subroutine',
		'programFile',
		'puMain',
		'puModule',
		'puFunction',
		'puBlockData',
		'puComment',
		'variable',
		'parameter',
		'externalProcedure',
		'tProgramUnit',
		'tWithProgramUnits'
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
FamixFortranGenerator >> commentExternalProcedure [
	self flag: #TODO. "complete comment"
	^ 'ExternalProcedure'
]

{ #category : #comments }
FamixFortranGenerator >> commentParameter [
	self flag: #TODO. "complete comment"
	^ 'Parameter'
]

{ #category : #comments }
FamixFortranGenerator >> commentProgramFile [
	self flag: #TODO. "complete comment"
	^ 'ProgramFile'
]

{ #category : #comments }
FamixFortranGenerator >> commentPuBlockData [
	self flag: #TODO. "complete comment"
	^ 'BlockData'
]

{ #category : #comments }
FamixFortranGenerator >> commentPuComment [
	self flag: #TODO. "complete comment"
	^ 'Comment'
]

{ #category : #comments }
FamixFortranGenerator >> commentPuFunction [
	self flag: #TODO. "complete comment"
	^ 'Function'
]

{ #category : #comments }
FamixFortranGenerator >> commentPuMain [
	self flag: #TODO. "complete comment"
	^ 'PROGRAM'
]

{ #category : #comments }
FamixFortranGenerator >> commentPuModule [
	self flag: #TODO. "complete comment"
	^ 'Module'
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
	puMain := builder newClassNamed: #PUMain comment: self commentPuMain.
	puModule := builder newClassNamed: #PUModule comment: self commentPuModule.
	puFunction := builder newClassNamed: #PUFunction comment: self commentPuFunction.
	puBlockData := builder newClassNamed: #PUBlockData comment: self commentPuBlockData.
	puComment := builder newClassNamed: #PUComment comment: self commentPuComment.
	externalProcedure := builder newClassNamed: #ExternalProcedure comment: self commentExternalProcedure.

	variable := builder newClassNamed: #Variable comment: self commentVariable.
	parameter := builder newClassNamed: #Parameter comment: self commentParameter.

]

{ #category : #definition }
FamixFortranGenerator >> defineHierarchy [
	super defineHierarchy.

	tProgramUnit --|> #TWithStatements.
	tProgramUnit --|> #TSourceEntity.
	tProgramUnit --|> #TWithComments.
	tProgramUnit --|> #TWithAccesses.
	
	programFile --|> #TCompilationUnit.

	externalProcedure --|> #TInvocable.
	externalProcedure --|> #THasSignature.
	externalProcedure --|> #TNamedEntity.
	externalProcedure --|> #TWithParameters.
	externalProcedure --|> #TLocalVariable.
	externalProcedure --|> tProgramUnit.
	
	subroutine --|> externalProcedure.
	
	puFunction --|> externalProcedure.
	puFunction --|> #TFunction.
	
	puBlockData --|> tProgramUnit.
	
	puMain --|> tProgramUnit.
	puModule --|> tProgramUnit.

	parameter --|> #TParameter.
	parameter --|> variable.
	
	variable --|> #TStructuralEntity.
	variable --|> #TAccessible.
	
	puComment --|> #TComment.
	puComment --|> #TSourceEntity.
]

{ #category : #definition }
FamixFortranGenerator >> defineProperties [ 
	super defineProperties.

	(programFile property: #version type: #String)
		comment: 'Fortran version of the file'.
	
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
