Class {
	#name : #FamixFortranComment,
	#superclass : #FamixFortranSourcedEntity,
	#traits : 'FamixTComment + FamixTSourceEntity',
	#classTraits : 'FamixTComment classTrait + FamixTSourceEntity classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranComment class >> annotation [

	<FMClass: #Comment super: #FamixFortranSourcedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixFortranComment >> isComment [

	<generated>
	^ true
]

{ #category : #testing }
FamixFortranComment >> setOwner: owner [
	self container: owner
]
