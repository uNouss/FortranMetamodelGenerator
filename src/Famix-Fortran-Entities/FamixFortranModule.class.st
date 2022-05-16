"
Module
"
Class {
	#name : #FamixFortranModule,
	#superclass : #FamixFortranEntity,
	#traits : 'FamixFortranTProgramUnit',
	#classTraits : 'FamixFortranTProgramUnit classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranModule class >> annotation [

	<FMClass: #Module super: #FamixFortranEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixFortranModule >> isModule [

	<generated>
	^ true
]
