"
Invocation
"
Class {
	#name : #FamixFortranInvocation,
	#superclass : #FamixFortranEntity,
	#traits : 'FamixTHasSignature + FamixTInvocation',
	#classTraits : 'FamixTHasSignature classTrait + FamixTInvocation classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranInvocation class >> annotation [

	<FMClass: #Invocation super: #FamixFortranEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #setter }
FamixFortranInvocation >> setOwner: owner [ 
	self sender: owner 
]
