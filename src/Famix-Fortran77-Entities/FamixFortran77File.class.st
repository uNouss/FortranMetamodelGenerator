"
a fortran file
"
Class {
	#name : #FamixFortran77File,
	#superclass : #FamixFortran77NamedEntity,
	#traits : 'FamixTCompilationUnit + FamixTSourceEntity + FamixTWithFileIncludes + TEntityMetaLevelDependency',
	#classTraits : 'FamixTCompilationUnit classTrait + FamixTSourceEntity classTrait + FamixTWithFileIncludes classTrait + TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#version => FMProperty',
		'#filename => FMProperty',
		'#programUnits => FMMany type: #FamixFortran77ProgramUnit opposite: #file'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77File class >> annotation [

	<FMClass: #File super: #FamixFortran77NamedEntity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixFortran77File >> addProgramUnit: anObject [
	<generated>
	^ self programUnits add: anObject
]

{ #category : #accessing }
FamixFortran77File >> filename [

	<FMProperty: #filename type: #String>
	<generated>
	<FMComment: 'Fortran name of the file'>
	^ filename
]

{ #category : #accessing }
FamixFortran77File >> filename: anObject [
	<generated>
	filename := anObject
]

{ #category : #accessing }
FamixFortran77File >> programUnits [
	"Relation named: #programUnits type: #FamixFortran77ProgramUnit opposite: #file"

	<generated>
	<derived>
	^ programUnits
]

{ #category : #accessing }
FamixFortran77File >> programUnits: anObject [

	<generated>
	programUnits value: anObject
]

{ #category : #navigation }
FamixFortran77File >> programUnitsGroup [
	<generated>
	<navigation: 'ProgramUnits'>
	^ MooseSpecializedGroup withAll: self programUnits asSet
]

{ #category : #accessing }
FamixFortran77File >> version [

	<FMProperty: #version type: #String>
	<generated>
	<FMComment: 'Fortran version of the file'>
	^ version
]

{ #category : #accessing }
FamixFortran77File >> version: anObject [
	<generated>
	version := anObject
]
