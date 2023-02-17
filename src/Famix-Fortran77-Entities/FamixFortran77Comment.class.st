"
a fortran comment
"
Class {
	#name : #FamixFortran77Comment,
	#superclass : #FamixFortran77SourcedEntity,
	#traits : 'FamixTComment',
	#classTraits : 'FamixTComment classTrait',
	#instVars : [
		'#isEsope => FMProperty defaultValue: false',
		'#programUnit => FMOne type: #FamixFortran77ProgramUnit opposite: #comments'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77Comment class >> annotation [

	<FMClass: #Comment super: #FamixFortran77SourcedEntity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^self
]

{ #category : #initialization }
FamixFortran77Comment >> initialize [

	<generated>
	super initialize.

	"Default value initialization"
	isEsope := false.

]

{ #category : #accessing }
FamixFortran77Comment >> isEsope [

	<FMProperty: #isEsope type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'It is esope comment ?'>
	^ isEsope
]

{ #category : #accessing }
FamixFortran77Comment >> isEsope: anObject [
	<generated>
	isEsope := anObject
]

{ #category : #accessing }
FamixFortran77Comment >> programUnit [
	"Relation named: #programUnit type: #FamixFortran77ProgramUnit opposite: #comments"

	<generated>
	<container>
	^ programUnit
]

{ #category : #accessing }
FamixFortran77Comment >> programUnit: anObject [

	<generated>
	programUnit := anObject
]

{ #category : #navigation }
FamixFortran77Comment >> programUnitGroup [
	<generated>
	<navigation: 'ProgramUnit'>
	^ MooseSpecializedGroup with: self programUnit
]
