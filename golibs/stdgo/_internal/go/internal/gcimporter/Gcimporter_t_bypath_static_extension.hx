package stdgo._internal.go.internal.gcimporter;
@:keep @:allow(stdgo._internal.go.internal.gcimporter.Gcimporter.T_byPath_asInterface) class T_byPath_static_extension {
    @:keep
    @:tdfield
    static public function less( _a:stdgo._internal.go.internal.gcimporter.Gcimporter_t_bypath.T_byPath, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _a:stdgo._internal.go.internal.gcimporter.Gcimporter_t_bypath.T_byPath = _a;
        return (@:check2r _a[(_i : stdgo.GoInt)].path() < @:check2r _a[(_j : stdgo.GoInt)].path() : Bool);
    }
    @:keep
    @:tdfield
    static public function swap( _a:stdgo._internal.go.internal.gcimporter.Gcimporter_t_bypath.T_byPath, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _a:stdgo._internal.go.internal.gcimporter.Gcimporter_t_bypath.T_byPath = _a;
        {
            final __tmp__0 = _a[(_j : stdgo.GoInt)];
            final __tmp__1 = _a[(_i : stdgo.GoInt)];
            final __tmp__2 = _a;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _a;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function len( _a:stdgo._internal.go.internal.gcimporter.Gcimporter_t_bypath.T_byPath):stdgo.GoInt {
        @:recv var _a:stdgo._internal.go.internal.gcimporter.Gcimporter_t_bypath.T_byPath = _a;
        return (_a.length);
    }
}
