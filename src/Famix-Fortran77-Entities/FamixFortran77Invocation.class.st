"
an invocation of procedure inside a procedure or main program
"
Class {
	#name : #FamixFortran77Invocation,
	#superclass : #FamixFortran77Entity,
	#traits : 'FamixTInvocation + TEntityMetaLevelDependency',
	#classTraits : 'FamixTInvocation classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77Invocation class >> annotation [

	<FMClass: #Invocation super: #FamixFortran77Entity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^ self
]
