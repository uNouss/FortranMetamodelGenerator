"
a local variable of a program unit
"
Class {
	#name : #FamixFortran77Variable,
	#superclass : #FamixFortran77NamedEntity,
	#traits : 'FamixTAccessible + FamixTLocalVariable',
	#classTraits : 'FamixTAccessible classTrait + FamixTLocalVariable classTrait',
	#instVars : [
		'#isEsope => FMProperty defaultValue: false',
		'#segment => FMProperty',
		'#pUBlockdata => FMOne type: #FamixFortran77PUBlockdata opposite: #variables',
		'#pUMain => FMOne type: #FamixFortran77PUMain opposite: #variables'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77Variable class >> annotation [

	<FMClass: #Variable super: #FamixFortran77NamedEntity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^self
]

{ #category : #initialization }
FamixFortran77Variable >> initialize [

	<generated>
	super initialize.

	"Default value initialization"
	isEsope := false.

]

{ #category : #accessing }
FamixFortran77Variable >> isEsope [

	<FMProperty: #isEsope type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'It is esope attribute variable from segment definition ?'>
	^ isEsope
]

{ #category : #accessing }
FamixFortran77Variable >> isEsope: anObject [
	<generated>
	isEsope := anObject
]

{ #category : #accessing }
FamixFortran77Variable >> pUBlockdata [
	"Relation named: #pUBlockdata type: #FamixFortran77PUBlockdata opposite: #variables"

	<generated>
	<container>
	^ pUBlockdata
]

{ #category : #accessing }
FamixFortran77Variable >> pUBlockdata: anObject [

	<generated>
	pUBlockdata := anObject
]

{ #category : #navigation }
FamixFortran77Variable >> pUBlockdataGroup [
	<generated>
	<navigation: 'PUBlockdata'>
	^ MooseSpecializedGroup with: self pUBlockdata
]

{ #category : #accessing }
FamixFortran77Variable >> pUMain [
	"Relation named: #pUMain type: #FamixFortran77PUMain opposite: #variables"

	<generated>
	<container>
	^ pUMain
]

{ #category : #accessing }
FamixFortran77Variable >> pUMain: anObject [

	<generated>
	pUMain := anObject
]

{ #category : #navigation }
FamixFortran77Variable >> pUMainGroup [
	<generated>
	<navigation: 'PUMain'>
	^ MooseSpecializedGroup with: self pUMain
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
