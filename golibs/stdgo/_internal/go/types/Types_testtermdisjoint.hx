package stdgo._internal.go.types;
function testTermDisjoint(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<stdgo.GoString>(10, 10, ...[("int int F" : stdgo.GoString), ("~int ~int F" : stdgo.GoString), ("int ~int F" : stdgo.GoString), ("int string T" : stdgo.GoString), ("int ~string T" : stdgo.GoString), ("int myInt T" : stdgo.GoString), ("~int ~string T" : stdgo.GoString), ("~int myInt F" : stdgo.GoString), ("string myInt T" : stdgo.GoString), ("~string myInt T" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _args = stdgo._internal.go.types.Types__split._split(_test?.__copy__(), (3 : stdgo.GoInt));
            var _x = stdgo._internal.go.types.Types__testterm._testTerm(_args[(0 : stdgo.GoInt)]?.__copy__());
            var _y = stdgo._internal.go.types.Types__testterm._testTerm(_args[(1 : stdgo.GoInt)]?.__copy__());
            var _want = (_args[(2 : stdgo.GoInt)] == (("T" : stdgo.GoString)) : Bool);
            {
                var _got = (@:check2r _x._disjoint(_y) : Bool);
                if (_got != (_want)) {
                    @:check2r _t.errorf(("%v.disjoint(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _x = __tmp__0;
                _y = __tmp__1;
            };
            {
                var _got = (@:check2r _x._disjoint(_y) : Bool);
                if (_got != (_want)) {
                    @:check2r _t.errorf(("%v.disjoint(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
