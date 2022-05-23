"
Invocation
"
Class {
	#name : #FamixFortranInvocation,
	#superclass : #FamixFortranEntity,
	#traits : 'FamixTInvocation',
	#classTraits : 'FamixTInvocation classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranInvocation class >> annotation [

	<FMClass: #Invocation super: #FamixFortranEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #converting }
FamixFortranInvocation >> setOwner: owner [
	self sender: owner.
]
