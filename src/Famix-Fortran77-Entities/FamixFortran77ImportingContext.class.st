"
This class is used to choose the entities to be imported when loading a model from file.
It is used by `MiImportingContextPresenter` in a `MiImportModelFromFileDialog` to import a FamixFortran77Model.
"
Class {
	#name : #FamixFortran77ImportingContext,
	#superclass : #FamixImportingContext,
	#category : #'Famix-Fortran77-Entities-Import'
}

{ #category : #accessing }
FamixFortran77ImportingContext class >> importedMetamodel [

	<generated>
	^ FamixFortran77Model metamodel
]

{ #category : #importing }
FamixFortran77ImportingContext >> importAccess [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Access)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importComment [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Comment)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importEComment [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #EComment)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importEEntity [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #EEntity)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importIndexedFileAnchor [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #IndexedFileAnchor)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importInvocation [

	<generated>
	^ self importAssociation: (self class fm3ClassNamed: #Invocation)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importPUBlockdata [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #PUBlockdata)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importPUComment [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #PUComment)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importPUFunction [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #PUFunction)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importPUMain [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #PUMain)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importPUProcedure [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #PUProcedure)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importPUSubroutine [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #PUSubroutine)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importParameter [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Parameter)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importProgramFile [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ProgramFile)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importProgramUnit [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #ProgramUnit)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importSourceLanguage [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #SourceLanguage)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importSourceTextAnchor [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #SourceTextAnchor)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importType [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Type)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importUnknownSourceLanguage [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #UnknownSourceLanguage)
]

{ #category : #importing }
FamixFortran77ImportingContext >> importVariable [

	<generated>
	^ self importConcreteEntity: (self class fm3ClassNamed: #Variable)
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportAccess [

	<generated>
	^ self shouldImport: #Access
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportComment [

	<generated>
	^ self shouldImport: #Comment
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportEComment [

	<generated>
	^ self shouldImport: #EComment
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportEEntity [

	<generated>
	^ self shouldImport: #EEntity
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportIndexedFileAnchor [

	<generated>
	^ self shouldImport: #IndexedFileAnchor
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportInvocation [

	<generated>
	^ self shouldImport: #Invocation
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportPUBlockdata [

	<generated>
	^ self shouldImport: #PUBlockdata
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportPUComment [

	<generated>
	^ self shouldImport: #PUComment
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportPUFunction [

	<generated>
	^ self shouldImport: #PUFunction
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportPUMain [

	<generated>
	^ self shouldImport: #PUMain
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportPUProcedure [

	<generated>
	^ self shouldImport: #PUProcedure
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportPUSubroutine [

	<generated>
	^ self shouldImport: #PUSubroutine
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportParameter [

	<generated>
	^ self shouldImport: #Parameter
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportProgramFile [

	<generated>
	^ self shouldImport: #ProgramFile
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportProgramUnit [

	<generated>
	^ self shouldImport: #ProgramUnit
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportSourceLanguage [

	<generated>
	^ self shouldImport: #SourceLanguage
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportSourceTextAnchor [

	<generated>
	^ self shouldImport: #SourceTextAnchor
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportType [

	<generated>
	^ self shouldImport: #Type
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportUnknownSourceLanguage [

	<generated>
	^ self shouldImport: #UnknownSourceLanguage
]

{ #category : #testing }
FamixFortran77ImportingContext >> shouldImportVariable [

	<generated>
	^ self shouldImport: #Variable
]
