"
body comment
"
Class {
	#name : #FamixFortran2003Body,
	#superclass : #FamixFortran2003Entity,
	#traits : 'FamixFortran2003TWithStaticInvocations + FamixTWithAccesses',
	#classTraits : 'FamixFortran2003TWithStaticInvocations classTrait + FamixTWithAccesses classTrait',
	#instVars : [
		'#container => FMOne type: #FamixFortran2003TWithBody opposite: #body'
	],
	#category : #'Famix-Fortran2003-Entities-Entities'
}

{ #category : #meta }
FamixFortran2003Body class >> annotation [

	<FMClass: #Body super: #FamixFortran2003Entity>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixFortran2003Body >> container [
	"Relation named: #container type: #FamixFortran2003TWithBody opposite: #body"

	<generated>
	<container>
	<derived>
	^ container
]

{ #category : #accessing }
FamixFortran2003Body >> container: anObject [

	<generated>
	container := anObject
]

{ #category : #navigation }
FamixFortran2003Body >> containerGroup [
	<generated>
	<navigation: 'Container'>
	^ MooseSpecializedGroup with: self container
]
