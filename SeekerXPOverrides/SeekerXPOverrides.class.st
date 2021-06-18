Class {
	#name : #SeekerXPOverrides,
	#superclass : #Object,
	#category : #SeekerXPOverrides
}

{ #category : #actions }
SeekerXPOverrides class >> doIcebergStunt [
	(IceRepository repositories select: [:r| r name='SeekerXPOverrides']) first discardChanges.

]

{ #category : #actions }
SeekerXPOverrides class >> install [

	self doIcebergStunt.
	self overrideStDebuggerActionModel
]

{ #category : #actions }
SeekerXPOverrides class >> overrideStDebuggerActionModel [

	| methodSource |
	self flag: 'Hacky. Should be changed in the future'.

	methodSource := (StDebugger >> #debuggerActionModel) sourceCode.
	methodSource := methodSource
		                copyReplaceAll: StDebuggerActionModel name asString
		                with:
		                SeekerStDebuggerDebuggerActionModel name asString.
	StDebugger compile: methodSource

	"(StDebugger >> #debuggerActionModel) browse"
]
