# SeekerXPOverrides

## How to use it?

Do this:

Metacello new
    baseline: 'SeekerXPOverrides';
    repository: 'github://maxwills/SeekerXPOverrides:XXXX';
    load.

Where 'XXXX' is either 'control' or 'seeker'.

Then:

SeekerExperiment instrumentSystemForSeeker.

And now you have an instrumented image for SeekerExperiment.
