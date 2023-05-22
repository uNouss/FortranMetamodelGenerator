"
a procedure
"
Class {
	#name : #FamixFortran77PUProcedure,
	#superclass : #FamixFortran77ProgramUnit,
	#traits : 'FamixTHasSignature + FamixTInvocable + FamixTWithAccesses + FamixTWithInvocations + FamixTWithLocalVariables + FamixTWithParameters + FamixTWithStatements',
	#classTraits : 'FamixTHasSignature classTrait + FamixTInvocable classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithLocalVariables classTrait + FamixTWithParameters classTrait + FamixTWithStatements classTrait',
	#instVars : [
		'#symbolTable => FMProperty defaultValue: ((Dictionary new))'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77PUProcedure class >> annotation [

	<FMClass: #PUProcedure super: #FamixFortran77ProgramUnit>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixFortran77PUProcedure >> symbolTable [
	^symbolTable ifNil: [ symbolTable := Dictionary new ]
]

{ #category : #accessing }
FamixFortran77PUProcedure >> symbolTable: anObject [
	<generated>
	symbolTable := anObject
]
