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

{ #category : #testing }
FamixFortranEntity >> isBlockData [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranEntity >> isComment [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranEntity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranEntity >> isModule [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranEntity >> isParameter [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranEntity >> isProgram [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranEntity >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranEntity >> isSubroutine [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranEntity >> isVariable [

	<generated>
	^ false
]
