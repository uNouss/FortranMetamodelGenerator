"
program comment
"
Class {
	#name : #FamixFortran2003Program,
	#superclass : #FamixFortran2003Entity,
	#traits : 'FamixFortran2003TProgramUnit + FamixFortran2003TWithBody + FamixTWithFiles + FamixTWithLocalVariables',
	#classTraits : 'FamixFortran2003TProgramUnit classTrait + FamixFortran2003TWithBody classTrait + FamixTWithFiles classTrait + FamixTWithLocalVariables classTrait',
	#instVars : [
		'#outgoingUsageRelations => FMMany type: #FamixFortran2003Usage opposite: #source'
	],
	#category : #'Famix-Fortran2003-Entities-Entities'
}

{ #category : #meta }
FamixFortran2003Program class >> annotation [

	<FMClass: #Program super: #FamixFortran2003Entity>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixFortran2003Program >> addOutgoingUsageRelation: anObject [
	<generated>
	^ self outgoingUsageRelations add: anObject
]

{ #category : #accessing }
FamixFortran2003Program >> outgoingUsageRelations [
	"Relation named: #outgoingUsageRelations type: #FamixFortran2003Usage opposite: #source"

	<generated>
	<derived>
	^ outgoingUsageRelations
]

{ #category : #accessing }
FamixFortran2003Program >> outgoingUsageRelations: anObject [

	<generated>
	outgoingUsageRelations value: anObject
]
