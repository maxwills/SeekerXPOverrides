Class {
	#name : #BaselineOfSeekerXPOverrides,
	#superclass : #BaselineOf,
	#category : #BaselineOfSeekerXPOverrides
}

{ #category : #baselines }
BaselineOfSeekerXPOverrides >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec
			baseline: 'SeekerExperiment'
			with: [ spec repository: 'github://StevenCostiou/SeekerExperiment:single-task-list-from-files' ].
		
		spec package: 'SeekerXPOverrides']  
]
