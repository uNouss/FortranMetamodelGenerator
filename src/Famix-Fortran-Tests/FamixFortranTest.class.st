Class {
	#name : #FamixFortranTest,
	#superclass : #TestCase,
	#category : #'Famix-Fortran-Tests'
}

{ #category : #'private - utilities' }
FamixFortranTest class >> blockData [

	^ self blockData: 'bd'
]

{ #category : #'private - utilities' }
FamixFortranTest class >> blockData: blockDataName [

	^ FamixFortranBlockData new
		  name: blockDataName;
		  yourself
]

{ #category : #'accessing - comment' }
FamixFortranTest class >> comment [

	^ self comment: 'some comment'
]

{ #category : #'accessing - comment' }
FamixFortranTest class >> comment: aComment [

	^ FamixFortranComment new
		  content: aComment;
		  yourself
]

{ #category : #'private - utilities' }
FamixFortranTest class >> externalProcedure [

	^ self externalProcedure: 'extproc'
]

{ #category : #'private - utilities' }
FamixFortranTest class >> externalProcedure: aName [
	^ FamixFortranExternalProcedure new
		  name: aName;
		  yourself
]

{ #category : #'private - utilities' }
FamixFortranTest class >> function [
	^ self function: 'fct'
]

{ #category : #'private - utilities' }
FamixFortranTest class >> function: functionName [

	^ FamixFortranFunction new
		  name: functionName;
		  yourself
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

	^ FamixFortranProgram new
		  name: programName;
		  yourself
]

{ #category : #'private - utilities' }
FamixFortranTest class >> programFile [
	^ self programFile: 'file.f'
]

{ #category : #'private - utilities' }
FamixFortranTest class >> programFile: fileName [

	^ FamixFortranProgramFile new
		  filename: fileName;
		  version: 'Fortran77';
		  yourself
]

{ #category : #'private - utilities' }
FamixFortranTest class >> subroutine [

	^ self subroutine: 'sbroutine'
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
FamixFortranTest >> testEntityAccessingLocalVariableOfItsContainer: anEntity [

	| fct var |
	fct := self class function.
	var := self class variable.
	var parentBehaviouralEntity: fct.

	self assert: fct localVariables size equals: 1.
	self assert: fct localVariables first name equals: 'var'
]

{ #category : #tests }
FamixFortranTest >> testEntityWithComment [

	self testEntityWithComment: self class function.
	self testEntityWithComment: self class subroutine.
	self testEntityWithComment: self class program.
	self testEntityWithComment: self class blockData.
]

{ #category : #'private - running' }
FamixFortranTest >> testEntityWithComment: anEntity [

	| comment |
	comment := self class comment.

	self assert: anEntity comments isEmptyOrNil.
	self assert: comment container isNil.

	comment setOwner: anEntity.

	self assert: anEntity comments size equals: 1.
	self assert: comment container equals: anEntity
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
	self assert: anEntity localVariables isEmpty.

	variable1 parentBehaviouralEntity: anEntity.

	self assert: variable1 parentBehaviouralEntity equals: anEntity.
	self assert: anEntity localVariables size equals: 1.
	self
		assertCollection: anEntity localVariables
		hasSameElements: { variable1 }.

	self assert: variable2 parentBehaviouralEntity isNil.

	variable2 parentBehaviouralEntity: anEntity.

	self assert: variable2 parentBehaviouralEntity equals: anEntity.
	self assert: anEntity localVariables size equals: 2.
	self assertCollection: anEntity localVariables hasSameElements: { 
			variable1.
			variable2 }
]

{ #category : #'private - running' }
FamixFortranTest >> testExternalProcedureInvokingEntity: anEntity [

	| extProc invocation |
	extProc := self class externalProcedure.

	self assert: anEntity incomingInvocations size equals: 0.
	self assert: extProc outgoingInvocations size equals: 0.

	invocation := FamixFortranInvocation new
		              sender: extProc;
		              addCandidate: anEntity.

	self assert: anEntity incomingInvocations size equals: 1.
	self assert: anEntity incomingInvocations first equals: invocation.
	self assert: extProc outgoingInvocations size equals: 1.
	self assert: extProc outgoingInvocations first equals: invocation
]

{ #category : #tests }
FamixFortranTest >> testExternalProcedureInvokingFunction [
	self testExternalProcedureInvokingEntity: self class function.
]

{ #category : #tests }
FamixFortranTest >> testFunctionWithAccessingItsLocalVariable [

	self testEntityAccessingLocalVariableOfItsContainer: self class function
]

{ #category : #tests }
FamixFortranTest >> testFunctionWithParameters [
	self testEntityWithParameter: self class function.
]

{ #category : #tests }
FamixFortranTest >> testFunctionWithVariables [

	self testEntityWithVariable: self class function
]

{ #category : #tests }
FamixFortranTest >> testProgramFile [

	| pf |
	pf := self class programFile.
	self assert: pf filename equals: 'file.f'.
	self assert: pf version equals: 'Fortran77'
]

{ #category : #tests }
FamixFortranTest >> testProgramFileWithProgramAndSubProgram [

	| pf program function subroutine |
	pf := self class programFile.
	program := self class program.
	function := self class function.
	subroutine := self class subroutine.

	self assertEmpty: pf programUnits.

	pf
		addProgramUnit: program;
		addProgramUnit: function;
		addProgramUnit: subroutine.

	self assert: pf programUnits size equals: 3.

	self assertCollection: pf programUnits hasSameElements: { 
			program.
			function.
			subroutine }.

	self flag: #FIXME "Tester les contenances. qui contient quoi ?"
]

{ #category : #tests }
FamixFortranTest >> testSubroutineWithParameters [
	self testEntityWithParameter: self class subroutine.
]

{ #category : #tests }
FamixFortranTest >> testSubroutineWithVariables [

	self testEntityWithVariable: self class subroutine
]
