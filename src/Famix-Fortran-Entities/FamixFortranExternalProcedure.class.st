"
ExternalProcedure
"
Class {
	#name : #FamixFortranExternalProcedure,
	#superclass : #FamixFortranEntity,
	#traits : 'FamixFortranTProgramUnit + FamixTHasSignature + FamixTInvocable + FamixTWithLocalVariables + FamixTWithParameters',
	#classTraits : 'FamixFortranTProgramUnit classTrait + FamixTHasSignature classTrait + FamixTInvocable classTrait + FamixTWithLocalVariables classTrait + FamixTWithParameters classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranExternalProcedure class >> annotation [

	<FMClass: #ExternalProcedure super: #FamixFortranEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
