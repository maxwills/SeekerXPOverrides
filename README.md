# SeekerXPOverrides - Control

## How to use it?

Do this:

```Smalltalk
Metacello new
	baseline: 'SeekerXPImageCreation';
	repository: 'github://maxwills/SeekerXPOverrides:control';
	load.
#SeekerXPImageCreation asClass setupControlImage
```

And now you have an instrumented CONTROL image for SeekerExperiment, ready to use.
