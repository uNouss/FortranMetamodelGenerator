"
Comment
"
Class {
	#name : #FamixFortranComment,
	#superclass : #FamixFortranEntity,
	#traits : 'FamixTComment + FamixTSourceEntity',
	#classTraits : 'FamixTComment classTrait + FamixTSourceEntity classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranComment class >> annotation [

	<FMClass: #Comment super: #FamixFortranEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixFortranComment >> isComment [

	<generated>
	^ true
]

{ #category : #printing }
FamixFortranComment >> setOwner: owner [
	self container: owner.
]
