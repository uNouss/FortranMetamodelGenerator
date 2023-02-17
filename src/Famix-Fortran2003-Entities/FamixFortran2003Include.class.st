"
include comment
"
Class {
	#name : #FamixFortran2003Include,
	#superclass : #FamixFortran2003Entity,
	#traits : 'FamixTAssociation + FamixTFileInclude',
	#classTraits : 'FamixTAssociation classTrait + FamixTFileInclude classTrait',
	#category : #'Famix-Fortran2003-Entities-Entities'
}

{ #category : #meta }
FamixFortran2003Include class >> annotation [

	<FMClass: #Include super: #FamixFortran2003Entity>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]
