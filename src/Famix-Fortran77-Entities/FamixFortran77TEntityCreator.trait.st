"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.
"
Trait {
	#name : #FamixFortran77TEntityCreator,
	#category : #'Famix-Fortran77-Entities-Model'
}

{ #category : #meta }
FamixFortran77TEntityCreator classSide >> annotation [

	<FMClass: #TEntityCreator super: #Object>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^ self
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newAccess [

	<generated>
	^ self add: FamixFortran77Access new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newComment [

	<generated>
	^ self add: FamixFortran77Comment new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newEComment [

	<generated>
	^ self add: FamixFortran77EComment new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newEEntity [

	<generated>
	^ self add: FamixFortran77EEntity new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newIndexedFileAnchor [

	<generated>
	^ self add: FamixFortran77IndexedFileAnchor new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newInvocation [

	<generated>
	^ self add: FamixFortran77Invocation new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newPUBlockdata [

	<generated>
	^ self add: FamixFortran77PUBlockdata new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newPUComment [

	<generated>
	^ self add: FamixFortran77PUComment new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newPUFunction [

	<generated>
	^ self add: FamixFortran77PUFunction new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newPUMain [

	<generated>
	^ self add: FamixFortran77PUMain new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newPUProcedure [

	<generated>
	^ self add: FamixFortran77PUProcedure new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newPUSubroutine [

	<generated>
	^ self add: FamixFortran77PUSubroutine new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newParameter [

	<generated>
	^ self add: FamixFortran77Parameter new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newParameterNamed: aName [

	<generated>
	^ self add: (FamixFortran77Parameter named: aName)
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newProgramFile [

	<generated>
	^ self add: FamixFortran77ProgramFile new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newProgramUnit [

	<generated>
	^ self add: FamixFortran77ProgramUnit new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newSourceLanguage [

	<generated>
	^ self add: FamixFortran77SourceLanguage new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newSourceTextAnchor [

	<generated>
	^ self add: FamixFortran77SourceTextAnchor new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newType [

	<generated>
	^ self add: FamixFortran77Type new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newTypeNamed: aName [

	<generated>
	^ self add: (FamixFortran77Type named: aName)
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newUnknownSourceLanguage [

	<generated>
	^ self add: FamixFortran77UnknownSourceLanguage new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newVariable [

	<generated>
	^ self add: FamixFortran77Variable new
]

{ #category : #'entity creation' }
FamixFortran77TEntityCreator >> newVariableNamed: aName [

	<generated>
	^ self add: (FamixFortran77Variable named: aName)
]
