"
procedure comment
"
Class {
	#name : #FamixFortran2003Procedure,
	#superclass : #FamixFortran2003Entity,
	#traits : 'FamixFortran2003TProgramUnit + FamixFortran2003TStaticInvocable + FamixFortran2003TWithBody + FamixTDefinedInModule + FamixTHasSignature + FamixTWithFiles + FamixTWithLocalVariables + FamixTWithParameters',
	#classTraits : 'FamixFortran2003TProgramUnit classTrait + FamixFortran2003TStaticInvocable classTrait + FamixFortran2003TWithBody classTrait + FamixTDefinedInModule classTrait + FamixTHasSignature classTrait + FamixTWithFiles classTrait + FamixTWithLocalVariables classTrait + FamixTWithParameters classTrait',
	#category : #'Famix-Fortran2003-Entities-Entities'
}

{ #category : #meta }
FamixFortran2003Procedure class >> annotation [

	<FMClass: #Procedure super: #FamixFortran2003Entity>
	<package: #'Famix-Fortran2003-Entities'>
	<generated>
	^self
]
