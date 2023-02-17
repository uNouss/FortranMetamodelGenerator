"
variable comment
"
Class {
	#name : #FamixFortran2003Variable,
	#superclass : #FamixFortran2003Entity,
	#traits : 'FamixTAccessible + FamixTLocalVariable',
	#classTraits : 'FamixTAccessible classTrait + FamixTLocalVariable classTrait',
	#category : #'Famix-Fortran2003-Entities-Entities'
}

{ #category : #meta }
FamixFortran2003Variable class >> annotation [

	<FMClass: #Variable super: #FamixFortran2003Entity>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]
