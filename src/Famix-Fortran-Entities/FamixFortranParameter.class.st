"
Parameter
"
Class {
	#name : #FamixFortranParameter,
	#superclass : #FamixFortranEntity,
	#traits : 'FamixTParameter',
	#classTraits : 'FamixTParameter classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranParameter class >> annotation [

	<FMClass: #Parameter super: #FamixFortranEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixFortranParameter >> isParameter [

	<generated>
	^ true
]

{ #category : #testing }
FamixFortranParameter >> setOwner: anEntity [

	anEntity addParameter: self
]
