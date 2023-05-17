"
Im a Fortran Type
"
Class {
	#name : #FamixFortran77Type,
	#superclass : #FamixFortran77Entity,
	#traits : 'FamixTType',
	#classTraits : 'FamixTType classTrait',
	#instVars : [
		'#length => FMProperty',
		'#kind => FMProperty',
		'#pUFunction => FMOne type: #FamixFortran77PUFunction opposite: #returnType',
		'#variable => FMOne type: #FamixFortran77Variable opposite: #type'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77Type class >> annotation [

	<FMClass: #Type super: #FamixFortran77Entity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixFortran77Type >> kind [

	<FMProperty: #kind type: #Number>
	<generated>
	<FMComment: 'kind attribute'>
	^ kind
]

{ #category : #accessing }
FamixFortran77Type >> kind: anObject [
	<generated>
	kind := anObject
]

{ #category : #accessing }
FamixFortran77Type >> length [

	<FMProperty: #length type: #Number>
	<generated>
	<FMComment: 'length attribute'>
	^ length
]

{ #category : #accessing }
FamixFortran77Type >> length: anObject [
	<generated>
	length := anObject
]

{ #category : #accessing }
FamixFortran77Type >> pUFunction [
	"Relation named: #pUFunction type: #FamixFortran77PUFunction opposite: #returnType"

	<generated>
	<derived>
	^ pUFunction
]

{ #category : #accessing }
FamixFortran77Type >> pUFunction: anObject [

	<generated>
	pUFunction := anObject
]

{ #category : #accessing }
FamixFortran77Type >> variable [
	"Relation named: #variable type: #FamixFortran77Variable opposite: #type"

	<generated>
	<derived>
	^ variable
]

{ #category : #accessing }
FamixFortran77Type >> variable: anObject [

	<generated>
	variable := anObject
]
