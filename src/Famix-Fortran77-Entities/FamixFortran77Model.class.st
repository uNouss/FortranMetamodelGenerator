Class {
	#name : #FamixFortran77Model,
	#superclass : #MooseModel,
	#traits : 'FamixFortran77TEntityCreator',
	#classTraits : 'FamixFortran77TEntityCreator classTrait',
	#category : #'Famix-Fortran77-Entities-Model'
}

{ #category : #accessing }
FamixFortran77Model class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits')
]

{ #category : #meta }
FamixFortran77Model class >> annotation [
	<FMClass: #FamixFortran77Model super: #MooseModel>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
]

{ #category : #testing }
FamixFortran77Model class >> canBeImportedFromFile [
	<generated>
	^true
]

{ #category : #accessing }
FamixFortran77Model class >> importingContextClass [

	<generated>
	^ FamixFortran77ImportingContext
]
