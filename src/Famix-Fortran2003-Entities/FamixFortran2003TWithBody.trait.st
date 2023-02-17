Trait {
	#name : #FamixFortran2003TWithBody,
	#instVars : [
		'#body => FMOne type: #FamixFortran2003Body opposite: #container'
	],
	#traits : 'FamixTWithStatements',
	#classTraits : 'FamixTWithStatements classTrait',
	#category : #'Famix-Fortran2003-Entities-Traits'
}

{ #category : #meta }
FamixFortran2003TWithBody classSide >> annotation [

	<FMClass: #TWithBody super: #Object>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixFortran2003TWithBody >> body [
	"Relation named: #body type: #FamixFortran2003Body opposite: #container"

	<generated>
	^ body
]

{ #category : #accessing }
FamixFortran2003TWithBody >> body: anObject [

	<generated>
	body := anObject
]

{ #category : #navigation }
FamixFortran2003TWithBody >> bodyGroup [
	<generated>
	<navigation: 'Body'>
	^ MooseSpecializedGroup with: self body
]
