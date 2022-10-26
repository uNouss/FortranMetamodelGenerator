"
I represent a ProgramUnit in Fortran.
								I have a container which is a TWithProgramUnits.
"
Trait {
	#name : #FamixFortranTProgramUnit,
	#instVars : [
		'#container => FMOne type: #FamixFortranTWithProgramUnits opposite: #programUnits'
	],
	#traits : 'FamixFortranTWithProgramUnits + FamixTNamedEntity + FamixTSourceEntity + FamixTWithComments + FamixTWithStatements + TEntityMetaLevelDependency',
	#classTraits : 'FamixFortranTWithProgramUnits classTrait + FamixTNamedEntity classTrait + FamixTSourceEntity classTrait + FamixTWithComments classTrait + FamixTWithStatements classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'Famix-Fortran-Entities-Traits'
}

{ #category : #meta }
FamixFortranTProgramUnit classSide >> annotation [

	<FMClass: #TProgramUnit super: #Object>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixFortranTProgramUnit >> container [
	"Relation named: #container type: #FamixFortranTWithProgramUnits opposite: #programUnits"

	<generated>
	<FMComment: 'Entity containing this programUnit'>
	<container>
	^ container
]

{ #category : #accessing }
FamixFortranTProgramUnit >> container: anObject [

	<generated>
	container := anObject
]

{ #category : #navigation }
FamixFortranTProgramUnit >> containerGroup [
	<generated>
	<navigation: 'Container'>
	^ MooseSpecializedGroup with: self container
]
