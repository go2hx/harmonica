package _internal.github_dot_com.charmbracelet.harmonica_dot_test;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainstart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps)), _internal.github_dot_com.charmbracelet.harmonica_dot_test.Harmonica_dot_test__tests._tests, _internal.github_dot_com.charmbracelet.harmonica_dot_test.Harmonica_dot_test__benchmarks._benchmarks, _internal.github_dot_com.charmbracelet.harmonica_dot_test.Harmonica_dot_test__fuzztargets._fuzzTargets, _internal.github_dot_com.charmbracelet.harmonica_dot_test.Harmonica_dot_test__examples._examples);
        #if (sys || hxnodejs) Sys.exit(@:check2r _m.run()) #else null #end;
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.github_dot_com.charmbracelet.harmonica_dot_test.Harmonica_dot_test__tests._tests, __tmp__1 = _internal.github_dot_com.charmbracelet.harmonica_dot_test.Harmonica_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.github_dot_com.charmbracelet.harmonica_dot_test.Harmonica_dot_test__fuzztargets._fuzzTargets, __tmp__3 = _internal.github_dot_com.charmbracelet.harmonica_dot_test.Harmonica_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importpath.importPath = ("github.com/charmbracelet/harmonica" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
