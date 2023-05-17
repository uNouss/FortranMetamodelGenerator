"
an access of a variable
"
Class {
	#name : #FamixFortran77Access,
	#superclass : #FamixFortran77Entity,
	#traits : 'FamixTAccess + TEntityMetaLevelDependency',
	#classTraits : 'FamixTAccess classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77Access class >> annotation [

	<FMClass: #Access super: #FamixFortran77Entity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^ self
]
