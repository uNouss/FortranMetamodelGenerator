"
a main program
"
Class {
	#name : #FamixFortran77PUMain,
	#superclass : #FamixFortran77ProgramUnit,
	#traits : 'FamixFortran77TWithBody',
	#classTraits : 'FamixFortran77TWithBody classTrait',
	#instVars : [
		'#body => FMOne type: #FamixFortran77Body opposite: #pUMain',
		'#variables => FMMany type: #FamixFortran77Variable opposite: #pUMain'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77PUMain class >> annotation [

	<FMClass: #PUMain super: #FamixFortran77ProgramUnit>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixFortran77PUMain >> addVariable: anObject [
	<generated>
	^ self variables add: anObject
]

{ #category : #accessing }
FamixFortran77PUMain >> body [
	"Relation named: #body type: #FamixFortran77Body opposite: #pUMain"

	<generated>
	^ body
]

{ #category : #accessing }
FamixFortran77PUMain >> body: anObject [

	<generated>
	body := anObject
]

{ #category : #navigation }
FamixFortran77PUMain >> bodyGroup [
	<generated>
	<navigation: 'Body'>
	^ MooseSpecializedGroup with: self body
]

{ #category : #accessing }
FamixFortran77PUMain >> variables [
	"Relation named: #variables type: #FamixFortran77Variable opposite: #pUMain"

	<generated>
	<derived>
	^ variables
]

{ #category : #accessing }
FamixFortran77PUMain >> variables: anObject [

	<generated>
	variables value: anObject
]

{ #category : #navigation }
FamixFortran77PUMain >> variablesGroup [
	<generated>
	<navigation: 'Variables'>
	^ MooseSpecializedGroup withAll: self variables asSet
]
