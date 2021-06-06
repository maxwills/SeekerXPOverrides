# SeekerXPOverrides

## How to use it?

Do this:

```Smalltalk
Metacello new
    baseline: 'SeekerXPOverrides';
    repository: 'github://maxwills/SeekerXPOverrides:XXXX';
    load.
```

Where 'XXXX' is either 'control' or 'seeker'.

Then:

```Smalltalk
SeekerExperiment instrumentSystemForSeeker.
```

And now you have an instrumented image for SeekerExperiment.
