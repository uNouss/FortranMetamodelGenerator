"
a block data for common variable
"
Class {
	#name : #FamixFortran77PUBlockdata,
	#superclass : #FamixFortran77ProgramUnit,
	#traits : 'FamixTWithAccesses + FamixTWithLocalVariables',
	#classTraits : 'FamixTWithAccesses classTrait + FamixTWithLocalVariables classTrait',
	#instVars : [
		'#variables => FMMany type: #FamixFortran77Variable opposite: #pUBlockdata',
		'#body => FMOne type: #FamixFortran77Body opposite: #pUBlockdata'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77PUBlockdata class >> annotation [

	<FMClass: #PUBlockdata super: #FamixFortran77ProgramUnit>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixFortran77PUBlockdata >> addVariable: anObject [
	<generated>
	^ self variables add: anObject
]

{ #category : #accessing }
FamixFortran77PUBlockdata >> body [
	"Relation named: #body type: #FamixFortran77Body opposite: #pUBlockdata"

	<generated>
	^ body
]

{ #category : #accessing }
FamixFortran77PUBlockdata >> body: anObject [

	<generated>
	body := anObject
]

{ #category : #navigation }
FamixFortran77PUBlockdata >> bodyGroup [
	<generated>
	<navigation: 'Body'>
	^ MooseSpecializedGroup with: self body
]

{ #category : #accessing }
FamixFortran77PUBlockdata >> variables [
	"Relation named: #variables type: #FamixFortran77Variable opposite: #pUBlockdata"

	<generated>
	<derived>
	^ variables
]

{ #category : #accessing }
FamixFortran77PUBlockdata >> variables: anObject [

	<generated>
	variables value: anObject
]

{ #category : #navigation }
FamixFortran77PUBlockdata >> variablesGroup [
	<generated>
	<navigation: 'Variables'>
	^ MooseSpecializedGroup withAll: self variables asSet
]
