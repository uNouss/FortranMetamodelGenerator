Class {
	#name : #FamixFortran2003Entity,
	#superclass : #MooseEntity,
	#category : #'Famix-Fortran2003-Entities-Entities'
}

{ #category : #meta }
FamixFortran2003Entity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixFortran2003Entity class >> metamodel [

	<generated>
	^ FamixFortran2003Model metamodel
]

{ #category : #testing }
FamixFortran2003Entity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortran2003Entity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortran2003Entity >> isBehavioural [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortran2003Entity >> isStructuralEntity [

	<generated>
	^ false
]
