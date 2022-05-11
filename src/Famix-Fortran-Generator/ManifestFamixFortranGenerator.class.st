"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestFamixFortranGenerator,
	#superclass : #PackageManifest,
	#category : #'Famix-Fortran-Generator-Manifest'
}

{ #category : #'code-critics' }
ManifestFamixFortranGenerator class >> ruleLongMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#FamixFortranGenerator #defineHierarchy #false)) #'2022-05-11T10:56:14.221631+02:00') )
]
