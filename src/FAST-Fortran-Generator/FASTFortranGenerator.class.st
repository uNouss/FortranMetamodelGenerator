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
