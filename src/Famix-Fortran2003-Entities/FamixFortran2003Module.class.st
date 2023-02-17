"
module comment
"
Class {
	#name : #FamixFortran2003Module,
	#superclass : #FamixFortran2003NamedEntity,
	#traits : 'FamixFortran2003TProgramUnit + FamixTModule + FamixTWithFiles + FamixTWithLocalVariables',
	#classTraits : 'FamixFortran2003TProgramUnit classTrait + FamixTModule classTrait + FamixTWithFiles classTrait + FamixTWithLocalVariables classTrait',
	#instVars : [
		'#incomingUsageRelations => FMMany type: #FamixFortran2003Usage opposite: #target',
		'#outgoingUsageRelations => FMMany type: #FamixFortran2003Usage opposite: #source'
	],
	#category : #'Famix-Fortran2003-Entities-Entities'
}

{ #category : #meta }
FamixFortran2003Module class >> annotation [

	<FMClass: #Module super: #FamixFortran2003NamedEntity>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixFortran2003Module >> addIncomingUsageRelation: anObject [
	<generated>
	^ self incomingUsageRelations add: anObject
]

{ #category : #adding }
FamixFortran2003Module >> addOutgoingUsageRelation: anObject [
	<generated>
	^ self outgoingUsageRelations add: anObject
]

{ #category : #accessing }
FamixFortran2003Module >> incomingUsageRelations [
	"Relation named: #incomingUsageRelations type: #FamixFortran2003Usage opposite: #target"

	<generated>
	<derived>
	^ incomingUsageRelations
]

{ #category : #accessing }
FamixFortran2003Module >> incomingUsageRelations: anObject [

	<generated>
	incomingUsageRelations value: anObject
]

{ #category : #accessing }
FamixFortran2003Module >> outgoingUsageRelations [
	"Relation named: #outgoingUsageRelations type: #FamixFortran2003Usage opposite: #source"

	<generated>
	<derived>
	^ outgoingUsageRelations
]

{ #category : #accessing }
FamixFortran2003Module >> outgoingUsageRelations: anObject [

	<generated>
	outgoingUsageRelations value: anObject
]
