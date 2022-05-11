Class {
	#name : #FamixFortranTest,
	#superclass : #TestCase,
	#category : #'Famix-Fortran-Tests'
}

{ #category : #'private - utilities' }
FamixFortranTest class >> function [
	^ self function: 'fct'
]

{ #category : #'private - utilities' }
FamixFortranTest class >> function: functionName [
	^ FamixFortranPUFunction new name: functionName; yourself.
]

{ #category : #'private - utilities' }
FamixFortranTest class >> invocationFrom: aCaller target: anEntity [
	^ FamixFortranInvocation new caller: aCaller; target: anEntity; yourself.
]

{ #category : #'private - utilities' }
FamixFortranTest class >> invocationFrom: aCaller to: anEntity [
	^ FamixFortranInvocation new caller: aCaller; target: anEntity; yourself.
]

{ #category : #'private - utilities' }
FamixFortranTest class >> parameter [
	^ self parameter: 'param'
]

{ #category : #'private - utilities' }
FamixFortranTest class >> parameter: parameterName [
	^ FamixFortranParameter new name: parameterName; yourself.
]

{ #category : #'private - utilities' }
FamixFortranTest class >> program [
	^ self program: 'program'
]

{ #category : #'private - utilities' }
FamixFortranTest class >> program: programName [
	^ FamixFortranPUMain new name: programName; yourself.
]

{ #category : #'private - utilities' }
FamixFortranTest class >> programFile [
	^ self programFile: 'file.f'
]

{ #category : #'private - utilities' }
FamixFortranTest class >> programFile: fileName [
	^ FamixFortranProgramFile new name: fileName; version: 'FORTRAN77'; yourself.
]

{ #category : #'private - utilities' }
FamixFortranTest class >> subroutine [
	^ self subroutine: 'sbrouine'
]

{ #category : #'private - utilities' }
FamixFortranTest class >> subroutine: subroutineName [
	^ FamixFortranSubroutine new name: subroutineName; yourself.
]

{ #category : #'private - utilities' }
FamixFortranTest class >> variable [
	^ self variable: 'var'
]

{ #category : #'private - utilities' }
FamixFortranTest class >> variable: variableName [
	^ FamixFortranVariable new name: variableName; yourself.
]

{ #category : #'private - running' }
FamixFortranTest >> testEntityWithParameter: anEntity [
	| parameter1 parameter2 |
	parameter1 := self class parameter: 'parameter1'.
	parameter2 := self class parameter: 'parameter2'.
	
	
	self assert: parameter1 parentBehaviouralEntity isNil.
	self assert: anEntity parameters isEmpty.
	
	parameter1 parentBehaviouralEntity: anEntity.
	
	self assert: parameter1 parentBehaviouralEntity equals: anEntity.
	self assert: anEntity parameters size equals: 1.
	self assertCollection: anEntity parameters hasSameElements: { parameter1 }.
	
	self assert: parameter2 parentBehaviouralEntity isNil.
	
	parameter2 parentBehaviouralEntity: anEntity.
		
	self assert: parameter2 parentBehaviouralEntity equals: anEntity.
	self assert: anEntity parameters size equals: 2.
	self assertCollection: anEntity parameters hasSameElements: { parameter1 . parameter2 }.
	
]

{ #category : #'private - running' }
FamixFortranTest >> testEntityWithVariable: anEntity [
	| variable1 variable2 |
	variable1 := self class variable: 'variable1'.
	variable2 := self class variable: 'variable2'.
	
	self assert: variable1 parentBehaviouralEntity isNil.
	self assert: anEntity variables isEmpty.
	
	variable1 parentBehaviouralEntity: anEntity.
	
	self assert: variable1 parentBehaviouralEntity equals: anEntity.
	self assert: anEntity variables size equals: 1.
	self assertCollection: anEntity variables hasSameElements: { variable1 }.
	
	self assert: variable2 parentBehaviouralEntity isNil.
	
	variable2 parentBehaviouralEntity: anEntity.
		
	self assert: variable2 parentBehaviouralEntity equals: anEntity.
	self assert: anEntity variables size equals: 2.
	self assertCollection: anEntity variables hasSameElements: { variable1 . variable2 }.
	
]

{ #category : #'private - running' }
FamixFortranTest >> testFunctionWithParameters [
	self testEntityWithParameter: self class function.
]

{ #category : #'private - running' }
FamixFortranTest >> testSubroutineWithParameters [
	self testEntityWithParameter: self class subroutine.
]
