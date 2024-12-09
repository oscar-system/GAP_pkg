using Test

import GAP_pkg_grape
import GAP_pkg_grape.GAP

# verify loading works
GAP_pkg_grape.load()

# run package test suite
# we need to hack around the fact that most of them end with quitting
# the running process...
# TODO: allow specifying a collection of (name => value) pairs...
function with_gap_var(f, n::String, val)
    name = GAP.Obj(n)
    old_value = GAP.Globals.ValueGlobal(name)
    GAP.Globals.MakeReadWriteGlobal(name)
    GAP.Globals.UnbindGlobal(name)
    GAP.Globals.BindGlobal(name, val)
    try
        f()
    finally
      GAP.Globals.MakeReadWriteGlobal(name);
      GAP.Globals.UnbindGlobal(name);
      GAP.Globals.BindGlobal(name, old_value);
    end
end

error_occurred = false
function fake_QuitGap(code)
     global error_occurred
     if code != 0
         error_occurred = true
     end
end

GAP.disable_error_handler[] = true
try
    with_gap_var("ERROR_OUTPUT", GAP.Globals._JULIAINTERFACE_ORIGINAL_ERROR_OUTPUT) do
        with_gap_var("QuitGap", fake_QuitGap) do
            with_gap_var("FORCE_QUIT_GAP", identity) do
                GAP.Globals.TestPackage(GAP.Obj("grape"))
            end
        end
    end
finally
    GAP.disable_error_handler[] = false
end

@test !error_occurred
