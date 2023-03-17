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
	^self
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
FamixFortran77Entity >> isInvocation [

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
