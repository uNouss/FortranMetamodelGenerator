"
file comment
"
Class {
	#name : #FamixFortran2003File,
	#superclass : #FamixFortran2003Entity,
	#traits : 'FamixFortran2003TWithProgramUnits + FamixTNamedEntity + FamixTSourceEntity + FamixTWithFileIncludes + TEntityMetaLevelDependency',
	#classTraits : 'FamixFortran2003TWithProgramUnits classTrait + FamixTNamedEntity classTrait + FamixTSourceEntity classTrait + FamixTWithFileIncludes classTrait + TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#filename => FMProperty',
		'#version => FMProperty'
	],
	#category : #'Famix-Fortran2003-Entities-Entities'
}

{ #category : #meta }
FamixFortran2003File class >> annotation [

	<FMClass: #File super: #FamixFortran2003Entity>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixFortran2003File >> filename [

	<FMProperty: #filename type: #String>
	<generated>
	^ filename
]

{ #category : #accessing }
FamixFortran2003File >> filename: anObject [
	<generated>
	filename := anObject
]

{ #category : #accessing }
FamixFortran2003File >> version [

	<FMProperty: #version type: #String>
	<generated>
	^ version
]

{ #category : #accessing }
FamixFortran2003File >> version: anObject [
	<generated>
	version := anObject
]
