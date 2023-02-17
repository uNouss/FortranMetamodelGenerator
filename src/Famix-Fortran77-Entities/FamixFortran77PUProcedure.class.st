"
a procedure
"
Class {
	#name : #FamixFortran77PUProcedure,
	#superclass : #FamixFortran77ProgramUnit,
	#traits : 'FamixFortran77TStaticInvocable + FamixFortran77TWithBody + FamixTHasSignature + FamixTWithLocalVariables + FamixTWithParameters',
	#classTraits : 'FamixFortran77TStaticInvocable classTrait + FamixFortran77TWithBody classTrait + FamixTHasSignature classTrait + FamixTWithLocalVariables classTrait + FamixTWithParameters classTrait',
	#instVars : [
		'#body => FMOne type: #FamixFortran77Body opposite: #pUProcedure'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77PUProcedure class >> annotation [

	<FMClass: #PUProcedure super: #FamixFortran77ProgramUnit>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixFortran77PUProcedure >> body [
	"Relation named: #body type: #FamixFortran77Body opposite: #pUProcedure"

	<generated>
	^ body
]

{ #category : #accessing }
FamixFortran77PUProcedure >> body: anObject [

	<generated>
	body := anObject
]

{ #category : #navigation }
FamixFortran77PUProcedure >> bodyGroup [
	<generated>
	<navigation: 'Body'>
	^ MooseSpecializedGroup with: self body
]
