Class {
	#name : #FamixFortranEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixFortranEntity class >> metamodel [

	<generated>
	^ FamixFortranModel metamodel
]

{ #category : #testing }
FamixFortranEntity >> isBehavioural [

	<generated>
	^ false
]
