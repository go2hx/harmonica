package stdgo._internal.runtime.internal.sys;
function len64(_x:stdgo.GoUInt64):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        if ((_x >= (4294967296i64 : stdgo.GoUInt64) : Bool)) {
            _x = (_x >> ((32i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _n = (32 : stdgo.GoInt);
        };
        if ((_x >= (65536i64 : stdgo.GoUInt64) : Bool)) {
            _x = (_x >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _n = (_n + ((16 : stdgo.GoInt)) : stdgo.GoInt);
        };
        if ((_x >= (256i64 : stdgo.GoUInt64) : Bool)) {
            _x = (_x >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _n = (_n + ((8 : stdgo.GoInt)) : stdgo.GoInt);
        };
        return _n = (_n + ((stdgo.Go.str(0,
1,
2,
2,
3,
3,
3,
3,
4,
4,
4,
4,
4,
4,
4,
4,
5,
5,
5,
5,
5,
5,
5,
5,
5,
5,
5,
5,
5,
5,
5,
5,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
"\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08") : stdgo.GoString)[(_x : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
    }
