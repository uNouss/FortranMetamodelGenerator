"
a fortran comment
"
Class {
	#name : #FamixFortran77Comment,
	#superclass : #FamixFortran77SourcedEntity,
	#traits : 'FamixTComment',
	#classTraits : 'FamixTComment classTrait',
	#instVars : [
		'#isEsope => FMProperty defaultValue: false'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77Comment class >> annotation [

	<FMClass: #Comment super: #FamixFortran77SourcedEntity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixFortran77Comment >> isEsope [

	<FMProperty: #isEsope type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'It is esope comment ?'>
	^ isEsope ifNil: [ isEsope := false ]
]

{ #category : #accessing }
FamixFortran77Comment >> isEsope: anObject [
	<generated>
	isEsope := anObject
]
