"
a program unit
"
Class {
	#name : #FamixFortran77ProgramUnit,
	#superclass : #FamixFortran77NamedEntity,
	#traits : 'FamixTSourceEntity + FamixTWithLocalVariables + TEntityMetaLevelDependency',
	#classTraits : 'FamixTSourceEntity classTrait + FamixTWithLocalVariables classTrait + TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#file => FMOne type: #FamixFortran77File opposite: #programUnits',
		'#comments => FMMany type: #FamixFortran77Comment opposite: #programUnit'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77ProgramUnit class >> annotation [

	<FMClass: #ProgramUnit super: #FamixFortran77NamedEntity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixFortran77ProgramUnit >> addComment: anObject [
	<generated>
	^ self comments add: anObject
]

{ #category : #accessing }
FamixFortran77ProgramUnit >> comments [
	"Relation named: #comments type: #FamixFortran77Comment opposite: #programUnit"

	<generated>
	<derived>
	^ comments
]

{ #category : #accessing }
FamixFortran77ProgramUnit >> comments: anObject [

	<generated>
	comments value: anObject
]

{ #category : #navigation }
FamixFortran77ProgramUnit >> commentsGroup [
	<generated>
	<navigation: 'Comments'>
	^ MooseSpecializedGroup withAll: self comments asSet
]

{ #category : #accessing }
FamixFortran77ProgramUnit >> file [
	"Relation named: #file type: #FamixFortran77File opposite: #programUnits"

	<generated>
	<container>
	^ file
]

{ #category : #accessing }
FamixFortran77ProgramUnit >> file: anObject [

	<generated>
	file := anObject
]

{ #category : #navigation }
FamixFortran77ProgramUnit >> fileGroup [
	<generated>
	<navigation: 'File'>
	^ MooseSpecializedGroup with: self file
]
