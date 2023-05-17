Class {
	#name : #FamixFortran77NamedEntity,
	#superclass : #FamixFortran77Entity,
	#traits : 'FamixTNamedEntity',
	#classTraits : 'FamixTNamedEntity classTrait',
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77NamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #FamixFortran77Entity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixFortran77NamedEntity class >> isAbstract [

	<generated>
	^ self == FamixFortran77NamedEntity
]
