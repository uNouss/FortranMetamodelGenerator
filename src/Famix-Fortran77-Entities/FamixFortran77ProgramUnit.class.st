"
a program unit
"
Class {
	#name : #FamixFortran77ProgramUnit,
	#superclass : #FamixFortran77NamedEntity,
	#traits : 'FamixTSourceEntity + FamixTWithComments + TEntityMetaLevelDependency',
	#classTraits : 'FamixTSourceEntity classTrait + FamixTWithComments classTrait + TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#programFile => FMOne type: #FamixFortran77ProgramFile opposite: #programUnits'
	],
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77ProgramUnit class >> annotation [

	<FMClass: #ProgramUnit super: #FamixFortran77NamedEntity>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixFortran77ProgramUnit >> programFile [
	"Relation named: #programFile type: #FamixFortran77ProgramFile opposite: #programUnits"

	<generated>
	<container>
	^ programFile
]

{ #category : #accessing }
FamixFortran77ProgramUnit >> programFile: anObject [

	<generated>
	programFile := anObject
]

{ #category : #navigation }
FamixFortran77ProgramUnit >> programFileGroup [
	<generated>
	<navigation: 'ProgramFile'>
	^ MooseSpecializedGroup with: self programFile
]
