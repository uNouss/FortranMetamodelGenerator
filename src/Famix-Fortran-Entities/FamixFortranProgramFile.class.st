Class {
	#name : #FamixFortranProgramFile,
	#superclass : #FamixFortranEntity,
	#traits : 'FamixTWithFiles',
	#classTraits : 'FamixTWithFiles classTrait',
	#instVars : [
		'#version => FMProperty'
	],
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranProgramFile class >> annotation [

	<FMClass: #ProgramFile super: #FamixFortranEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixFortranProgramFile >> version [

	<FMProperty: #version type: #String>
	<generated>
	<FMComment: 'Fortran version of the file'>
	^ version
]

{ #category : #accessing }
FamixFortranProgramFile >> version: anObject [
	<generated>
	version := anObject
]
