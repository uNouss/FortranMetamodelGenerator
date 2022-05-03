"
I allow an entity to contain ProgramUnits
"
Trait {
	#name : #FamixFortranTWithProgramUnits,
	#instVars : [
		'#programUnits => FMMany type: #FamixFortranTProgramUnit opposite: #container'
	],
	#category : #'Famix-Fortran-Entities-Traits'
}

{ #category : #meta }
FamixFortranTWithProgramUnits classSide >> annotation [

	<FMClass: #TWithProgramUnits super: #Object>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixFortranTWithProgramUnits >> addProgramUnit: anObject [
	<generated>
	^ self programUnits add: anObject
]

{ #category : #accessing }
FamixFortranTWithProgramUnits >> programUnits [
	"Relation named: #programUnits type: #FamixFortranTProgramUnit opposite: #container"

	<generated>
	<FMComment: 'ProgramUnits contained in the programFile'>
	<derived>
	^ programUnits
]

{ #category : #accessing }
FamixFortranTWithProgramUnits >> programUnits: anObject [

	<generated>
	programUnits value: anObject
]

{ #category : #navigation }
FamixFortranTWithProgramUnits >> programUnitsGroup [
	<generated>
	<navigation: 'ProgramUnits'>
	^ MooseSpecializedGroup withAll: self programUnits asSet
]
