Class {
	#name : #FamixFortran77SourcedEntity,
	#superclass : #FamixFortran77Entity,
	#traits : 'FamixTSourceEntity',
	#classTraits : 'FamixTSourceEntity classTrait',
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77SourcedEntity class >> annotation [

	<FMClass: #SourcedEntity super: #FamixFortran77Entity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixFortran77SourcedEntity class >> isAbstract [

	<generated>
	^ self == FamixFortran77SourcedEntity
]
