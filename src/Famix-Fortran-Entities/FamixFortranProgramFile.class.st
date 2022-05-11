"
ProgramFile
"
Class {
	#name : #FamixFortranProgramFile,
	#superclass : #FamixFortranEntity,
	#traits : 'FamixFortranTWithProgramUnits',
	#classTraits : 'FamixFortranTWithProgramUnits classTrait',
	#instVars : [
		'#filename => FMProperty',
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
FamixFortranProgramFile >> filename [

	<FMProperty: #filename type: #String>
	<generated>
	<FMComment: 'Fortran name of the file'>
	^ filename
]

{ #category : #accessing }
FamixFortranProgramFile >> filename: anObject [
	<generated>
	filename := anObject
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
