"
I allow an entity to contain ProgramUnits
"
Trait {
	#name : #FamixFortran2003TWithProgramUnits,
	#instVars : [
		'#programUnits => FMMany type: #FamixFortran2003TProgramUnit opposite: #container'
	],
	#category : #'Famix-Fortran2003-Entities-Traits'
}

{ #category : #meta }
FamixFortran2003TWithProgramUnits classSide >> annotation [

	<FMClass: #TWithProgramUnits super: #Object>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixFortran2003TWithProgramUnits >> addProgramUnit: anObject [
	<generated>
	^ self programUnits add: anObject
]

{ #category : #accessing }
FamixFortran2003TWithProgramUnits >> programUnits [
	"Relation named: #programUnits type: #FamixFortran2003TProgramUnit opposite: #container"

	<generated>
	<FMComment: 'ProgramUnits contained in the programFile'>
	<derived>
	^ programUnits
]

{ #category : #accessing }
FamixFortran2003TWithProgramUnits >> programUnits: anObject [

	<generated>
	programUnits value: anObject
]

{ #category : #navigation }
FamixFortran2003TWithProgramUnits >> programUnitsGroup [
	<generated>
	<navigation: 'ProgramUnits'>
	^ MooseSpecializedGroup withAll: self programUnits asSet
]
