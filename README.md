# SeekerXPOverrides - Seeker

## How to use it?

Do this:

```Smalltalk
Metacello new
	baseline: 'SeekerXPImageCreation';
	repository: 'github://maxwills/SeekerXPOverrides:seeker';
	load.
#SeekerXPImageCreation asClass setupSeekerImage
```

And now you have an instrumented SEEKER image for SeekerExperiment, ready to use.
