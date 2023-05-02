Class {
	#name : #BaselineOfFamixFortran77,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixFortran77
}

{ #category : #baselines }
BaselineOfFamixFortran77 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec description: 'Fortran77 Famix model'.
			self defineDependencies: spec.
			self definePackages: spec ]
]

{ #category : #baselines }
BaselineOfFamixFortran77 >> defineDependencies: spec [
	spec
		baseline: 'Famix' with: [ spec repository: 'https://github.com/moosetechnology/Famix' ]
]

{ #category : #baselines }
BaselineOfFamixFortran77 >> definePackages: spec [
	spec
		repository: 'https://github.com/uNouss/FortranMetamodelGenerator';
		package: 'Famix-Fortran77-Entities' with: [ spec requires: #(Famix) ] ;
		package: 'Famix-Fortran77-Generator' with: [ spec requires: #(Famix) ]

]
