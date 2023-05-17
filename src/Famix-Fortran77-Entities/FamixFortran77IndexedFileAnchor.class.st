"
Its the sourceAnchor (position of the token) in the source file (startLine@startColumn)-(endLine@endColumn).
"
Class {
	#name : #FamixFortran77IndexedFileAnchor,
	#superclass : #FamixFortran77SourceAnchor,
	#traits : 'FamixTFileNavigation',
	#classTraits : 'FamixTFileNavigation classTrait',
	#category : #'Famix-Fortran77-Entities-Entities'
}

{ #category : #meta }
FamixFortran77IndexedFileAnchor class >> annotation [

	<FMClass: #IndexedFileAnchor super: #FamixFortran77SourceAnchor>
	<package: #'Famix-Fortran77-Entities'>
	<generated>
	^ self
]
