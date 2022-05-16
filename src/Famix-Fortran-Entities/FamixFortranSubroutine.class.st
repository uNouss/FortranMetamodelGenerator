"
Subroutine
"
Class {
	#name : #FamixFortranSubroutine,
	#superclass : #FamixFortranExternalProcedure,
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranSubroutine class >> annotation [

	<FMClass: #Subroutine super: #FamixFortranExternalProcedure>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixFortranSubroutine >> isSubroutine [

	<generated>
	^ true
]
