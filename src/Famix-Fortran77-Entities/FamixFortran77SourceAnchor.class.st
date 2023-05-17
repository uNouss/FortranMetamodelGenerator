Class {
	#name : #FamixFortran77SourceAnchor,
	#superclass : #FamixFortran77Entity,
	#traits : 'FamixTSourceAnchor',
	#classTraits : 'FamixTSourceAnchor classTrait',
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77SourceAnchor class >> annotation [

	<FMClass: #SourceAnchor super: #FamixFortran77Entity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixFortran77SourceAnchor class >> isAbstract [

	<generated>
	^ self == FamixFortran77SourceAnchor
]
