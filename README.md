# Julia wrappers for GAP packages

This repository contains a bunch of Julia packages that act as
wrappers for [GAP](https://www.gap-system.org) packages.


## GAP versus Julia versions

You may have noticed that the versions used by the Julia wrapper packages do
not match the versions of the wrapped GAP packages. The reason for this is
that Julia uses semantic versioning, while GAP does not. Also, GAP puts fewer
restrictions on what constitutes a valid version string. As such, in general
it in general does not make sense to map GAP versions directly to Julia
versions.
