Class {
	#name : #FamixFortran77Entity,
	#superclass : #MooseEntity,
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77Entity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixFortran77Entity class >> isAbstract [

	<generated>
	^ self == FamixFortran77Entity
]

{ #category : #meta }
FamixFortran77Entity class >> metamodel [

	<generated>
	^ FamixFortran77Model metamodel
]

{ #category : #testing }
FamixFortran77Entity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortran77Entity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortran77Entity >> isBehavioural [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortran77Entity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortran77Entity >> isLocalVariable [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortran77Entity >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortran77Entity >> isType [

	<generated>
	^ false
]
