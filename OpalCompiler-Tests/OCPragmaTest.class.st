Class {
	#name : #OCPragmaTest,
	#superclass : #TestCase,
	#category : #'OpalCompiler-Tests-Source'
}

{ #category : #'method - tested' }
OCPragmaTest >> methodDoublePragma [
	^'methodDoublePragma
		<hello: 5>
		<hello: 2>'
]

{ #category : #'method - tested' }
OCPragmaTest >> methodNoPragma [
	^'methodNoPragma: aNum
		^aNum'
]

{ #category : #'method - tested' }
OCPragmaTest >> methodPragmaAfterBeforTemps [
	^'methodPragmaAfterBeforTemps
		<hello: 5>
		| aTemp |
		<world: #ok>
		<blue: true>'
]

{ #category : #'method - tested' }
OCPragmaTest >> methodPragmaTwoParam [
	^'methodDoublePragma
		<hello: 5 by: 2>'
]

{ #category : #'method - tested' }
OCPragmaTest >> methodPragmaUnarayMessage [
	^'methodPragmaUnarayMessage
		<hello>'
]

{ #category : #'method - tested' }
OCPragmaTest >> methodPrimitive [
	^'methodPrimitive
		<primitive: 4>'
]

{ #category : #'method - tested' }
OCPragmaTest >> methodPrimitivePragma [
	^'methodPrimitivePragma
		<hello: 1>
		<primitive: 4>
		<hello: 1>'
]

{ #category : #'method - tested' }
OCPragmaTest >> methodPrimitiveString [
	^'methodPrimitiveString
		<primitive: ''aFunctionName''>'
]

{ #category : #'method - tested' }
OCPragmaTest >> methodPrimitiveStringModule [
	^'methodPrimitiveStringModule
		<primitive: ''aFunctionName'' module: ''aModuleName''>'
]

{ #category : #'method - tested' }
OCPragmaTest >> methodSinglePragma [
	^'methodSinglePragma
		<hello: 5>'
]

{ #category : #tests }
OCPragmaTest >> testDoublePragma [
	| aRBMethode |
	aRBMethode := OpalCompiler new parse: self methodDoublePragma.

	self assert: aRBMethode compiledMethod pragmas first selector equals: #hello:.
	self assert: aRBMethode compiledMethod pragmas second selector equals: #hello:
]

{ #category : #tests }
OCPragmaTest >> testIsPrimitive [
	| aRBMethode |

	aRBMethode := OpalCompiler new parse: self methodPrimitive.
	self assert: aRBMethode isPrimitive
]

{ #category : #tests }
OCPragmaTest >> testNoPragma [

	OpalCompiler new parse: self methodNoPragma
]

{ #category : #tests }
OCPragmaTest >> testPragmaAfterBeforTemp [
	| aRBMethod |
	aRBMethod := OpalCompiler new parse: self methodPragmaAfterBeforTemps.

	self assert: aRBMethod compiledMethod pragmas first selector equals: #hello:.
	self assert: aRBMethod compiledMethod pragmas second selector equals: #world:
]

{ #category : #tests }
OCPragmaTest >> testPragmaTwoParam [
	| aRBMethode |
	aRBMethode := OpalCompiler new parse: self methodPragmaTwoParam.


	self assert: aRBMethode compiledMethod pragmas first selector equals: #hello:by:
]

{ #category : #tests }
OCPragmaTest >> testPragmaUnarayMessage [
	| aRBMethode |
	aRBMethode := OpalCompiler new parse: self methodPragmaUnarayMessage.

	self assert: aRBMethode compiledMethod pragmas first selector equals: #hello
]

{ #category : #tests }
OCPragmaTest >> testPrimitiveNumber [
	| aRBMethode |
	aRBMethode := OpalCompiler new parse: self methodPrimitive.
	self assert: aRBMethode compiledMethod primitive equals: 4
]

{ #category : #tests }
OCPragmaTest >> testPrimitivePragmaNumber [
	| aRBMethode |
	aRBMethode := OpalCompiler new parse: self methodPrimitivePragma.
	self assert: aRBMethode compiledMethod primitive equals: 4
]

{ #category : #tests }
OCPragmaTest >> testPrimitiveString [
	| aRBMethode |
	aRBMethode := OpalCompiler new parse: self methodPrimitiveString.

	self assert: aRBMethode compiledMethod primitive equals: 117
]

{ #category : #tests }
OCPragmaTest >> testPrimitiveStringModule [
	| aRBMethode |
	aRBMethode := OpalCompiler new parse: self methodPrimitiveStringModule.

	self assert: aRBMethode compiledMethod primitive equals: 117
]

{ #category : #tests }
OCPragmaTest >> testSinglePragma [
	| aRBMethode |
	aRBMethode := OpalCompiler new parse: self methodSinglePragma.
	self assert: aRBMethode compiledMethod pragmas first selector equals: #hello:
]
