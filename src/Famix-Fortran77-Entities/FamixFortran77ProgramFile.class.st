"
a fortran file
"
Class {
	#name : #FamixFortran77ProgramFile,
	#superclass : #FamixFortran77NamedEntity,
	#traits : 'FamixTCompilationUnit + FamixTSourceEntity + TEntityMetaLevelDependency',
	#classTraits : 'FamixTCompilationUnit classTrait + FamixTSourceEntity classTrait + TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#filename => FMProperty',
		'#programUnits => FMMany type: #FamixFortran77ProgramUnit opposite: #programFile',
		'#symbolTable => FMProperty defaultValue: ((Dictionary new))',
		'#version => FMProperty'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77ProgramFile class >> annotation [

	<FMClass: #ProgramFile super: #FamixFortran77NamedEntity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^ self
]

{ #category : #adding }
FamixFortran77ProgramFile >> addProgramUnit: anObject [
	<generated>
	^ self programUnits add: anObject
]

{ #category : #accessing }
FamixFortran77ProgramFile >> filename [

	<FMProperty: #filename type: #String>
	<generated>
	<FMComment: 'Fortran name of the file'>
	^ filename
]

{ #category : #accessing }
FamixFortran77ProgramFile >> filename: anObject [
	<generated>
	filename := anObject
]

{ #category : #accessing }
FamixFortran77ProgramFile >> programUnits [
	"Relation named: #programUnits type: #FamixFortran77ProgramUnit opposite: #programFile"

	<generated>
	<derived>
	^ programUnits
]

{ #category : #accessing }
FamixFortran77ProgramFile >> programUnits: anObject [

	<generated>
	programUnits value: anObject
]

{ #category : #navigation }
FamixFortran77ProgramFile >> programUnitsGroup [
	<generated>
	<navigation: 'ProgramUnits'>
	^ MooseSpecializedGroup withAll: self programUnits asSet
]

{ #category : #accessing }
FamixFortran77ProgramFile >> symbolTable [
	^symbolTable ifNil: [ symbolTable := Dictionary new ]
]

{ #category : #accessing }
FamixFortran77ProgramFile >> symbolTable: anObject [
	<generated>
	symbolTable := anObject
]

{ #category : #accessing }
FamixFortran77ProgramFile >> version [

	<FMProperty: #version type: #String>
	<generated>
	<FMComment: 'Fortran version of the file'>
	^ version
]

{ #category : #accessing }
FamixFortran77ProgramFile >> version: anObject [
	<generated>
	version := anObject
]
