Class {
	#name : #SeekerXPImageCreation,
	#superclass : #Object,
	#category : #SeekerXPImageCreation
}

{ #category : #'as yet unclassified' }
SeekerXPImageCreation class >> setupControlImage [

	UIManager default showWaitCursorWhile: [ 
		Metacello new
			baseline: 'SeekerExperiment';
			repository:
				'github://StevenCostiou/SeekerExperiment:single-task-list-from-files';
			load.

		Metacello new
			baseline: 'SeekerXPOverrides';
			repository: 'github://maxwills/SeekerXPOverrides:control';
			load.

		(IceRepository repositories select: [ :r | 
			 r name = 'SeekerXPOverrides' ]) first discardChanges. "Don't ask. It works"

		#SeekerExperiment asClass instrumentSystemForSeeker ].
	self inform: 'Setup finished'
]
