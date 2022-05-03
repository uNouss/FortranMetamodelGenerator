Class {
	#name : #FamixFortranGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'attrAllocatable',
		'attrDimension',
		'attrIntent',
		'attrPointer',
		'attrSuffix',
		'attrTarget',
		'attrValue',
		'comment',
		'doSpecification',
		'programUnit',
		'programFile',
		'puMain',
		'puModule',
		'puFunction',
		'puBlockData',
		'puComment',
		'subroutine',
		'tWithProgramUnits',
		'tProgramUnit'
	],
	#category : #'Famix-Fortran-Generator'
}

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

{ #category : #definition }
FamixFortranGenerator >> defineClasses [
	super defineClasses.
	
	attrAllocatable := builder newClassNamed: #AttrAllocatable.
	attrDimension := builder newClassNamed: #AttrDimension.
	attrIntent := builder newClassNamed: #AttrIntent.

	attrPointer := builder newClassNamed: #AttrPointer.

	attrSuffix := builder newClassNamed: #AttrSuffix.
	attrTarget := builder newClassNamed: #AttrTarget.
	attrValue := builder newClassNamed: #AttrValue.

	
	
	comment := builder newClassNamed: #Comment.

	doSpecification := builder newClassNamed: #DoSpecification.
	

	subroutine := builder newClassNamed: #Subroutine.
	programFile := builder newClassNamed: #ProgramFile.
	puMain := builder newClassNamed: #PUMain.
	puModule := builder newClassNamed: #PUModule.
	puFunction := builder newClassNamed: #PUFunction.
	puBlockData := builder newClassNamed: #PUBlockData.
	puComment := builder newClassNamed: #PUComment.
	
	
	
]

{ #category : #definition }
FamixFortranGenerator >> defineHierarchy [
	super defineHierarchy.

	subroutine --|> #THasSignature.
	subroutine --|> #TNamedEntity.
	subroutine --|> #TWithParameters.
	subroutine --|> tProgramUnit.
	
	comment --|> #TComment.
	comment --|> #TSourceEntity.
	
	tProgramUnit --|> #TWithStatements.
	tProgramUnit --|> #TSourceEntity.
	tProgramUnit --|> #TWithComments.
	
	programFile --|> #TWithFiles.
	

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
