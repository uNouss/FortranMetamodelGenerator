"
PROGRAM
"
Class {
	#name : #FamixFortranProgram,
	#superclass : #FamixFortranEntity,
	#traits : 'FamixFortranTProgramUnit',
	#classTraits : 'FamixFortranTProgramUnit classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranProgram class >> annotation [

	<FMClass: #Program super: #FamixFortranEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixFortranProgram >> isProgram [

	<generated>
	^ true
]
