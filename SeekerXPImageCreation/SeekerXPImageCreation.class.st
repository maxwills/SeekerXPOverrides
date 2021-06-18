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

{ #category : #'as yet unclassified' }
SeekerXPImageCreation class >> setupSeekerImage [

	UIManager default showWaitCursorWhile: [ 
		Metacello new
			baseline: 'SeekerExperiment';
			repository:
				'github://StevenCostiou/SeekerExperiment:single-task-list-from-files';
			load.

		#SeekerExperiment1 asClass controlOrSeeker: #seeker.

		Metacello new
			baseline: 'Seeker';
			repository: 'github://maxwills/SeekerDebugger:seeker-xp';
			load.

		#SeekerDebuggerPresenter asClass showInDebugger: true.

		Metacello new
			baseline: 'SeekerXPOverrides';
			repository: 'github://maxwills/SeekerXPOverrides:seeker';
			load.

		#SeekerXPOverrides asClass install.

		#SeekerExperiment asClass instrumentSystemForSeeker ].
	self inform: 'Setup finished'
]
