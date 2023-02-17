Trait {
	#name : #FamixFortran2003TStaticInvocation,
	#instVars : [
		'#target => FMOne type: #FamixFortran2003TStaticInvocable opposite: #incomingStaticInvocations',
		'#caller => FMOne type: #FamixFortran2003TWithStaticInvocations opposite: #outgoingStaticInvocations'
	],
	#category : #'Famix-Fortran2003-Entities-Traits'
}

{ #category : #meta }
FamixFortran2003TStaticInvocation classSide >> annotation [

	<FMClass: #TStaticInvocation super: #Object>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixFortran2003TStaticInvocation >> caller [
	"Relation named: #caller type: #FamixFortran2003TWithStaticInvocations opposite: #outgoingStaticInvocations"

	<generated>
	^ caller
]

{ #category : #accessing }
FamixFortran2003TStaticInvocation >> caller: anObject [

	<generated>
	caller := anObject
]

{ #category : #accessing }
FamixFortran2003TStaticInvocation >> target [
	"Relation named: #target type: #FamixFortran2003TStaticInvocable opposite: #incomingStaticInvocations"

	<generated>
	^ target
]

{ #category : #accessing }
FamixFortran2003TStaticInvocation >> target: anObject [

	<generated>
	target := anObject
]
