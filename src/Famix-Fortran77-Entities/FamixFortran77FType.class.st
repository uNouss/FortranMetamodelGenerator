"
Im a Fortran Type
"
Class {
	#name : #FamixFortran77FType,
	#superclass : #FamixFortran77Entity,
	#traits : 'FamixTType',
	#classTraits : 'FamixTType classTrait',
	#instVars : [
		'#kind => FMProperty',
		'#length => FMProperty',
		'#pUFunction => FMOne type: #FamixFortran77PUFunction opposite: #returnType',
		'#variable => FMOne type: #FamixFortran77Variable opposite: #fType'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77FType class >> annotation [

	<FMClass: #FType super: #FamixFortran77Entity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixFortran77FType >> kind [

	<FMProperty: #kind type: #Number>
	<generated>
	<FMComment: 'kind attribute'>
	^ kind
]

{ #category : #accessing }
FamixFortran77FType >> kind: anObject [
	<generated>
	kind := anObject
]

{ #category : #accessing }
FamixFortran77FType >> length [

	<FMProperty: #length type: #Number>
	<generated>
	<FMComment: 'length attribute'>
	^ length
]

{ #category : #accessing }
FamixFortran77FType >> length: anObject [
	<generated>
	length := anObject
]

{ #category : #accessing }
FamixFortran77FType >> pUFunction [
	"Relation named: #pUFunction type: #FamixFortran77PUFunction opposite: #returnType"

	<generated>
	<derived>
	^ pUFunction
]

{ #category : #accessing }
FamixFortran77FType >> pUFunction: anObject [

	<generated>
	pUFunction := anObject
]

{ #category : #accessing }
FamixFortran77FType >> variable [
	"Relation named: #variable type: #FamixFortran77Variable opposite: #fType"

	<generated>
	<derived>
	^ variable
]

{ #category : #accessing }
FamixFortran77FType >> variable: anObject [

	<generated>
	variable := anObject
]
