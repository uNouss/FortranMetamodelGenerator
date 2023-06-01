"
a block data for common variable
"
Class {
	#name : #FamixFortran77PUBlockdata,
	#superclass : #FamixFortran77ProgramUnit,
	#traits : 'FamixTWithAccesses + FamixTWithLocalVariables + FamixTWithStatements',
	#classTraits : 'FamixTWithAccesses classTrait + FamixTWithLocalVariables classTrait + FamixTWithStatements classTrait',
	#instVars : [
		'#dicImplicit => FMProperty defaultValue: ((Dictionary new))',
		'#symbolTable => FMProperty defaultValue: ((Dictionary new))'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77PUBlockdata class >> annotation [

	<FMClass: #PUBlockdata super: #FamixFortran77ProgramUnit>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixFortran77PUBlockdata >> dicImplicit [

	^ dicImplicit
]

{ #category : #accessing }
FamixFortran77PUBlockdata >> dicImplicit: anObject [
	<generated>
	dicImplicit := anObject
]

{ #category : #initialization }
FamixFortran77PUBlockdata >> initialize [ 
	super initialize.
	dicImplicit := self defaultImplicit.
]

{ #category : #accessing }
FamixFortran77PUBlockdata >> symbolTable [
	^symbolTable ifNil: [ symbolTable := Dictionary new ]
]

{ #category : #accessing }
FamixFortran77PUBlockdata >> symbolTable: anObject [
	<generated>
	symbolTable := anObject
]
