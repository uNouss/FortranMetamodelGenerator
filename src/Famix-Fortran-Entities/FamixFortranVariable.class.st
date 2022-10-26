"
Variable
"
Class {
	#name : #FamixFortranVariable,
	#superclass : #FamixFortranEntity,
	#traits : 'FamixTLocalVariable',
	#classTraits : 'FamixTLocalVariable classTrait',
	#instVars : [
		'#isEsope => FMProperty defaultValue: false'
	],
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranVariable class >> annotation [

	<FMClass: #Variable super: #FamixFortranEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #initialization }
FamixFortranVariable >> initialize [

	<generated>
	super initialize.

	"Default value initialization"
	isEsope := false.

]

{ #category : #accessing }
FamixFortranVariable >> isEsope [

	<FMProperty: #isEsope type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'It is esope variable ?'>
	^ isEsope
]

{ #category : #accessing }
FamixFortranVariable >> isEsope: anObject [
	<generated>
	isEsope := anObject
]

{ #category : #testing }
FamixFortranVariable >> isVariable [

	<generated>
	^ true
]
