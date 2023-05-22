"
a function procedure
"
Class {
	#name : #FamixFortran77PUFunction,
	#superclass : #FamixFortran77PUProcedure,
	#traits : 'FamixTTypedEntity',
	#classTraits : 'FamixTTypedEntity classTrait',
	#instVars : [
		'#isEsope => FMProperty defaultValue: false'
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
