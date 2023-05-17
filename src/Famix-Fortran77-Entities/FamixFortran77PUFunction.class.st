"
a function procedure
"
Class {
	#name : #FamixFortran77PUFunction,
	#superclass : #FamixFortran77PUProcedure,
	#instVars : [
		'#isEsope => FMProperty defaultValue: false',
		'#returnType => FMOne type: #FamixFortran77Type opposite: #pUFunction'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77PUFunction class >> annotation [

	<FMClass: #PUFunction super: #FamixFortran77PUProcedure>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixFortran77PUFunction >> isEsope [

	<FMProperty: #isEsope type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'It is kind of esope function ?'>
	^ isEsope ifNil: [ isEsope := false ]
]

{ #category : #accessing }
FamixFortran77PUFunction >> isEsope: anObject [
	<generated>
	isEsope := anObject
]

{ #category : #accessing }
FamixFortran77PUFunction >> returnType [
	"Relation named: #returnType type: #FamixFortran77Type opposite: #pUFunction"

	<generated>
	^ returnType
]

{ #category : #accessing }
FamixFortran77PUFunction >> returnType: anObject [

	<generated>
	returnType := anObject
]
