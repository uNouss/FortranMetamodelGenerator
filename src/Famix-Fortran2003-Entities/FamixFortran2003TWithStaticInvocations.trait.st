Trait {
	#name : #FamixFortran2003TWithStaticInvocations,
	#instVars : [
		'#outgoingStaticInvocations => FMMany type: #FamixFortran2003TStaticInvocation opposite: #caller'
	],
	#category : #'Famix-Fortran2003-Entities-Traits'
}

{ #category : #meta }
FamixFortran2003TWithStaticInvocations classSide >> annotation [

	<FMClass: #TWithStaticInvocations super: #Object>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixFortran2003TWithStaticInvocations >> addOutgoingStaticInvocation: anObject [
	<generated>
	^ self outgoingStaticInvocations add: anObject
]

{ #category : #accessing }
FamixFortran2003TWithStaticInvocations >> outgoingStaticInvocations [
	"Relation named: #outgoingStaticInvocations type: #FamixFortran2003TStaticInvocation opposite: #caller"

	<generated>
	<derived>
	^ outgoingStaticInvocations
]

{ #category : #accessing }
FamixFortran2003TWithStaticInvocations >> outgoingStaticInvocations: anObject [

	<generated>
	outgoingStaticInvocations value: anObject
]
