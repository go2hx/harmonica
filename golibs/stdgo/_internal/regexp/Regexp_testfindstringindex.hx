package stdgo._internal.regexp;
function testFindStringIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in stdgo._internal.regexp.Regexp__findtests._findTests) {
            stdgo._internal.regexp.Regexp__testfindindex._testFindIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>), @:check2r stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_test._pat?.__copy__()).findStringIndex(_test._text?.__copy__()), _t);
        };
    }
