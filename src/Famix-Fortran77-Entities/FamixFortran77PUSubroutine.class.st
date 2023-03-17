"
a subroutine procedure
"
Class {
	#name : #FamixFortran77PUSubroutine,
	#superclass : #FamixFortran77PUProcedure,
	#instVars : [
		'#symbolTable => FMProperty defaultValue: ((Dictionary new))'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77PUSubroutine class >> annotation [

	<FMClass: #PUSubroutine super: #FamixFortran77PUProcedure>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^self
]

{ #category : #initialization }
FamixFortran77PUSubroutine >> initialize [

	<generated>
	super initialize.

	"Default value initialization"
	symbolTable := Dictionary new.

]

{ #category : #accessing }
FamixFortran77PUSubroutine >> symbolTable [
	
	^ symbolTable
]

{ #category : #accessing }
FamixFortran77PUSubroutine >> symbolTable: anObject [
	<generated>
	symbolTable := anObject
]
