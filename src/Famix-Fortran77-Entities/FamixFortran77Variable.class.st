"
a local variable of a program unit
"
Class {
	#name : #FamixFortran77Variable,
	#superclass : #FamixFortran77Entity,
	#traits : 'FamixTLocalVariable',
	#classTraits : 'FamixTLocalVariable classTrait',
	#instVars : [
		'#isEsope => FMProperty defaultValue: false',
		'#segment => FMProperty'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77Variable class >> annotation [

	<FMClass: #Variable super: #FamixFortran77Entity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixFortran77Variable >> isEsope [

	<FMProperty: #isEsope type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'It is esope attribute variable from segment definition ?'>
	^ isEsope ifNil: [ isEsope := false ]
]

{ #category : #accessing }
FamixFortran77Variable >> isEsope: anObject [
	<generated>
	isEsope := anObject
]

{ #category : #accessing }
FamixFortran77Variable >> segment [

	<FMProperty: #segment type: #String>
	<generated>
	<FMComment: 'variable belong to this segment'>
	^ segment
]

{ #category : #accessing }
FamixFortran77Variable >> segment: anObject [
	<generated>
	segment := anObject
]
