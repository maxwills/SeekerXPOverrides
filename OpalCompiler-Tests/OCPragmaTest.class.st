Class {
	#name : #OCPragmaTest,
	#superclass : #TestCase,
	#category : #'OpalCompiler-Tests-Source'
}

{ #category : #tests }
OCPragmaTest >> testPragmaAfterBeforTemp [
	| aRBMethod |
	aRBMethod := OpalCompiler new parse: self methodPragmaAfterBeforTemps.

	self assert: aRBMethod compiledMethod pragmas first selector equals: #hello:.
	self assert: aRBMethod compiledMethod pragmas second selector equals: #world:
]
