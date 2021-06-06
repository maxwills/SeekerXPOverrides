# SeekerXPOverrides - Seeker

## How to use it?

Do this:

```Smalltalk
Metacello new
    baseline: 'SeekerExperiment';
    repository: 'github://StevenCostiou/SeekerExperiment:single-task-list-from-files';
    load.

Metacello new
    baseline: 'Seeker';
    repository: 'github://maxwills/SeekerDebugger:seeker-xp';
    load.

Metacello new
    baseline: 'SeekerXPOverrides';
    repository: 'github://maxwills/SeekerXPOverrides:seeker';
    load.

(IceRepository repositories select: [:r| r name='SeekerXPOverrides']) first discardChanges "Don't ask. It works".

#SeekerExperiment asClass instrumentSystemForSeeker
```

And now you have an instrumented SEEKER image for SeekerExperiment, ready to use.
