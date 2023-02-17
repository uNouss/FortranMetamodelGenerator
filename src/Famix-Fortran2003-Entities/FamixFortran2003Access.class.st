"
access comment
"
Class {
	#name : #FamixFortran2003Access,
	#superclass : #FamixFortran2003Entity,
	#traits : 'FamixTAccess + FamixTAssociation',
	#classTraits : 'FamixTAccess classTrait + FamixTAssociation classTrait',
	#category : #'Famix-Fortran2003-Entities-Entities'
}

{ #category : #meta }
FamixFortran2003Access class >> annotation [

	<FMClass: #Access super: #FamixFortran2003Entity>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]
