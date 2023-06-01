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

{ #category : #implicit }
FamixFortran77ProgramUnit >> defaultImplicit [
	^(($a to: $z)
		collect: [ :char | ('ijklmn' includes: char)
			ifTrue: [ char -> #integer ]
			ifFalse: [ char -> #real ] ]) asDictionary
]

{ #category : #testing }
FamixFortran77ProgramUnit >> implicits [
	^self attributeAt: #implicits ifAbsent: [  ] 
]

{ #category : #testing }
FamixFortran77ProgramUnit >> isInvocable [
	^false
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
