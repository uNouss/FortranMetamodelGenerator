"
a function procedure
"
Class {
	#name : #FamixFortran77PUFunction,
	#superclass : #FamixFortran77PUProcedure,
	#instVars : [
		'#isEsope => FMProperty defaultValue: false',
		'#returnType => FMOne type: #FamixFortran77FType opposite: #pUFunction',
		'#symbolTable => FMProperty defaultValue: ((Dictionary new))'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77PUFunction class >> annotation [

	<FMClass: #PUFunction super: #FamixFortran77PUProcedure>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^self
]

{ #category : #initialization }
FamixFortran77PUFunction >> initialize [

	<generated>
	super initialize.

	"Default value initialization"
	isEsope := false.
	symbolTable := Dictionary new.

]

{ #category : #accessing }
FamixFortran77PUFunction >> isEsope [

	<FMProperty: #isEsope type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'It is kind of esope function ?'>
	^ isEsope
]

{ #category : #accessing }
FamixFortran77PUFunction >> isEsope: anObject [
	<generated>
	isEsope := anObject
]

{ #category : #accessing }
FamixFortran77PUFunction >> returnType [
	"Relation named: #returnType type: #FamixFortran77FType opposite: #pUFunction"

	<generated>
	^ returnType
]

{ #category : #accessing }
FamixFortran77PUFunction >> returnType: anObject [

	<generated>
	returnType := anObject
]

{ #category : #accessing }
FamixFortran77PUFunction >> symbolTable [
	
	^ symbolTable
]

{ #category : #accessing }
FamixFortran77PUFunction >> symbolTable: anObject [
	<generated>
	symbolTable := anObject
]
