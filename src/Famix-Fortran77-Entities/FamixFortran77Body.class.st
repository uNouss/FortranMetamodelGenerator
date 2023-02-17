"
an executable code of a program unit
"
Class {
	#name : #FamixFortran77Body,
	#superclass : #FamixFortran77Entity,
	#traits : 'FamixTWithAccesses + FamixTWithInvocations',
	#classTraits : 'FamixTWithAccesses classTrait + FamixTWithInvocations classTrait',
	#instVars : [
		'#pUBlockdata => FMOne type: #FamixFortran77PUBlockdata opposite: #body',
		'#pUMain => FMOne type: #FamixFortran77PUMain opposite: #body',
		'#pUProcedure => FMOne type: #FamixFortran77PUProcedure opposite: #body'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77Body class >> annotation [

	<FMClass: #Body super: #FamixFortran77Entity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixFortran77Body >> pUBlockdata [
	"Relation named: #pUBlockdata type: #FamixFortran77PUBlockdata opposite: #body"

	<generated>
	<container>
	<derived>
	^ pUBlockdata
]

{ #category : #accessing }
FamixFortran77Body >> pUBlockdata: anObject [

	<generated>
	pUBlockdata := anObject
]

{ #category : #navigation }
FamixFortran77Body >> pUBlockdataGroup [
	<generated>
	<navigation: 'PUBlockdata'>
	^ MooseSpecializedGroup with: self pUBlockdata
]

{ #category : #accessing }
FamixFortran77Body >> pUMain [
	"Relation named: #pUMain type: #FamixFortran77PUMain opposite: #body"

	<generated>
	<container>
	<derived>
	^ pUMain
]

{ #category : #accessing }
FamixFortran77Body >> pUMain: anObject [

	<generated>
	pUMain := anObject
]

{ #category : #navigation }
FamixFortran77Body >> pUMainGroup [
	<generated>
	<navigation: 'PUMain'>
	^ MooseSpecializedGroup with: self pUMain
]

{ #category : #accessing }
FamixFortran77Body >> pUProcedure [
	"Relation named: #pUProcedure type: #FamixFortran77PUProcedure opposite: #body"

	<generated>
	<container>
	<derived>
	^ pUProcedure
]

{ #category : #accessing }
FamixFortran77Body >> pUProcedure: anObject [

	<generated>
	pUProcedure := anObject
]

{ #category : #navigation }
FamixFortran77Body >> pUProcedureGroup [
	<generated>
	<navigation: 'PUProcedure'>
	^ MooseSpecializedGroup with: self pUProcedure
]
