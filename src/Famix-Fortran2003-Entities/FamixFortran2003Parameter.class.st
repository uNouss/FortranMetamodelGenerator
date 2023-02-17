"
parameter comment
"
Class {
	#name : #FamixFortran2003Parameter,
	#superclass : #FamixFortran2003Entity,
	#traits : 'FamixTAccessible + FamixTParameter',
	#classTraits : 'FamixTAccessible classTrait + FamixTParameter classTrait',
	#category : #'Famix-Fortran2003-Entities-Entities'
}

{ #category : #meta }
FamixFortran2003Parameter class >> annotation [

	<FMClass: #Parameter super: #FamixFortran2003Entity>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]
