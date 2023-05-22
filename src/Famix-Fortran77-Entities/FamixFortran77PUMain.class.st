"
a main program
"
Class {
	#name : #FamixFortran77PUMain,
	#superclass : #FamixFortran77ProgramUnit,
	#traits : 'FamixTWithAccesses + FamixTWithInvocations + FamixTWithLocalVariables + FamixTWithStatements',
	#classTraits : 'FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithLocalVariables classTrait + FamixTWithStatements classTrait',
	#instVars : [
		'#symbolTable => FMProperty defaultValue: ((Dictionary new))'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77PUMain class >> annotation [

	<FMClass: #PUMain super: #FamixFortran77ProgramUnit>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixFortran77PUMain >> symbolTable [
	^symbolTable ifNil: [ symbolTable := Dictionary new ]
]

{ #category : #accessing }
FamixFortran77PUMain >> symbolTable: anObject [
	<generated>
	symbolTable := anObject
]
