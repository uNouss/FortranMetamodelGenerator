"
a main program
"
Class {
	#name : #FamixFortran77PUMain,
	#superclass : #FamixFortran77ProgramUnit,
	#traits : 'FamixTWithAccesses + FamixTWithInvocations + FamixTWithLocalVariables',
	#classTraits : 'FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithLocalVariables classTrait',
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
	^self
]

{ #category : #initialization }
FamixFortran77PUMain >> initialize [

	<generated>
	super initialize.

	"Default value initialization"
	symbolTable := Dictionary new.

]

{ #category : #accessing }
FamixFortran77PUMain >> symbolTable [
	
	^ symbolTable
]

{ #category : #accessing }
FamixFortran77PUMain >> symbolTable: anObject [
	<generated>
	symbolTable := anObject
]
