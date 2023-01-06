"
A line with a `c`, `C`, `*`, `d`, `D`, or `!` in column one is a comment line, except that if the `-xld` option is set, then the lines starting with `D` or `d` are compiled as debug lines.
The `d`, `D`, and `!` are nonstandard.

If you put an exclamation mark (`!`) in any column of the statement field, except within character literals, then everything after the `!` on that line is a comment.

A totally blank line is a comment line.

Example: `c`, `C`, `d`, `D`, `*`, `!`, and blank comments:
```fortran77
c        1         2         3         4         5         6         7
c23456789012345678901234567890123456789012345678901234567890123456789012
c      Start expression analyzer 
       CHARACTER S, STACK*80 
       COMMON /PRMS/ N, S, STACK 
       ... 
*      Crack the expression:
       IF ( S .GE. '0' .AND. S .LE. '9' ) THEN ! EoL comment 
              CALL PUSH        ! Save on stack. EoL comment 
d             PRINT *, S       ! Debug comment & EoL comment 
       ELSE 
              CALL TOLOWER ! To lowercase EoL comment 
       END IF 
D      PRINT *, N!       Debug comment & EoL comment 
       ... 
C      Finished 
!       expression analyzer
```

"
Class {
	#name : #FamixFortranComment,
	#superclass : #FamixFortranSourcedEntity,
	#traits : 'FamixTComment',
	#classTraits : 'FamixTComment classTrait',
	#instVars : [
		'#isEsope => FMProperty defaultValue: false'
	],
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranComment class >> annotation [

	<FMClass: #Comment super: #FamixFortranSourcedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #printing }
FamixFortranComment >> displayStringOn: aStream [

	aStream << 'comment on '.
	self container displayStringOn: aStream.
	self isEsope ifTrue: [ aStream nextPutAll: ' [ESOPE]' ]
]

{ #category : #initialization }
FamixFortranComment >> initialize [

	<generated>
	super initialize.

	"Default value initialization"
	isEsope := false.

]

{ #category : #testing }
FamixFortranComment >> isComment [

	<generated>
	^ true
]

{ #category : #accessing }
FamixFortranComment >> isEsope [

	<FMProperty: #isEsope type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'It is esope comment ?'>
	^ isEsope
]

{ #category : #accessing }
FamixFortranComment >> isEsope: anObject [
	<generated>
	isEsope := anObject
]

{ #category : #printing }
FamixFortranComment >> printOn: aStream [

	self sourceText ifNotNil: [ :sourceText | 
		aStream nextPutAll: (sourceText contractTo: 50) ].
	aStream nextPutAll: ' (comment on '.
	self container printOn: aStream.
	aStream nextPut: $).
	self isEsope ifTrue: [ aStream nextPutAll: ' [ESOPE]' . ].
]

{ #category : #testing }
FamixFortranComment >> setOwner: owner [

	self container: owner
]
