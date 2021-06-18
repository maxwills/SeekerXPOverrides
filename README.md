# SeekerXPOverrides - Seeker

## How to use it?

Do this:

```Smalltalk
Metacello new
    baseline: 'SeekerExperiment';
    repository: 'github://StevenCostiou/SeekerExperiment:single-task-list-from-files';
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

#SeekerExperiment asClass instrumentSystemForSeeker
```

And now you have an instrumented SEEKER image for SeekerExperiment, ready to use.
