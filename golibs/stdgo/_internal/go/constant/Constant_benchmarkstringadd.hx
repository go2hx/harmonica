package stdgo._internal.go.constant;
function benchmarkStringAdd(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {
            var _size = (1 : stdgo.GoInt);
            while ((_size <= (65536 : stdgo.GoInt) : Bool)) {
                @:check2r _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_size)).__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    @:check2r _b.reportAllocs();
                    var _n = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                            var _x = (stdgo._internal.go.constant.Constant_makestring.makeString(stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (100 : stdgo.GoInt)).__copy__()) : stdgo._internal.go.constant.Constant_value.Value);
var _y = (_x : stdgo._internal.go.constant.Constant_value.Value);
{
                                var _j = (0 : stdgo.GoInt);
                                while ((_j < (_size - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                                    _y = stdgo._internal.go.constant.Constant_binaryop.binaryOp(_y, (12 : stdgo._internal.go.token.Token_token.Token), _x);
                                    _j++;
                                };
                            };
_n = (_n + ((stdgo._internal.go.constant.Constant_stringval.stringVal(_y).length : stdgo.GoInt64)) : stdgo.GoInt64);
                            _i++;
                        };
                    };
                    if (_n != (((((@:checkr _b ?? throw "null pointer dereference").n : stdgo.GoInt64) * (_size : stdgo.GoInt64) : stdgo.GoInt64) * (100i64 : stdgo.GoInt64) : stdgo.GoInt64))) {
                        @:check2r _b.fatalf(("bad string %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(((((@:checkr _b ?? throw "null pointer dereference").n : stdgo.GoInt64) * (_size : stdgo.GoInt64) : stdgo.GoInt64) * (100i64 : stdgo.GoInt64) : stdgo.GoInt64)));
                    };
                });
                _size = (_size * ((4 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
    }
