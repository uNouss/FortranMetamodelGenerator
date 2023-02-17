"
usage comment
"
Class {
	#name : #FamixFortran2003Usage,
	#superclass : #FamixFortran2003Entity,
	#traits : 'FamixTAssociation',
	#classTraits : 'FamixTAssociation classTrait',
	#instVars : [
		'#target => FMOne type: #FamixFortran2003Module opposite: #incomingUsageRelations',
		'#source => FMOne type: #FamixFortran2003Module opposite: #outgoingUsageRelations'
	],
	#category : #'Famix-Fortran2003-Entities-Entities'
}

{ #category : #meta }
FamixFortran2003Usage class >> annotation [

	<FMClass: #Usage super: #FamixFortran2003Entity>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixFortran2003Usage >> source [
	"Relation named: #source type: #FamixFortran2003Module opposite: #outgoingUsageRelations"

	<generated>
	^ source
]

{ #category : #accessing }
FamixFortran2003Usage >> source: anObject [

	<generated>
	source := anObject
]

{ #category : #accessing }
FamixFortran2003Usage >> target [
	"Relation named: #target type: #FamixFortran2003Module opposite: #incomingUsageRelations"

	<generated>
	^ target
]

{ #category : #accessing }
FamixFortran2003Usage >> target: anObject [

	<generated>
	target := anObject
]
