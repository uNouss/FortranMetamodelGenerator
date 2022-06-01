Class {
	#name : #FamixFortranComment,
	#superclass : #FamixFortranSourcedEntity,
	#traits : 'FamixTComment',
	#classTraits : 'FamixTComment classTrait',
	#instVars : [
		'#isEsope => FMProperty defaultValue: false'
	],
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranComment class >> annotation [

	<FMClass: #Comment super: #FamixFortranSourcedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #printing }
FamixFortranComment >> displayStringOn: aStream [

	aStream << 'comment on '.
	self container displayStringOn: aStream.
	self isEsope ifTrue: [ aStream nextPutAll: ' [ESOPE]' ]
]

{ #category : #initialization }
FamixFortranComment >> initialize [

	<generated>
	super initialize.

	"Default value initialization"
	isEsope := false.

]

{ #category : #testing }
FamixFortranComment >> isComment [

	<generated>
	^ true
]

{ #category : #accessing }
FamixFortranComment >> isEsope [

	<FMProperty: #isEsope type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'It is esope comment ?'>
	^ isEsope
]

{ #category : #accessing }
FamixFortranComment >> isEsope: anObject [
	<generated>
	isEsope := anObject
]

{ #category : #printing }
FamixFortranComment >> printOn: aStream [

	self sourceText ifNotNil: [ :sourceText | 
		aStream nextPutAll: (sourceText contractTo: 50) ].
	aStream nextPutAll: ' (comment on '.
	self container printOn: aStream.
	aStream nextPut: $).
	self isEsope ifTrue: [ aStream nextPutAll: ' [ESOPE]' . ].
]

{ #category : #testing }
FamixFortranComment >> setOwner: owner [

	self container: owner
]
