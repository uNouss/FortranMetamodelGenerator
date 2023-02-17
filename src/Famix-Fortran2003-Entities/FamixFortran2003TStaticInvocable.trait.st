Trait {
	#name : #FamixFortran2003TStaticInvocable,
	#instVars : [
		'#incomingStaticInvocations => FMMany type: #FamixFortran2003TStaticInvocation opposite: #target'
	],
	#category : #'Famix-Fortran2003-Entities-Traits'
}

{ #category : #meta }
FamixFortran2003TStaticInvocable classSide >> annotation [

	<FMClass: #TStaticInvocable super: #Object>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixFortran2003TStaticInvocable >> addIncomingStaticInvocation: anObject [
	<generated>
	^ self incomingStaticInvocations add: anObject
]

{ #category : #accessing }
FamixFortran2003TStaticInvocable >> incomingStaticInvocations [
	"Relation named: #incomingStaticInvocations type: #FamixFortran2003TStaticInvocation opposite: #target"

	<generated>
	<derived>
	^ incomingStaticInvocations
]

{ #category : #accessing }
FamixFortran2003TStaticInvocable >> incomingStaticInvocations: anObject [

	<generated>
	incomingStaticInvocations value: anObject
]
