```
julia> GAP_pkg_ferret.load()
#W dlopen() error: dlopen(/Users/mhorn/.julia/artifacts/49b1930968bd5aa85f37a4c6770a3a524bba6db7/li\
b/gap/ferret.so, 5): Symbol not found: __ZdlPvm
  Referenced from: /Users/mhorn/.julia/artifacts/49b1930968bd5aa85f37a4c6770a3a524bba6db7/lib/gap/f\
erret.so
  Expected in: /usr/lib/libstdc++.6.dylib
 in /Users/mhorn/.julia/artifacts/49b1930968bd5aa85f37a4c6770a3a524bba6db7/lib/gap/ferret.so
ERROR: Error thrown by GAP: Error, module '/Users/mhorn/.julia/artifacts/49b1930968bd5aa85f37a4c6770a3a524bba6db7/lib/gap/ferret.so' not found in
  LOAD_DYN( filename ) at /Users/mhorn/.julia/artifacts/1ae5d8f1898d9dcbe8dc3d93f56369c864a8e717/share/gap/lib/files.gd:578 called from
<function "LoadDynamicModule">( <arguments> )
 called from read-eval loop at /Users/mhorn/.julia/gaproot/v4.12/pkg/ferret-1.0.6/read.g:15
 ```