"
I represent a ProgramUnit in Fortran.
								I have a container which is a TWithProgramUnits.
"
Trait {
	#name : #FamixFortran2003TProgramUnit,
	#instVars : [
		'#container => FMOne type: #FamixFortran2003TWithProgramUnits opposite: #programUnits'
	],
	#traits : 'FamixFortran2003TWithProgramUnits + FamixTNamedEntity + FamixTSourceEntity + FamixTWithComments + TEntityMetaLevelDependency',
	#classTraits : 'FamixFortran2003TWithProgramUnits classTrait + FamixTNamedEntity classTrait + FamixTSourceEntity classTrait + FamixTWithComments classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'Famix-Fortran2003-Entities-Traits'
}

{ #category : #meta }
FamixFortran2003TProgramUnit classSide >> annotation [

	<FMClass: #TProgramUnit super: #Object>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixFortran2003TProgramUnit >> container [
	"Relation named: #container type: #FamixFortran2003TWithProgramUnits opposite: #programUnits"

	<generated>
	<FMComment: 'Entity containing this programUnit'>
	<container>
	^ container
]

{ #category : #accessing }
FamixFortran2003TProgramUnit >> container: anObject [

	<generated>
	container := anObject
]

{ #category : #navigation }
FamixFortran2003TProgramUnit >> containerGroup [
	<generated>
	<navigation: 'Container'>
	^ MooseSpecializedGroup with: self container
]
