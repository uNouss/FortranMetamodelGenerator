"
The **FUNCTION** identifies a program unit as a function subprogram.

`[type] FUNCTION funName ([ar[, ar]])`

 The data type of the function type designates the data type of the value returned by the external function. If it is omitted, then the data type returned is determined by the first letter of the symbolic name fname. If the external function returns a `CHARACTER` value, then the length must be specified or given as `CHARACTER*(*)`. In this second case, the length will be as specified in the invoking program unit.

The name *fname* may be used within the external function as a variable but it must be assigned a value before the end of the program unit. The last value assigned to the name fname is the value returned to the invoking program unit.

A function is invoked by using its name fname followed by parentheses and an optional list of arguments called actual arguments which correspond to the dummy arguments in the FUNCTION statement. There may be zero or more dummy arguments of any data type which are declared (if necessary) in the body of the external function. However, the parentheses must be present even if there are no arguments. 

"
Class {
	#name : #FamixFortranFunction,
	#superclass : #FamixFortranExternalProcedure,
	#traits : 'FamixTTypedEntity',
	#classTraits : 'FamixTTypedEntity classTrait',
	#instVars : [
		'#isEsope => FMProperty defaultValue: false',
		'#isIntrinsic => FMProperty defaultValue: false'
	],
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranFunction class >> annotation [

	<FMClass: #Function super: #FamixFortranExternalProcedure>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #initialization }
FamixFortranFunction >> initialize [

	<generated>
	super initialize.

	"Default value initialization"
	isIntrinsic := false.
	isEsope := false.

]

{ #category : #accessing }
FamixFortranFunction >> isEsope [

	<FMProperty: #isEsope type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'It is esope Function ?'>
	^ isEsope
]

{ #category : #accessing }
FamixFortranFunction >> isEsope: anObject [
	<generated>
	isEsope := anObject
]

{ #category : #testing }
FamixFortranFunction >> isFunction [

	<generated>
	^ true
]

{ #category : #accessing }
FamixFortranFunction >> isIntrinsic [

	<FMProperty: #isIntrinsic type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'Function is intrinsic ?'>
	^ isIntrinsic
]

{ #category : #accessing }
FamixFortranFunction >> isIntrinsic: anObject [
	<generated>
	isIntrinsic := anObject
]
