Class {
	#name : #FamixFortran2003Generator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'file',
		'programUnit',
		'program',
		'puComment',
		'module',
		'procedure',
		'subroutine',
		'function',
		'body',
		'variable',
		'parameter',
		'invocation',
		'access',
		'usage',
		'include',
		'tWithBody',
		'tStaticInvocable',
		'tWithStaticInvocations',
		'tStaticInvocation',
		'tWithProgramUnits',
		'tProgramUnit',
		'namedConstant'
	],
	#category : #'Famix-Fortran2003-Generator'
}

{ #category : #accessing }
FamixFortran2003Generator class >> packageName [

	^ #'Famix-Fortran2003-Entities'
]

{ #category : #accessing }
FamixFortran2003Generator class >> prefix [

	^ #'FamixFortran2003'
]

{ #category : #accessing }
FamixFortran2003Generator class >> submetamodels [

	^ { FamixGenerator }
]

{ #category : #'class comment' }
FamixFortran2003Generator >> accessComment [

	^ 'access comment'
]

{ #category : #'class comment' }
FamixFortran2003Generator >> bodyComment [

	^ 'body comment'
]

{ #category : #definition }
FamixFortran2003Generator >> defineClasses [

	super defineClasses.

	file := builder newClassNamed: #File comment: self fileComment.
	programUnit := builder
		               newClassNamed: #ProgramUnit
		               comment: self programUnitComment.
	program := builder
		           newClassNamed: #Program
		           comment: self programComment.
	puComment := builder
		             newClassNamed: #PUComment
		             comment: self puCommentComment.
	module := builder newClassNamed: #Module comment: self moduleComment.
	procedure := builder
		             newClassNamed: #Procedure
		             comment: self procedureComment.
	subroutine := builder
		              newClassNamed: #Subroutine
		              comment: self subroutineComment.
	function := builder
		            newClassNamed: #Function
		            comment: self functionComment.
	body := builder newClassNamed: #Body comment: self bodyComment.
	variable := builder
		            newClassNamed: #Variable
		            comment: self variableComment.
	parameter := builder
		             newClassNamed: #Parameter
		             comment: self parameterComment.
	invocation := builder
		              newClassNamed: #Invocation
		              comment: self invocationComment.
	access := builder newClassNamed: #Access comment: self accessComment.
	usage := builder newClassNamed: #Usage comment: self usageComment.
	include := builder
		           newClassNamed: #Include
		           comment: self includeComment.
	namedConstant := builder
		                 newClassNamed: #NamedConstant
		                 comment: self namedConstantComment
]

{ #category : #definition }
FamixFortran2003Generator >> defineHierarchy [

	super defineHierarchy.

	file --|> #TNamedEntity.
	file --|> #TSourceEntity.
	file --|> #TEntityMetaLevelDependency.
	file --|> #TWithFileIncludes.
	file --|> tWithProgramUnits.

	tProgramUnit --|> tWithProgramUnits.
	tProgramUnit --|> #TNamedEntity.
	tProgramUnit --|> #TSourceEntity.
	tProgramUnit --|> #TWithComments.
	tProgramUnit --|> #TEntityMetaLevelDependency.
	
	tWithBody --|> #TWithStatements.

	puComment --|> tProgramUnit.

	program --|> tProgramUnit.
	program --|> tWithBody.
	program --|> #TWithFiles.
	program --|> #TWithLocalVariables.

	procedure --|> tProgramUnit.
	procedure --|> tWithBody.
	procedure --|> tStaticInvocable.
	procedure --|> #TWithFiles.
	procedure --|> #TDefinedInModule.
	procedure --|> #THasSignature.
	procedure --|> #TWithLocalVariables.
	procedure --|> #TWithParameters.


	module --|> tProgramUnit.
	module --|> namedEntity.
	module --|> #TModule.
	module --|> #TWithFiles.
	module --|> #TWithLocalVariables.


	function --|> procedure.
	subroutine --|> procedure.

	body --|> tWithStaticInvocations.
	body --|> #TWithAccesses.

	parameter --|> #TParameter.
	parameter --|> #TAccessible.

	variable --|> #TLocalVariable.
	variable --|> #TAccessible.


	"Reified links between entities will usually inherit from association."
	include --|> #TAssociation.
	include --|> #TFileInclude.

	access --|> #TAssociation.
	access --|> #TAccess.

	invocation --|> #TAssociation.
	invocation --|> tStaticInvocation.

	usage --|> #TAssociation
]

{ #category : #definition }
FamixFortran2003Generator >> defineProperties [

	super defineProperties.
	
	((tWithProgramUnits property: #programUnits) comment:
		 'ProgramUnits contained in the programFile')
	<>-* ((tProgramUnit property: #container) comment:
			 'Entity containing this programUnit').
			
	(file property: #filename type: #String) comment: ''.
	(file property: #version type: #String) comment: '' 
]

{ #category : #definition }
FamixFortran2003Generator >> defineRelations [

	super defineRelations.
	
	"Implement module's usage mechanism."
	(module property: #incomingUsageRelations)
		-* (usage property: #target).
		
	(module property: #outgoingUsageRelations)
		-* (usage property: #source).
	
	(program property: #outgoingUsageRelations)
		-* (usage property: #source).
		
	"Implements the fact that an entity with a body has a body."
	(tWithBody property: #body)
		<>- (body property: #container).
	
	"Implements relations related to static invocation,"
	(tStaticInvocable property: #incomingStaticInvocations)
		-* (tStaticInvocation property: #target).
		
	(tWithStaticInvocations property: #outgoingStaticInvocations)
		-* (tStaticInvocation property: #caller)
]

{ #category : #definition }
FamixFortran2003Generator >> defineTraits [

	super defineTraits.

	tWithProgramUnits := builder
		                     newTraitNamed: #TWithProgramUnits
		                     comment:
		                     'I allow an entity to contain ProgramUnits'.
	tProgramUnit := builder
		                newTraitNamed: #TProgramUnit
		                comment: 'I represent a ProgramUnit in Fortran.
								I have a container which is a TWithProgramUnits.'.

	tWithBody := builder newTraitNamed: #TWithBody.
	
	"By default, the basic infrastructure of Famix-NG implements 'dynamic' invocation.
	 Here, we implement 'static' invocation using so it can be extracted for re-use later."
	tStaticInvocable := builder newTraitNamed: #TStaticInvocable.
	tStaticInvocation := builder newTraitNamed: #TStaticInvocation.
	tWithStaticInvocations := builder newTraitNamed: #TWithStaticInvocations.
]

{ #category : #'class comment' }
FamixFortran2003Generator >> fileComment [

	^ 'file comment'
]

{ #category : #'class comment' }
FamixFortran2003Generator >> functionComment [

	^ 'function comment'
]

{ #category : #'class comment' }
FamixFortran2003Generator >> includeComment [

	^ 'include comment'
]

{ #category : #'class comment' }
FamixFortran2003Generator >> invocationComment [

	^ 'invocation comment'
]

{ #category : #'class comment' }
FamixFortran2003Generator >> moduleComment [

	^ 'module comment'
]

{ #category : #'class comment' }
FamixFortran2003Generator >> namedConstantComment [

	^ 'namedConstant comment'
]

{ #category : #definition }
FamixFortran2003Generator >> newBuilder [

	^ super newBuilder
		  withImportingContext;
		  yourself
]

{ #category : #'class comment' }
FamixFortran2003Generator >> parameterComment [

	^ 'parameter comment'
]

{ #category : #'class comment' }
FamixFortran2003Generator >> procedureComment [

	^ 'procedure comment'
]

{ #category : #'class comment' }
FamixFortran2003Generator >> programComment [

	^ 'program comment'
]

{ #category : #'class comment' }
FamixFortran2003Generator >> programUnitComment [

	^ 'program unit comment'
]

{ #category : #'class comment' }
FamixFortran2003Generator >> puCommentComment [

	^ 'pucomment comment'
]

{ #category : #'class comment' }
FamixFortran2003Generator >> subroutineComment [

	^ 'subroutine comment'
]

{ #category : #'class comment' }
FamixFortran2003Generator >> usageComment [

	^ 'usage comment'
]

{ #category : #'class comment' }
FamixFortran2003Generator >> variableComment [

	^ 'variable comment'
]
