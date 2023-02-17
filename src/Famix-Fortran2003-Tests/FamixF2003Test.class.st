Class {
	#name : #FamixF2003Test,
	#superclass : #TestCase,
	#instVars : [
		'var',
		'main',
		'file'
	],
	#category : #'Famix-Fortran2003-Tests'
}

{ #category : #'for tests' }
FamixF2003Test class >> file [
	^ FamixF2003File new
		  name: 'prog.f';
		  filename: 'prog.f';
		  version: 'Fortran2003';
		  yourself
]

{ #category : #running }
FamixF2003Test >> setUp [

	super setUp.

	file := FamixF2003File new
		     name: 'prog.f';
		     filename: 'prog.f';
		     version: 'Fortran2003';
		     yourself.
	main := FamixF2003Program new name: 'main'; yourself.
	var := FamixF2003Variable new name: 'tmp'; yourself.
	
	main addContainerFile: file.
	
	file addProgramUnit: main
	
]

{ #category : #tests }
FamixF2003Test >> testFile [

	self assert: file filename equals: 'prog.f'.
	self assert: file version equals: 'Fortran2003'
]
