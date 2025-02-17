package stdgo._internal.go.types;
function testTermlistIsEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_test => _want in ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            x.set(("∅" : stdgo.GoString), true);
x.set(("∅ | ∅" : stdgo.GoString), true);
x.set(("∅ | ∅ | 𝓤" : stdgo.GoString), false);
x.set(("∅ | ∅ | myInt" : stdgo.GoString), false);
x.set(("𝓤" : stdgo.GoString), false);
x.set(("𝓤 | int" : stdgo.GoString), false);
x.set(("𝓤 | myInt | ∅" : stdgo.GoString), false);
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>)) {
            var _xl = (stdgo._internal.go.types.Types__maketl._maketl(_test?.__copy__()) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
            var _got = (_xl._isEmpty() : Bool);
            if (_got != (_want)) {
                @:check2r _t.errorf(("(%v).isEmpty() == %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
