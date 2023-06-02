Class {
	#name : #FamixFortran77Test,
	#superclass : #TestCase,
	#category : #'Famix-Fortran77-Tests'
}

{ #category : #'private - utility' }
FamixFortran77Test >> comment: text [
	^FamixFortran77Comment new
		content: text;
		yourself
]

{ #category : #'private - utility' }
FamixFortran77Test >> invocationFrom: invocable to: anEntity [

	^ FamixFortran77Invocation new
		  sender: invocable;
		  addCandidate: anEntity;
		  yourself
]

{ #category : #'private - utility' }
FamixFortran77Test >> newNamedEntity: entityName toFamix: aClass [

	^ aClass new
		  name: entityName;
		  yourself
]

{ #category : #'private - utility' }
FamixFortran77Test >> programFile: fileName [

	^ FamixFortran77ProgramFile new
		  filename: fileName;
		  version: 'Fortran77';
		  yourself
]

{ #category : #running }
FamixFortran77Test >> testEntityAccessingLocalVariableOfItsContainer: anEntity [

	| fct var |
	fct := self newNamedEntity: 'fct' toFamix: FamixFortran77PUFunction.
	var := self newNamedEntity: 'var' toFamix: FamixFortran77Variable.
	var parentBehaviouralEntity: fct.

	self assert: fct localVariables size equals: 1.
	self assert: fct localVariables first name equals: 'var'
]

{ #category : #running }
FamixFortran77Test >> testEntityWithComment [

	self testEntityWithComment: (self newNamedEntity: 'fct' toFamix: FamixFortran77PUFunction).
	self testEntityWithComment: (self newNamedEntity: 'sub' toFamix: FamixFortran77PUSubroutine).
	self testEntityWithComment: (self newNamedEntity: 'main' toFamix: FamixFortran77PUMain).
	self testEntityWithComment: (self newNamedEntity: 'bdata' toFamix: FamixFortran77PUBlockdata)
]

{ #category : #running }
FamixFortran77Test >> testEntityWithComment: anEntity [

	| comment |
	comment := self comment: 'a comment'.

	self assert: anEntity comments isEmptyOrNil.
	self assert: comment commentedEntity isNil.

	anEntity addComment: comment.

	self assert: anEntity comments size equals: 1.
	self assert: comment commentedEntity equals: anEntity
]

{ #category : #running }
FamixFortran77Test >> testEntityWithParameter: anEntity [

	| parameter1 parameter2 |
	parameter1 := self newNamedEntity: 'parameter1' toFamix: FamixFortran77Parameter.
	parameter2 := self newNamedEntity: 'parameter2' toFamix: FamixFortran77Parameter.


	self assert: parameter1 parentBehaviouralEntity isNil.
	self assert: anEntity parameters isEmpty.

	parameter1 parentBehaviouralEntity: anEntity.

	self assert: parameter1 parentBehaviouralEntity equals: anEntity.
	self assert: anEntity parameters size equals: 1.
	self
		assertCollection: anEntity parameters
		hasSameElements: { parameter1 }.

	self assert: parameter2 parentBehaviouralEntity isNil.

	parameter2 parentBehaviouralEntity: anEntity.

	self assert: parameter2 parentBehaviouralEntity equals: anEntity.
	self assert: anEntity parameters size equals: 2.
	self assertCollection: anEntity parameters hasSameElements: { 
			parameter1.
			parameter2 }
]

{ #category : #running }
FamixFortran77Test >> testEntityWithVariable: anEntity [

	| variable1 variable2 |
	variable1 := self newNamedEntity: 'variable1' toFamix: FamixFortran77Variable.
	variable2 := self newNamedEntity: 'variable2' toFamix: FamixFortran77Variable.

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

{ #category : #running }
FamixFortran77Test >> testExternalProcedureInvokingEntity: anEntity [

	| extProc invocation |
	extProc := self newNamedEntity: 'fct' toFamix: FamixFortran77PUFunction.

	self assert: anEntity incomingInvocations size equals: 0.
	self assert: extProc outgoingInvocations size equals: 0.

	invocation := self invocationFrom: extProc to: anEntity.

	self assert: anEntity incomingInvocations size equals: 1.
	self assert: anEntity incomingInvocations first equals: invocation.
	self assert: extProc outgoingInvocations size equals: 1.
	self assert: extProc outgoingInvocations first equals: invocation
]

{ #category : #running }
FamixFortran77Test >> testExternalProcedureInvokingFunction [

	self testExternalProcedureInvokingEntity:
		(self newNamedEntity: 'fct' toFamix: FamixFortran77PUFunction)
]

{ #category : #running }
FamixFortran77Test >> testFunctionWithAccessingItsLocalVariable [

	self testEntityAccessingLocalVariableOfItsContainer:
		(self newNamedEntity: 'fct' toFamix: FamixFortran77PUFunction)
]

{ #category : #running }
FamixFortran77Test >> testFunctionWithParameters [

	self testEntityWithParameter:
		(self newNamedEntity: 'fct' toFamix: FamixFortran77PUFunction)
]

{ #category : #running }
FamixFortran77Test >> testFunctionWithVariables [

	self testEntityWithVariable:
		(self newNamedEntity: 'fct' toFamix: FamixFortran77PUFunction)
]

{ #category : #running }
FamixFortran77Test >> testProgramFile [

	| pf |
	pf := self programFile: 'file.f'.
	self assert: pf filename equals: 'file.f'.
	self assert: pf version equals: 'Fortran77'
]

{ #category : #running }
FamixFortran77Test >> testProgramFileWithProgramAndSubProgram [

	| pf program function subroutine |
	pf := self programFile: 'test.f'.
	program := self newNamedEntity: 'main' toFamix: FamixFortran77PUMain.
	function := self newNamedEntity: 'fct' toFamix: FamixFortran77PUFunction.
	subroutine := self newNamedEntity: 'sub' toFamix: FamixFortran77PUSubroutine.

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

{ #category : #running }
FamixFortran77Test >> testSubroutineWithParameters [

	self testEntityWithParameter:
		(self newNamedEntity: 'sub' toFamix: FamixFortran77PUSubroutine)
]

{ #category : #running }
FamixFortran77Test >> testSubroutineWithVariables [

	self testEntityWithVariable:
		(self newNamedEntity: 'sub' toFamix: FamixFortran77PUSubroutine)
]
