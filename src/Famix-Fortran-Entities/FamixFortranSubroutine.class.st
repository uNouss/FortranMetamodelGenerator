Class {
	#name : #FamixFortranSubroutine,
	#superclass : #FamixFortranEntity,
	#traits : 'FamixFortranTProgramUnit + FamixTHasSignature + FamixTNamedEntity + FamixTWithParameters',
	#classTraits : 'FamixFortranTProgramUnit classTrait + FamixTHasSignature classTrait + FamixTNamedEntity classTrait + FamixTWithParameters classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranSubroutine class >> annotation [

	<FMClass: #Subroutine super: #FamixFortranEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
