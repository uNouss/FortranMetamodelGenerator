Class {
	#name : #FamixFortran77Generator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'access',
		'argument',
		'body',
		'file',
		'invocation',
		'parameter',
		'programUnit',
		'puBlockdata',
		'puComment',
		'puFunction',
		'puMain',
		'puProcedure',
		'puSubroutine',
		'variable',
		'include',
		'tWithBody',
		'tStaticInvocable',
		'tStaticInvocation',
		'tWithStaticInvocations'
	],
	#category : #'Famix-Fortran77-Generator'
}

{ #category : #accessing }
FamixFortran77Generator class >> packageName [

	^ #'Famix-Fortran77-Entities'
]

{ #category : #accessing }
FamixFortran77Generator class >> prefix [

	^ #'FamixFortran77'
]

{ #category : #accessing }
FamixFortran77Generator class >> submetamodels [

	^ { FamixGenerator }
]

{ #category : #'class comment' }
FamixFortran77Generator >> accessEntityComment [

	^ 'an access of a variable'
]

{ #category : #'class comment' }
FamixFortran77Generator >> argumentEntityComment [

	^ 'an actual parameter'
]

{ #category : #'class comment' }
FamixFortran77Generator >> bodyEntityComment [

	^ 'an executable code of a program unit'
]

{ #category : #definition }
FamixFortran77Generator >> defineClasses [

	super defineClasses.

	access := builder
		          newClassNamed: #Access
		          comment: self accessEntityComment.

	"argument := builder
		            newClassNamed: #Argument
		            comment: self argumentEntityComment."

	body := builder newClassNamed: #Body comment: self bodyEntityComment.
	"fcomment := builder
		            newClassNamed: #FComment
		            comment: self body."
	comment comment: self fCommentEntityComment.

	file := builder newClassNamed: #File comment: self fileEntityComment.

	invocation := builder
		              newClassNamed: #Invocation
		              comment: self invocationEntityComment.

	include := builder newClassNamed: #Include comment: ''.

	parameter := builder
		             newClassNamed: #Parameter
		             comment: self parameterEntityComment.

	programUnit := builder
		               newClassNamed: #ProgramUnit
		               comment: self programUnitEntityComment.

	puBlockdata := builder
		               newClassNamed: #PUBlockdata
		               comment: self puBlockdataEntityComment.

	puComment := builder
		             newClassNamed: #PUComment
		             comment: self puCommentEntityComment.

	puFunction := builder
		              newClassNamed: #PUFunction
		              comment: self puFunctionEntityComment.

	puMain := builder
		          newClassNamed: #PUMain
		          comment: self puMainEntityComment.

	puProcedure := builder
		               newClassNamed: #PUProcedure
		               comment: self puProcedureEntityComment.

	puSubroutine := builder
		                newClassNamed: #PUSubroutine
		                comment: self puSubroutineEntityComment.

	variable := builder
		            newClassNamed: #Variable
		            comment: self variableEntityComment.
		
	


]

{ #category : #definition }
FamixFortran77Generator >> defineHierarchy [

	super defineHierarchy.

	access --|> #TAccess.

	body --|> #TWithInvocations.
	body --|> #TWithAccesses.

	file --|> namedEntity.
	file --|> #TCompilationUnit.
	file --|> #TSourceEntity.
	file --|> #TEntityMetaLevelDependency.
	file --|> #TWithFileIncludes.

	include --|> #TFileInclude.

	invocation --|> #TInvocation.

	"parameter --|> namedEntity.
	parameter --|> #TAccessible."
	parameter --|> #TParameter.

	programUnit --|> namedEntity.
	programUnit --|> #TSourceEntity.
	programUnit --|> #TWithLocalVariables.
	programUnit --|> #TEntityMetaLevelDependency.

	puBlockdata --|> programUnit.
	puBlockdata --|> #TWithAccesses.
	puBlockdata --|> #TWithLocalVariables.
	
	puComment --|> programUnit.

	puFunction --|> puProcedure.

	puMain --|> programUnit.
	puMain --|> tWithBody.

	puProcedure --|> programUnit.
	puProcedure --|> tWithBody.
	"puProcedure --|> #TInvocable."
	puProcedure  --|> tStaticInvocable.
	puProcedure --|> #THasSignature.
	puProcedure --|> #TWithParameters.
	puProcedure --|> #TWithLocalVariables.
	"puProcedure --|> #TWithGlobalVariables."

	puSubroutine --|> puProcedure.

	variable --|> namedEntity.
	variable --|> #TAccessible.
	variable --|> #TLocalVariable.
]

{ #category : #definition }
FamixFortran77Generator >> defineProperties [

	super defineProperties.

	(comment property: #isEsope type: #Boolean defaultValue: false) 
		comment: 'It is esope comment ?'.
	
	(file property: #version type: #String) comment:
		'Fortran version of the file'.

	(file property: #filename type: #String) comment:
		'Fortran name of the file'.

	(puFunction property: #isEsope type: #Boolean defaultValue: false) 
		comment: 'It is kind of esope function ?'.

	(variable property: #isEsope type: #Boolean defaultValue: false) 
		comment: 'It is esope attribute variable from segment definition ?'.
	
	(variable property: #segment type: #String)
		comment: 'variable belong to this segment'.

]

{ #category : #definition }
FamixFortran77Generator >> defineRelations [

	super defineRelations.

	"body <>-* invocation.
	body <>-* access."

	"(file property: #file) *- (file property: #includes)."
	file <>-* programUnit.

	programUnit <>-* comment.

	puBlockdata <>-* variable.
	puBlockdata <>- body.

	puMain <>- body.
	puMain <>-* variable.

	"puProcedure <>-* argument.
	puProcedure <>-* parameter.
	puProcedure <>-* variable."
	puProcedure <>- body.

	"Implements the fact that an entity with a body has a body."
	"(tWithBody property: #body)
		<>- (body property: #container)."

	"Implements relations related to static invocation,"
	"(tStaticInvocable property: #incomingStaticInvocations)
		-* (tStaticInvocation property: #target).
		
	(tWithStaticInvocations property: #outgoingStaticInvocations)
		-* (tStaticInvocation property: #caller)"
]

{ #category : #definition }
FamixFortran77Generator >> defineTraits [

	super defineTraits.

	tWithBody := builder newTraitNamed: #TWithBody.

	"By default, the basic infrastructure of Famix implements 'dynamic' invocation.
	 Here, we implement 'static' invocation using so it can be extracted for re-use later."
	tStaticInvocable := builder newTraitNamed: #TStaticInvocable.
	tStaticInvocation := builder newTraitNamed: #TStaticInvocation.
	tWithStaticInvocations := builder newTraitNamed:
		                          #TWithStaticInvocations
]

{ #category : #'class comment' }
FamixFortran77Generator >> fCommentEntityComment [

	^ 'a fortran comment'
]

{ #category : #'class comment' }
FamixFortran77Generator >> fileEntityComment [

	^ 'a fortran file'
]

{ #category : #'class comment' }
FamixFortran77Generator >> invocationEntityComment [

	self flag: #FIXME. "on invoque avec des arguments qui matchent les parametres
	donc les arguments doivent être dans invocations ?"
	^ 'an invocation of procedure inside a procedure or main program'
]

{ #category : #definition }
FamixFortran77Generator >> newBuilder [

	^ super newBuilder
		  withImportingContext;
		  yourself
]

{ #category : #'class comment' }
FamixFortran77Generator >> parameterEntityComment [

	^ 'a formal parameter'
]

{ #category : #'class comment' }
FamixFortran77Generator >> programUnitEntityComment [

	^ 'a program unit'
]

{ #category : #'class comment' }
FamixFortran77Generator >> puBlockdataEntityComment [

	^ 'a block data for common variable'
]

{ #category : #'class comment' }
FamixFortran77Generator >> puCommentEntityComment [

	^ 'a comment belongs to fortran file'
]

{ #category : #'class comment' }
FamixFortran77Generator >> puFunctionEntityComment [

	^ 'a function procedure'
]

{ #category : #'class comment' }
FamixFortran77Generator >> puMainEntityComment [

	^ 'a main program'
]

{ #category : #'class comment' }
FamixFortran77Generator >> puProcedureEntityComment [

	^ 'a procedure'
]

{ #category : #'class comment' }
FamixFortran77Generator >> puSubroutineEntityComment [

	^ 'a subroutine procedure'
]

{ #category : #'class comment' }
FamixFortran77Generator >> variableEntityComment [

	self flag: #FIXME. "a variable can be a constant(fortran keyword parameter)
	 or have other attributes.
	 a variable can have alose a default value in case of paramter (must have a value at declaration), ... can have a type (exclipicitly declared or kind of infered)"
	^ 'a local variable of a program unit'
]
